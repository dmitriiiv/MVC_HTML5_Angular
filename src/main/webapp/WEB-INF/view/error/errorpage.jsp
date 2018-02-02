<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <title>404 Error</title>
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap"/>
        <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
        <spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontawesome"/>
        <spring:url value="/resources/js/jquery.js" var="jquery"/>
        <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapjs"/>
        <link href="${bootstrap}" rel="stylesheet"/>
        <link href="${startertemplate}" rel="stylesheet"/>
        <link href="${fontawesome}" rel="stylesheet" type="text/css"/>
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
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="services.html">Lessons</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="portfolio-1-col.html">Lesson 1</a>
                                </li>
                                <li>
                                    <a href="portfolio-2-col.html">Lesson 2</a>
                                </li>
                                <li>
                                    <a href="portfolio-3-col.html">Lesson 3</a>
                                </li>
                                <li>
                                    <a href="portfolio-4-col.html">Lesson 5</a>
                                </li>
                                <li>
                                    <a href="portfolio-item.html">Lesson 5</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="blog-home-1.html">Blog Home 1</a>
                                </li>
                                <li>
                                    <a href="blog-home-2.html">Blog Home 2</a>
                                </li>
                                <li>
                                    <a href="blog-post.html">Blog Post</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Other Pages <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="full-width.html">Full Width Page</a>
                                </li>
                                <li>
                                    <a href="sidebar.html">Sidebar Page</a>
                                </li>
                                <li>
                                    <a href="faq.html">FAQ</a>
                                </li>
                                <li>
                                    <a href="404.html">404</a>
                                </li>
                                <li>
                                    <a href="pricing.html">Pricing Table</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            <!-- /.navbar-collapse -->
            </div>
        <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">404
                        <small>Page Not Found</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">404</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">

                <div class="col-lg-12">
                    <div class="jumbotron">
                        <h1><span class="error-404">404</span>
                        </h1>
                        <p>The page you're looking for could not be found. Here are some helpful links to get you back on track:</p>
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="services.html">Lessons</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>
                            </li>
                            <li>
                                Tutorial
                                <ul>
                                    <li>
                                        <a href="portfolio-1-col.html">Lesson 1</a>
                                    </li>
                                    <li>
                                        <a href="portfolio-2-col.html">Lesson 2</a>
                                    </li>
                                    <li>
                                        <a href="portfolio-3-col.html">Lesson 3</a>
                                    </li>
                                    <li>
                                        <a href="portfolio-4-col.html">Lesson 4</a>
                                    </li>
                                    <li>
                                        <a href="portfolio-item.html">Lesson 5</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                Blog
                                <ul>
                                    <li>
                                        <a href="blog-home-1.html">Blog Home 1</a>
                                    </li>
                                    <li>
                                        <a href="blog-home-2.html">Blog Home 2</a>
                                    </li>
                                    <li>
                                        <a href="blog-post.html">Blog Post</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                Other Pages
                                <ul>
                                    <li>
                                        <a href="full-width-page.html">Full Width Page</a>
                                    </li>
                                    <li>
                                        <a href="sidebar.html">Sidebar Page</a>
                                    </li>
                                    <li>
                                        <a href="faq.html">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="404.html">404 Page</a>
                                    </li>
                                    <li>
                                        <a href="pricing-table.html">Pricing Table</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Your Website 2014</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="${jquery}"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${bootstrapjs}"></script>

    </body>
</html>