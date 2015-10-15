<%-- 
    Document   : usuarios
    Created on : 10/10/2015, 12:25:10 PM
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
                <div class="panel-heading">Modulo Usuarios</div>
                <div class="panel-body">
                    <%if(session.getAttribute("exito")!=null){%>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                      <%=session.getAttribute("exito")%>
                      <%session.removeAttribute("exito"); %>
                    </div>
                      <%}%>
                   

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <a style="margin-bottom: 10px;" href="<c:url value="/Usuarios?action=create"/>" class="btn bg-primary btn-md">Crear</a>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>

                                            <th>
                                                uname
                                            </th>
                                            <th>
                                                email
                                            </th>
                                            <th>
                                                registeredon
                                            </th>
                                            <th>
                                                Accion
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${users}" var="user">
                                            <tr>
                                                <td>
                                                    <c:out value="${user.uname}" />
                                                </td>
                                                <td>
                                                    <c:out value="${user.email}" />
                                                </td>
                                                <td>
                                                    <c:out value="${user.registeredon}" />
                                                </td>
                                                <td>
                                                    <a class="btn btn-success" href="Usuarios?action=edit&userId=<c:out value="${user.uname}"/>">editar</a>
                                                    <a class="btn btn-danger"  href="Usuarios?action=delete&userId=<c:out value="${user.uname}"/>">eliminar</a>
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



