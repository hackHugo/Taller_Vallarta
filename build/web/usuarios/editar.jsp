<%-- 
    Document   : editar
    Created on : 11/10/2015, 05:20:25 PM
    Author     : hackhugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../header.jsp" %>
<%@include file="../menu.jsp" %>
<div class="container" style="margin-top: 70px;">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Editar Usuario</div>
                <div class="panel-body">
                   
                    
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <form role="form" action="Usuarios?action=update" method="POST">
                                    <div class="form-group">
                                        <label for="text">Nombre:</label>
                                        <input type="text" class="form-control" name="nombre" id="nombre" value="<c:out value="${user.uname}"/>">
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Password:</label>
                                        <input type="password" class="form-control" name="pwd" id="pwd" value="<c:out value="${user.password}"/>">
                                    </div>
                                                <div class="form-group">
                                        <label for="text">Email</label> 
                                        <input type="email" class="form-control" name="email" id="email" value="<c:out value="${user.email}"/>">
                                    </div>
                                  <div class="form-group">
                                        <label for="text">Fecha registro</label>
                                        <input type="date" class="form-control" name="fecha" id="fecha" value="<c:out value="${user.registeredon}"/>">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Editar</button>
                                </form>
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../footer.jsp" %>
