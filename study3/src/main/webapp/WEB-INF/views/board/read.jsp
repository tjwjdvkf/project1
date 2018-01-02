<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html>

<%@include file="../include/head.jsp" %>



<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<%@include file="../include/main_header.jsp" %>  
  <!-- Left side column. contains the logo and sidebar -->
<%@include file="../include/left_column.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        게시판
        <small>자유게시판</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    <form role="form" method="post">
    	<input type="hidden" name="bno" value="${boardVO.bno}">
    </form>
    
    <div class="box">
    	<div class="box-body">
    		<div class="form-group">
    			<label for="exampleInputEmail1">제목</label>
    			<input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">내용</label>
    			<textarea rows="3" class="form-control" name="content" readonly="readonly">${boardVO.content}</textarea>
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">작성자</label>
    			<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
    		</div>
    		<div class="box-footer">
    			<button type="submit" class="btn btn-warning">수정</button>
    			<button type="submit" class="btn btn-danger">삭제</button>
    			<button type="submit" class="btn btn-primary">리스트 목록</button>
    		</div>
    	</div>
	</div>
    
    <div id="replyDiv" style="width: 99%; display:none">
			<input type="hidden" id="brdno2" name="brdno" value="<c:out value="${boardInfo.brdno}"/>"> 
			<input type="hidden" id="reno2" name="reno">
			<div class="col-lg-6">
				<textarea class="form-control" id="rememo2" name="rememo2" rows="3" maxlength="500"></textarea>
			</div>
			<div class="col-lg-2 pull-left">
  				<button class="btn btn-primary" onclick="fn_replyUpdateSave()">저장</button>
  				<button class="btn btn-primary" onclick="fn_replyUpdateCancel()">취소</button>
			</div>
	</div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <%@include file="../include/main_footer.jsp" %>

  <!-- Control Sidebar -->
 <%@include file="../include/control_sidebar.jsp" %>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  
<!-- ./wrapper -->

</div>
<!-- REQUIRED JS SCRIPTS -->
<%@include file="../include/plugin_js.jsp" %>

 <script>
	$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click",function(){
		formObj.attr("action", "/board/modify.do");
		formObj.attr("method","get");
		formObj.submit();
	});
	
	$(".btn-danger").on("click",function(){
		formObj.attr("action","/board/remove.do");
		formObj.submit();
	});
	
	/* $(".btn-primary").on("click",function(){
		self.location = "/board/boardlist.do";
	}); */
	
	$(".btn-primary").click(function () {
		self.location = "/board/boardlist.do";
	});
});

</script> 
</body>
</html>