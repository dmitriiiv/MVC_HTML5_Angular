<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="title" fragment="true" %>

    <head>
        <title><jsp:invoke fragment="title"/></title>

        <!-- Bootstrap Core CSS -->
        <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
        <link href="${bootstrap}" rel="stylesheet"/>
        <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
        <link href="${startertemplate}" rel="stylesheet"/>
        <spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontawesome"/>
        <link href="${fontawesome}" rel="stylesheet" type="text/css"/>
        <spring:url value="/resources/js/jquery.js" var="jqueryjs"/>
        <script src="${jqueryjs}"></script>
        <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapjs"/>
        <script src="${bootstrapjs}"></script>
    </head>

    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <c:url value="/about.html" var="about"/>
                        <li>
                            <a href="${about}">About</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <c:url value="/file.html" var="file"/>
                                <li>
                                    <a href="${file}">Загрузка файла PDF и Excel</a>
                                </li>
                                <c:url value="/jdbc.html" var="jdbc"/>
                                <li>
                                    <a href="${jdbc}">JDBC c JDBCTemplates</a>
                                </li>
                                <c:url value="/email.html" var="email" />
                                <li>
                                    <a href="${email}">Работа с Java Mail API</a>
                                </li>
                                <c:url value="/orm.html" var="orm" />
                                <li>
                                    <a href="${orm}">Работа с Hibernate</a>
                                </li>
                                <c:url value="/runtimeException.html" var="runtimeException" />
                                <li>
                                    <a href="${runtimeException}">Runtime Exception</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <jsp:doBody/>

        <div class="container">
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Your Website 2018</p>
                    </div>
                </div>
            </footer>
        </div>

    </body>
</html>


