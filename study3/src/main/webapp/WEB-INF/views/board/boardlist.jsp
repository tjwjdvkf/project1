<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page session="false" %>

<!DOCTYPE html>

<html>

<%@include file="../include/head.jsp" %>

<script type="text/javascript">
	var result = '${msg}';
	if(result =='success'){
		alert("처리가 완료되었습니다.");
	}
</script>


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
	<button class="btn btn-primary" onclick="location.href='boardwrite.do'">글 쓰기</button>
	
	<div class="box">
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-condensed">
                <tr>
	       			<th class="col-lg-1">bno</th>
		     		<th class="col-lg-7">제목</th>
		     		<th class="col-lg-1">작성자</th>
		     		<th class="col-lg-2">작성일</th>
		     		<th class="col-lg-1">조회수</th>
                </tr>
                <c:forEach items="${list}" var="boardVO">
		     		<tr>
		     			<td>${boardVO.bno}</td>
		     			<td style="max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;"><a href='/board/read.do?bno=${boardVO.bno}'>${boardVO.title}</a></td>
		     			<td style="max-width: 50px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${boardVO.writer}</td>
		     			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
		     			<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		     		</tr>
		     	</c:forEach>
              </table>
              	<form role="form" id="form1" name="form1"  method="post">
					   <jsp:include page="../include/pagingforSubmit.jsp" />
				    
						<div class="form-group">
							<div class="checkbox col-lg-3 pull-left">
							 	<label class="pull-right">
							 		<input type="checkbox" name="searchType" value="title" <c:if test="${fn:indexOf(searchVO.searchType, 'title')!=-1}">checked="checked"</c:if>/>
		                        	제목
		                        </label>
							 	<label class="pull-right">
							 		<input type="checkbox" name="searchType" value="content" <c:if test="${fn:indexOf(searchVO.searchType, 'content')!=-1}">checked="checked"</c:if>/>
		                        	내용
		                        </label>
		                   </div>
		                   <div class="input-group custom-search-form col-lg-3">
	                                <input class="form-control" placeholder="Search..." type="text" name="searchKeyword" 
	                                	   value='<c:out value="${searchVO.searchKeyword}"/>' >
	                                <span class="input-group-btn">
	                                <button class="btn btn-default" onclick="fn_formSubmit()">
	                                    <i class="fa fa-search"></i>
	                                </button>
	                            </span>
	                       </div>
						</div>
					</form>	
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
	
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
function fn_formSubmit(){
	document.form1.submit();	
}
</script>

</body>
</html>