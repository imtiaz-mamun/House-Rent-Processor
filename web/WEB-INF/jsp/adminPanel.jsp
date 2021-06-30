
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>House Rent Management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css"  rel='stylesheet' type='text/css'>
        <!-- Custom CSS -->
        <link href="css/styleAdmin.css"  rel='stylesheet' type='text/css'>
        <!--<link href="css/font-awesome.css" rel="stylesheet">-->
        <link href="css/faicons.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!----webfonts--->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        <!---//webfonts--->  
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!--Graph-->
        <script src="js/Chart.js"></script>
        <!--w3 css-->
        <link rel="stylesheet" href="css/w3.css">
        <link rel="shortcut icon" href="images/admin_logo.png" type="image/png">
    </head>
    <body>
        <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color: #2d6100">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="logo">
                    <h1 style="color: #fff;padding-left: 20px;">House Rent Management</h1>
                </div>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="adminPanel"><i class="fa fa-automobile nav_icon"></i>Insert New House</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Edit Database Info<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="updateLocationInfo">Update House Information</a>
                                </li>
                                <li>
                                    <a href="showDelete">Delete House Information</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="gotoPrediction"><i class="fa fa-clock-o nav_icon"></i>All Houses in Route</a>
                        </li>
                        <!--                        <li>
                                                    <a href="getGraph"><i class="fa fa-bar-chart-o nav_icon"></i>Graph</a>
                                                </li>-->
                        <li>
                            <a href="index"><i class="fa fa-home nav_icon"></i>Home</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
        </nav>
        <div id="page-wrapper">
            <div class="graphs">
                <div class="xs">
                    <div class="tab-content">
                        <div class="tab-pane active" id="horizontal-form">
                            
                            <!--START OF FARMER INPUT IF-->
                            <%if (request.getAttribute("allTablesForData") != null) {%>
                            
                            <h2>All Input Forms</h2>
                            <p><strong>Note:</strong> Choose available <strong>options</strong> for better view</p>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Insert House Info</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse in">
                                        <%if (request.getAttribute("routeInfoTableInsert") != null) {%>
                                        <form method="POST" action="input_element_forcasting">
                                            <table class="table table-responsive">
                                                <thead>
                                                    <tr>
                                                        <th>Location</th>
                                                        <th>Size</th>
                                                        <th>Rent</th>
                                                        <th>Details</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">
                                                        <td><input class="in" type="text" placeholder="Location" name="startLocation"></td>
                                                        <td><input class="in" type="text" placeholder="Size" name="endLocation"></td>
                                                        <td><input class="in" type="number" value="0.0" name="forecasting" step="0.02"> Taka/Month</td>
                                                        <td>Room  :  : ::><input class="in" type="number" value="0" name="forecastingHour" step="1"><br>
                                                            Bathroom  ::><input class="in" type="number" value="0" name="forecastingMin" step="1">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button type="submit" class="btn btn-success warning_2 center-block">Submit</button>
                                        </form>
                                        <%}%>
                                    </div>
                                    <%}%>
                                </div>
                                <!--END FARMER INPUT-->
                                <%if (request.getAttribute("locationNames") != null) {%>
                                <div class="demobox alert alert-warning">
                                    <!--START CROP UPDATE-->
                                    <h2><i class="fa fa-exclamation-circle" style="color: red"></i> Select & Update Houses Information</h2>
                                    <sf:form modelAttribute="locationNames" method="POST" action="getLocationForUpdate">
                                        <sf:select path="locationNames" items="${allLocations}"/>
                                        <button type="submit" class="btn btn-success warning_2">Get House Info</button>
                                    </sf:form>
                                    <%}%>
                                    
                                    <%if (request.getAttribute("locationForUpdate") != null) {%>
                                    <div class="panel-body no-padding">
                                        <h2><i class="fa fa-exclamation-circle" style="color: greenyellow"></i> Update House info</h2>
                                        <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                                            <span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
                                        
                                    </div>
                                    
                                    <sf:form modelAttribute="locationForUpdate" action="updateLocation" method="POST">
                                        <div class="panel-body no-padding" style="display: block;">
                                            
                                            <input type="hidden" name="actionType" value="<%=request.getAttribute("actionType")%>">
                                            
                                            <label for="focusedinput" class="col-sm-2 control-label">Location Name</label>
                                            <div class="col-sm-8">
                                                <sf:input type="text" path="location_name" cssClass="form-control1" id="focusedinput" placeholder="Location Name"/>
                                            </div>
                                            <br><br><br>
                                            
                                            <table class="table table-bordered">
                                                
                                                <thead>
                                                    <tr>
                                                        <th>Latitude</th>
                                                        <th>Longitude</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="success">
                                                        <td>
                                                            <sf:input cssClass="in" type="number"  path="latitude_x" step="0.000001"/>
                                                        </td>
                                                        <td>
                                                            <sf:input cssClass="in" type="number"  path="longitude_y" step="0.000001"/>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button type="submit" class="btn btn-success warning_2">Update</button>
                                        </div>
                                    </sf:form>
                                    <%}%>
                                    <!--END CROP UPDATE-->
                                    
                                </div>
                                
                                <% if (request.getAttribute("showDeleteForm") != null) { %>
                                <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
                                    <div class="panel-heading" style="background: #FF5000">
                                        <h2>Select & delete House's info</h2>
                                        <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                                            <span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
                                        
                                    </div>
                                    <div class="panel-body no-padding" style="display: block;">
                                        <sf:form action="performDeletion" method="POST" modelAttribute="tempDeletionModel">
                                            <sf:checkboxes cssClass="checkbox" items="${allLocations}" path="locationsToBeDeleted"/>
                                            <br>
                                            <button type="submit" class="btn btn-success warning_2">Delete</button>
                                        </sf:form>
                                    </div>
                                </div>
                                <%}%>
                                
                                <!--START Prediction-->
                                <%if (request.getAttribute("showPrediction") != null) {%>
                                <%if (request.getAttribute("locationForPrediction") != null) {%>
                                <div class="cloud">
                                    <div class="grid-date" style="background-color:  #FFA000">
                                        <div class="date">
                                            <sf:form modelAttribute="locationForPrediction" method="POST" action="getForecastingTime">
                                                <div class="input-group">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-5 grid_box1">
                                                                <sf:select path="start" items="${allLocations}"/>         
                                                            </div>
                                                            <div class="col-md-2 grid_box1">
                                                                <h3><span class="label btn_6 label-primary">To</span></h3>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <sf:select path="end" items="${allLocations}"/>
                                                            </div>
                                                        </div>
                                                    </div>	
                                                </div>
                                                <span class="input-group-btn">
                                                    <button type="submit" class="btn btn-success1" type="button"><i class="fa fa-cog fa-spin fa-fw"></i>House Forecasting</button>
                                                </span>
                                            </sf:form>
                                        </div>
                                        <%if (request.getAttribute("time") != null) {%>
                                        <h4>Open for Rent: 
                                            <%= request.getAttribute("time") %>
                                            Houses
                                        </h4>
                                        <%}%>
                                    </div>
                                </div>
                                
                                <%}%>
                                <%}%>
                                <!--END PREDICTION-->
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <!-- /#page-wrapper -->
            </div>
        </div>
        <!-- Nav CSS -->
        <link href="css/custom.css" rel="stylesheet">
        <!-- Metis Menu Plugin JavaScript -->
        <script>
            $(document).ready(function () {
                var beforeValue;
                $(".in").mouseenter(function () {
                    beforeValue = $(this).val();
                    $(this).val('');
                });
                $(".in").mouseleave(function () {
                    var value = $(this).val();
                    if (value === '') {
                        $(this).val(beforeValue);
                    }
                });
            });
        </script>
        <script src="<c:url value="js/metisMenu.min.js" />"></script>
        <script src="<c:url value="js/custom.js" />"></script>
    </body>
</html>
