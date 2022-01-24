<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Monthly Delivery Report</title>
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script>
    function generatePDF(){

    const element = document.getElementById("invoice");

    html2pdf()
    .from(element)
    .save();
    }
</script>
</head>
<body>
    <div id="invoice">
        <table border=1>

                        <tr>
                            <th class="tbl-border data-align tbl-h">Order ID</th>
                            <th class="tbl-border data-align tbl-h">Order Date</th>
                            <th class="tbl-border data-align tbl-h">Address Line 1</th>
                            <th class="tbl-border data-align tbl-h">Address Line 2</th>
                            <th class="tbl-border data-align tbl-h">Address Line 3</th>   
                            <th class="tbl-border data-align tbl-h">Delivery Date</th>
                            <th class="tbl-border data-align tbl-h">Delivery Status</th>
                            <th class="tbl-border data-align tbl-h">Customer ID</th>
                            <th class="tbl-border data-align tbl-h">Delivery Person ID</th>

                        </tr>
                        <c:forEach var="orders" items="${ODreport}">

                        <c:set var="OrderId"      value="${orders.getOrderId()}"/>
                        <c:set var="OrderDate"       value="${orders.getOrderDate()}"/>
                        <c:set var="AddLine1"     value="${orders.getAddLine1()}"/>
                        <c:set var="AddLine2"     value="${orders.getAddLine2()}"/>
                        <c:set var="AddLine3"     value="${orders.getAddLine3()}"/>
                        <c:set var="DeliDate"     value="${orders.getDeliDate()}"/>
                        <c:set var="DeliStatus"   value="${orders.getDeliStatus()}"/>
                        <c:set var="CustomerId"   value="${orders.getCustomerId()}"/>
                        <c:set var="DeliPerson"   value="${orders.getDeliPerson()}"/>

                        <tr>
                            <td class="tbl-border data-align tbl-h">${orders.getOrderId()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getOrderDate()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getAddLine1()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getAddLine2()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getAddLine3()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getDeliDate()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getDeliStatus()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getCustomerId()}</td>
                            <td class="tbl-border data-align tbl-h">${orders.getDeliPerson()}</td>


                        </tr>



                    </c:forEach>

                    </table>
                    <br>
                    <button onclick="generatePDF()">Download As PDF</button>
                </div>


</body>
</html>