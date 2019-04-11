<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 style="text-align: center; font-family: 'Nova Script', cursive;">Invalid Cart!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p style="text-align: center; font-family: 'Nova Script', cursive;"><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>
        </section>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>