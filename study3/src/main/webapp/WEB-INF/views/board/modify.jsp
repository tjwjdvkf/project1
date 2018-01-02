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

   
    
    <div class="box">
    <form role="form" method="post">
    	<div class="box-body">
    		<div class="form-group">
    			<label for="exampleInputEmail1">제목</label>
    			<input type="text" name="title" class="form-control" value="${boardVO.title}" >
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">내용</label>
    			<textarea rows="3" class="form-control" name="content" >${boardVO.content}</textarea>
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">작성자</label>
    			<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
    		</div>
    	</div>
    </form>
    		<div class="box-footer">
    			<button type="submit" class="btn btn-primary">저장</button>
    			<button type="submit" class="btn btn-warning">취소</button>
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

<script type="text/javascript">
$(document).ready(function () {
	
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click",function(){
		self.location = "/board/boardlist.do"
	});
	
	$(".btn-primary").on("click",function(){
		formObj.submit();
	});
});

</script>

</body>
</html>