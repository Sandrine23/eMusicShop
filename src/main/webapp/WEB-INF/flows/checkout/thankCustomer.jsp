<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 style="text-align: center; font-family: 'Nova Script', cursive; font-size: 54px;">Thank you for your business!</h1>

                    <p style="text-align: center; font-family: 'Nova Script', cursive; font-size: 32px;">Your order will be shipped in two business days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <center>
            <p><a href="<spring:url value="/" />" class="btn btn-primary">OK</a></p>
            </center>
        </section>
        <br><br><br><br><br>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>