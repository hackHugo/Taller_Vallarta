<%-- 
    Document   : footer
    Created on : 11/10/2015, 08:00:28 AM
    Author     : hackhugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value="boostrap/js/jquery.js"/>"></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>   
<script type="text/javascript">
    // For demo to fit into DataTables site builder...
    $('#example')
            .removeClass('display')
            .addClass('table table-striped table-bordered');
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="boostrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="boostrap/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/boostrap/js/dataTables.bootstrap.min.js"/>"></script>
</body>
</html>

