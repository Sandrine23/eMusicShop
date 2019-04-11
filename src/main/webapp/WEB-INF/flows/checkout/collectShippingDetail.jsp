<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <center>
        <div class="page-header">
            <p class="lead" style="text-align: center; font-family: 'Nova Script', cursive; font-size: 40px;">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3 style="text-align: center; font-family: 'Nova Script', cursive;">Shipping Address:</h3>
        </center>
            
        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="shippingStreet">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-control"/>
        </div>
        
        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-control"/>
        </div>

        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="shippingCity">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-control"/>
        </div>

        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="shippingCountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-control"/>
        </div>

        <div class="form-group">
            <label style="text-align: center; font-family: 'Nova Script', cursive;" for="shippingZip">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>

        <br/><br/>

        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected"/>

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>