<%-- 
    Document   : menu
    Created on : 11/10/2015, 08:06:12 AM
    Author     : hackhugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <div class="container">
            <div class="row">
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
                            <a class="navbar-brand" href="<c:url value="/"/>">Taller java vallarta
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="<c:url value="/Tanque?action=listar"/>">Tanque</a>
                                </li>
                                 <li>
                                    <a href="#">Pez</a>
                                </li>
                                 <li>
                                    <a href="#">Pais</a>
                                </li>
                                 <li>
                                    <a href="#">Evento</a>
                                </li>
                                 <li>
                                    <a href="#">Especie</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container -->
                </nav>
                                    
            </div>
        </div>
