<%-- 
    Document   : dashboard
    Created on : Feb 23, 2022, 8:23:46 PM
    Author     : giaki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.order.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin dashboard</title>
        <%
            ArrayList<Order> orders = (ArrayList<Order>) request.getAttribute("orders");
        %>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
    </head>
    <jsp:include page="../base/header.jsp" />
    <body>
        <div class="flex">
            <div class="w-64  bg-gray-50">
                <jsp:include page="../base/navbar.jsp" />
            </div>
            <div class="w-full p-5">
                <div class="flex justify-between">
                    <div class="p-8 m-2 text-lg text-blue-700 bg-blue-100 rounded-lg flex-1 shadow-sm" role="alert">
                        <div class="flex flex-col items-center">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg>
                            <span class="font-medium mt-3" id="quantity"></span> 
                        </div>
                    </div>
                    <div class="p-8 m-2 text-lg text-red-700 bg-red-100 rounded-lg flex-1 shadow-sm" role="alert">
                        <div class="flex flex-col items-center">    
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 19a2 2 0 01-2-2V7a2 2 0 012-2h4l2 2h4a2 2 0 012 2v1M5 19h14a2 2 0 002-2v-5a2 2 0 00-2-2H9a2 2 0 00-2 2v5a2 2 0 01-2 2z"></path></svg>
                            <span class="font-medium mt-3" id="total"></span> 
                        </div>
                    </div>
                </div>
                <div class="w-full px-20 py-10">
                    <div>
                        <canvas id="myChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        const labels = [
            'Tháng 1',
            'Tháng 2',
            'Tháng 3',
            'Tháng 4',
            'Tháng 5',
            'Tháng 6',
            'Tháng 7',
            'Tháng 8',
            'Tháng 9',
            'Tháng 10',
            'Tháng 11',
            'Tháng 12',
        ];

        const orders = [];
        const dataOrdersTotal = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        const dataOrdersQuantity = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        var quantity = 0;
        var total = 0;
        <c:forEach items="${orders}" var="order">
        var quantityOrder = 0;
        var totalOrder = 0;
        var order = {
            id: ${order.id},
            date: new Date("${order.created_at}"),
            month: new Date("${order.created_at}").getMonth() + 1,
            state: "${order.state.name}",
            orderDetails: [],
        }
        orders.push(order)
            <c:forEach items="${order.orderDetails}" var="orderDetail">
        total += ${orderDetail.getRealPrice()};
        quantity += ${orderDetail.quantity};
        totalOrder += ${orderDetail.getRealPrice()};
        quantityOrder += ${orderDetail.quantity};
        order.orderDetails.push({
            id: ${orderDetail.id},
            quantity: ${orderDetail.quantity},
            price: ${orderDetail.price},
            discount: ${orderDetail.discount},
            isSale: ${orderDetail.pod.isSale},
            realPrice: ${orderDetail.getRealPrice()}
        })
            </c:forEach>
        dataOrdersTotal[new Date("${order.created_at}").getMonth()] += totalOrder;
        dataOrdersQuantity[new Date("${order.created_at}").getMonth()] += quantityOrder;
        var totalPrice = total;
        totalPrice = totalPrice.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        $("#total").text(totalPrice);
        $("#quantity").text(quantity);
        </c:forEach>
        const data = {
            labels: labels,
            datasets: [{
                    label: 'Order',
                    data: dataOrdersTotal,
                    borderColor: 'rgb(255, 99, 132)',
                    backgroundColor: 'rgb(255, 99, 132)',
                    stack: 'combined',
                    type: 'bar'
                  },
                  {
                    label: 'Order',
                    data: dataOrdersTotal,
                    borderColor: 'rgb(255, 99, 132)',
                    backgroundColor: 'rgb(255, 99, 132)',
                    stack: 'combined'
                  }
            ]
        };

        const config = {
            type: 'line',
            data: data,
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'Total order'
                    }
                },
                scales: {
                    y: {
                        stacked: true
                    }
                }
            },
        };

        const myChart = new Chart(
                document.getElementById('myChart'),
                config
                );
    </script>
    <jsp:include page="../base/footer.jsp" />
</html>
