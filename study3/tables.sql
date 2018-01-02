drop table tbl_board;

create table tbl_board(
	bno int not null auto_increment,			
	title varchar(200) not null,				
	content text null,							
	writer varchar(50) not null,				
	regdate timestamp not null default now(),	
	viewcnt int default 0,
	isdeleted char(1) default N,
	primary key (bno)			
);

drop table tbl_reply;

create table tbl_reply(
	rno int(11) not null auto_increment,
	bno int(11) not null default 0,
	replytext varchar(1000) not null,
	replyer varchar(50) not null,
	regdate timestamp not null default now(),
	updatedate timestamp not null default now(),
	primary key(rno)
);

--FK 추가
ALTER table tbl_reply add constraint fk_board
foreign key (bno) references tbl_board(bno);
