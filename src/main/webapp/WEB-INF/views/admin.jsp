

<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>
        </div>
        <br/>
        <c:if test="${pageContext.request.userPrincipal.name !=null}">
        <h2 style="text-align: center; font-family: 'Nova Script', cursive; font-size: 40px;">
            Welcome: &nbsp &nbsp  ${pageContext.request.userPrincipal.name} &nbsp|&nbsp <a href="<c:url value="/j_spring_security_logout"/> ">Logout</a>
        </h2> <br/><br/>
        </c:if>

        <h3 style="text-align: center; font-family: 'Nova Script', cursive; font-size: 36px;">
            <a href="<c:url value="/admin/productInventory" /> ">Product Inventory</a>
        </h3>

        <p style="text-align: center; font-family: 'Nova Script', cursive; font-size: 28px;">Here you can view, modify, add or remove the product inventory!</p>

        <br><br><br/>

        <h3 style="text-align: center; font-family: 'Nova Script', cursive; font-size: 36px;">
            <a href="<c:url value="/admin/customer" /> ">Customer Management</a>
        </h3>

        <p style="text-align: center; font-family: 'Nova Script', cursive; font-size: 28px;">Here you can view the customer information!</p>

        <br/><br/><br/><br/><br/><br/>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>





















