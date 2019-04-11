<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <center>
        <div class="page-header">
            <h1 style="text-align: center; font-family: 'Nova Script', cursive; font-size:40px;" class="lead">Customer Details:</h1>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3 style="text-align: center; font-family: 'Nova Script', cursive;">Basic Info:</h3>
        </center>
            
        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="name">Name</label>
            <form:input path="cart.customer.customerName" id="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-control"/>
        </div>

        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-control"/>
        </div>

        <br/>

        <input type="hidden" name="_flowExecutionKey"/>

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected"/>

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
