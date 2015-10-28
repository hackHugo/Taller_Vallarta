<%-- 
    Document   : usuarios
    Created on : 10/10/2015, 12:25:10 PM
    Author     : hackhugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.jsp" %>
<%@include file="../menu.jsp" %>
<div class="container" style="margin-top: 70px;">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Módulo Tanque</div>
                <div class="panel-body">
                    <%if (session.getAttribute("exito") != null) {%>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <%=session.getAttribute("exito")%>
                        <%session.removeAttribute("exito"); %>
                    </div>
                    <%}%>


                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <a style="margin-bottom: 10px;" href="<c:url value="/Tanque?action=create"/>" class="btn bg-primary btn-md">Crear</a>
                                <table id="example" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>
                                                ID
                                            </th>
                                            <th>
                                                Nombre Tanque
                                            </th>
                                            <th>
                                                Color
                                            </th>
                                            <th>
                                                Volumen
                                            </th>
                                            <th>
                                                Acción
                                            </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${tanque}" var="tanques">
                                            <tr>
                                                <td>
                                                    <c:out value="${tanques.id_tanque}"/>
                                                </td>
                                                <td>
                                                    <c:out value="${tanques.nombre_tanque}"/>
                                                </td>
                                                <td>
                                                    <c:out value="${tanques.color}"/>
                                                </td>
                                                <td>
                                                    <c:out value="${tanques.volumen}"/>
                                                </td>
                                                <td>
                                                    <a class="btn btn-success" href="Tanque?action=edit&userId=<c:out value="${tanques.id_tanque}"/>">editar</a>
                                                    <a class="btn btn-danger"  href="Tanque?action=delete&tanqueId=<c:out value="${tanques.id_tanque}"/>">eliminar</a>
                                                </td>
                                            </tr>
                                        </c:forEach>



                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../footer.jsp" %>    



