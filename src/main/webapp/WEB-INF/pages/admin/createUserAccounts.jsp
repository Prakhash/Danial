<%@ page import="java.util.List" %>
<%@ page import="com.springapp.mvc.domain.MarketingMainEntity" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="com.springapp.mvc.domain.AuthenticationEntity" %>
<%--
  Created by IntelliJ IDEA.
  User: prakhash
  Date: 26/08/15
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../general/header.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


    <%--Mainheader is added--%>
    <jsp:include page="../general/mainHeader.jsp"/>


    <%

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();


    %>

    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <jsp:include page="../general/SidebarUser.jsp"/>

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="header">Control Panel</li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-money"></i> <span>Daniel</span> <i
                            class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a href="our-client-search-otherthan-com"><i class="fa fa fa-users"></i>Daniel Clients</a></li>
                        <li><a href="get-payroll"><i class="fa fa-tasks"></i>Payroll</a></li>
                        <li><a href="get-arr-abb-finance"><i class="fa fa-tasks"></i>Financial Accounts</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-globe"></i> <span>Marketing</span> <i
                            class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a href="add-to-marketing"><i class="fa fa-file-excel-o"></i>Add to Marketing</a></li>
                        <li><a href="companyHouseClients"><i class="fa fa fa-users"></i>Company House Clients</a></li>
                        <li><a href="appointment-overview"><i class="fa fa-tasks"></i>Appointments</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-user"></i> <span>My Account</span> <i
                            class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-user-secret"></i>View Profile</a></li>
                        <li><a href="get-user-edit-page"><i class="fa fa-gear"></i>Manage Account</a></li>
                    </ul>
                </li>
                <li class="active treeview">
                    <a href="#"><i class="fa fa-wrench"></i> <span>Admin</span> <i
                            class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="create-user-accounts"><i class="fa fa-user-plus"></i>Create User</a></li>
                        <li><a href="manage-user-accounts"><i class="fa fa fa-users"></i>Manage User Accounts</a></li>
                    </ul>
                </li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>


    <!-- Content Wrapper. Contains page content -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Manage your accounts
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Calendar</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <!-- /.col -->
                <div class="col-md-12">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <!-- Horizontal Form -->
                        <div class="box box-info">
                            <div class="box-header with-border">
                                <h3 class="box-title">Horizontal Form</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form class="form-horizontal" action="add-user" method="get">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="username" class="col-sm-3 control-label">username</label>

                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="username" name="username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputemail1" class="col-sm-3 control-label">Email</label>

                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="inputemail1"
                                                   placeholder="Email" name="inputemail1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password1" class="col-sm-3 control-label">Password</label>

                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" id="password1"
                                                   placeholder="Password" name="password1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputposition" class="col-sm-4 control-label">Position</label>

                                        <select class="col-sm-7" id="inputposition" name="inputposition">
                                            <option>Admin</option>
                                            <option>Manager</option>
                                            <option>Supervisor</option>
                                            <option>Agent</option>
                                        </select>

                                    </div>
                                    <div class="form-group">
                                        <label for="roleid" class="col-sm-4 control-label">Role Id</label>

                                        <select class="col-sm-7" id="roleid" name="roleid">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-default">Cancel</button>
                                        <button type="submit" class="btn btn-info pull-right">Create</button>
                                    </div>
                                </div>
                                <!-- /.box-footer -->
                            </form>
                        </div>
                        <!-- /.box -->
                        <!-- /.box-body -->

                        <!-- /. box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- /.content-wrapper -->

        <%--footer is added--%>
        <jsp:include page="../general/mainfooter.jsp"/>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript::;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->


<!-- jQuery 2.1.4 -->
<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="resources/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resources/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- page script -->

</body>
</html>
