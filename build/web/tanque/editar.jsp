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
                <div class="panel-heading">Editar Tanque</div>
                <div class="panel-body">


                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <form role="form" action="Tanque?action=update&id=<c:out value="${tanque.id_tanque}"/>" method="POST">

                                            <div class="form-group">
                                                <label for="text">Nombre tanque</label>
                                                <input type="text" class="form-control" name="nombre_tanque" id="nombre_tanque" value="<c:out value="${tanque.nombre_tanque}"/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="pwd">color:</label>
                                                <input type="text" class="form-control" name="color" id="color" value="<c:out value="${tanque.color}"/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="text">Volumen: </label>
                                                <input type="number" class="form-control" name="volumen" id="volumen" value="<c:out value="${tanque.volumen}"/>">
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
