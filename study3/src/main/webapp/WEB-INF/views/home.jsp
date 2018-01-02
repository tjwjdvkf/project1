<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html>

<%@include file="include/head.jsp" %>



<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<%@include file="include/main_header.jsp" %>  
  <!-- Left side column. contains the logo and sidebar -->
<%@include file="include/left_column.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <%@include file="include/main_footer.jsp" %>

  <!-- Control Sidebar -->
 <%@include file="include/control_sidebar.jsp" %>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  
<!-- ./wrapper -->

</div>
<!-- REQUIRED JS SCRIPTS -->
<%@include file="include/plugin_js.jsp" %>
</body>
</html>