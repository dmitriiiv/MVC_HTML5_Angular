<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:attribute name="title">404 Error</jsp:attribute>

    <jsp:body>
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
                            <c:url value="/index.html" var="index"/>
                            <li>
                                <a href="${index}">Home</a>
                            </li>
                            <c:url value="/about.html" var="about"/>
                            <li>
                                <a href="${about}">About</a>
                            </li>
                            <li>
                                Tutorial
                                <ul>
                                    <c:url value="/file.html" var="file"/>
                                    <li>
                                        <a href="${file}">Загрузка файла PDF и Excel</a>
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
                                Other Pages
                                <ul>
                                    <li>
                                        <a href="404.html">404 Page</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <hr>

        </div>
        <!-- /.container -->

    </jsp:body>
</page:template>