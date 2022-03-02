<%-- 
    Document   : pod
    Created on : Feb 24, 2022, 5:07:24 PM
    Author     : giaki
--%>

<%@page import="model.product.Pod"%>
<%@page import="model.product.Group"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pod Page</title>
        <%
            ArrayList<Group> groups = (ArrayList<Group>) request.getAttribute("groups");
            ArrayList<Pod> pods = (ArrayList<Pod>) request.getAttribute("pods");
        %>
    </head>
    <body>
        <jsp:include page="../base/header.jsp" />
        <div class="container flex mx-auto mt-10">
            <div class="w-80">
                <div class="">
                    <h3 class="text-md font-medium mb-4 uppercase">Danh mục</h3>
                    <div class="w-full text-sm font-medium text-gray-900 bg-white border border-gray-200 py-2 px-3">
                        <a href="/" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
                            HOME
                        </a>
                        <a href="/pods" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
                            ALL
                        </a>
                        <a href="/pod/sale" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
                            SALE
                        </a>
                        <c:forEach items="${groups}" var="group">
                            <a href="/pods/group/${group.getId()}" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
                                ${group.getName()}
                            </a>
                        </c:forEach>
                        <a href="/news" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
                            TIN TỨC
                        </a>
                    </div>
                </div>
            </div>
            <div class="w-full p-5">
                <div class="w-full flex justify-between items-center mb-4">
                    <div>
                        <h3 class="text-2xl font-medium">PHỤ KIỆN</h3>
                    </div>
                    <div>
                        <select id="countries" class="min-w-[200px] bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                            <option class="py-2 px-3">Sắp xếp</option>
                            <option class="py-2 px-3">Tên: A-Z</option>
                            <option class="py-2 px-3">Tên: Z-A</option>
                            <option class="py-2 px-3">Giá: Tăng dần</option>
                            <option class="py-2 px-3">Giá: Giảm dần</option>
                            <option class="py-2 px-3">Thời gian: Mới nhất</option>
                            <option class="py-2 px-3">Thời gian: Cũ nhất</option>
                        </select>
                    </div>
                </div>
                <div class="grid grid-cols-4 gap-5">
                    <c:forEach items="${pods}" var="pod">
                        <div class="bg-white rounded-lg shadow-md flex flex-col">
                            <a href="/pods/detail?id=${pod.getId()}">
                                <img class="rounded-t-lg w-full h-[280px]" src="/assets/images/pods/${pod.getImages().get(1).getImage()}" alt="product image" />
                            </a>
                            <div class="px-5 pb-5 mt-4 flex flex-col flex-1">
                                <a href="/pods/detail?id=${pod.getId()}">
                                    <h3 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white">${pod.getName()}</h3>
                                </a>
                                <div class="flex justify-between items-center mt-auto">
                                    <span class="text-xl font-medium text-red-500">$599</span>
                                    <a href="#" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-3 py-2 text-center">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>
                <div class="flex justify-center mt-10">
                    <nav aria-label="Page navigation example">
                        <ul class="inline-flex -space-x-px">
                            <li>
                                <a href="#" class="py-2 px-3 ml-0 leading-tight text-gray-500 bg-white rounded-l-lg border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Previous</a>
                            </li>
                            <li>
                                <a href="#" class="py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">1</a>
                            </li>
                            <li>
                                <a href="#" class="py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">2</a>
                            </li>
                            <li>
                                <a href="#" aria-current="page" class="py-2 px-3 text-blue-600 bg-blue-50 border border-gray-300 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white">3</a>
                            </li>
                            <li>
                                <a href="#" class="py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">4</a>
                            </li>
                            <li>
                                <a href="#" class="py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">5</a>
                            </li>
                            <li>
                                <a href="#" class="py-2 px-3 leading-tight text-gray-500 bg-white rounded-r-lg border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <jsp:include page="../base/footerImport.jsp" />
    </body>
</html>
