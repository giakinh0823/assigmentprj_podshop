<%-- 
    Document   : pod
    Created on : Feb 24, 2022, 5:07:24 PM
    Author     : giaki
--%>

<%@page import="model.product.Category"%>
<%@page import="model.common.Pagination"%>
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
            Pagination pagination = (Pagination) request.getAttribute("pagination");
            ArrayList<Category> categorys = (ArrayList<Category>) request.getAttribute("categorys");
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
                            <a href="/pods?group=${group.getId()}" class="uppercase block py-3 px-4 w-full font-small border-b border-dashed border-gray-200 cursor-pointer hover:bg-gray-100 hover:text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
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
                <div class="w-full flex items-center mb-4">
                    <div>
                        <form action="/pods" method="GET" class="flex items-center">
                            <div class="relative mt-1">
                                <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
                                    <svg class="w-5 h-5 text-gray-500" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path></svg>
                                </div>
                                <input type="text" name="q" id="search" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-80 pl-10 p-2.5" placeholder="Search for items">
                            </div>
                            <select id="group" name="group" class="ml-3 min-w-[200px] bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                <option value="all">Group</option>
                                <c:forEach items="${groups}" var="group">
                                    <option value="${group.id}">${group.getName()}</option>
                                </c:forEach>
                            </select>
                            <select id="category" name="category" class="ml-3 min-w-[200px] bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                <option value="all">category</option>
                            </select>
                            <button type="submit" class="ml-3 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">search</button>
                        </form>
                    </div>
                    <div class="ml-auto">
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
                <c:if test="${pods.size()<=0}">
                    <div class="w-full min-h-[50vh] flex justify-center items-center">
                        <p class="text-5xl">NOT FOUND</p>
                    </div>
                </c:if>
                <div class="grid grid-cols-4 gap-5 <%=pods.size()<=0 ?"hidden": ""%>">
                    <c:forEach items="${pods}" var="pod">
                        <div class="bg-white rounded-lg shadow-md flex flex-col">
                            <a href="/pods/detail?id=${pod.getId()}">
                                <img class="rounded-t-lg w-full h-[280px]" src="/assets/images/pods/${pod.getImages().get(pod.getImages().size()-1).getImage()}" alt="product image" />
                            </a>
                            <div class="px-5 pb-5 mt-4 flex flex-col flex-1">
                                <a class="mb-10" href="/pods/detail?id=${pod.getId()}">
                                    <h3 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white" style="overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;">${pod.getName()}</h3>
                                </a>
                                <div class="flex justify-between items-center mt-auto">
                                    <span class="text-xl font-medium text-red-500" id="price-${pod.id}">${pod.price}</span>
                                     <script>
                                        var price = Number.parseInt($("#price-${pod.id}").text());
                                        price = price.toLocaleString('vi', {style: 'currency', currency: 'VND'});
                                        $("#price-${pod.id}").text(price);
                                    </script>
                                    <button type="button" onclick="addToCart(${pod.id})" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-3 py-2 text-center">Add to cart</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>
                <div class="mt-10 mb-5 w-full flex justify-center <%=pods.size()<=0 ?"hidden": ""%>">
                    <nav aria-label="Page navigation example">
                        <ul class="inline-flex -space-x-px">
                            <li>
                                <a href="/pods?page=<%=pagination.getPrev()%>" data="<%=pagination.getPrev()%>" class="pagination-link py-2 px-3 ml-0 leading-tight text-gray-500 bg-white rounded-l-lg border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Previous</a>
                            </li>
                            <c:if test="${pagination.getPageIndex()>2}">
                                <li>
                                    <a href="/pods?page=<%=pagination.getPageIndex() - 2%>" data="<%=pagination.getPageIndex() - 2%>" class="pagination-link py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"><%=pagination.getPageIndex() - 2%></a>
                                </li>
                            </c:if>
                            <c:if test="${pagination.getPageIndex()>1}">
                                <li>
                                    <a href="/pods?page=<%=pagination.getPageIndex() - 1%>" data="<%=pagination.getPageIndex() - 1%>" class="pagination-link py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"><%=pagination.getPageIndex() - 1%></a>
                                </li>
                            </c:if>
                            <li>
                                <a href="/pods?page=<%=pagination.getPageIndex()%>" data="<%=pagination.getPageIndex()%>" aria-current="page" class="pagination-link py-2 px-3 text-blue-600 bg-blue-50 border border-gray-300 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white"><%=pagination.getPageIndex()%></a>
                            </li>
                            <c:if test="${pagination.getPageIndex()<pagination.getCount()}">
                                <li>
                                    <a href="/pods?page=<%=pagination.getPageIndex() + 1%>" data="<%=pagination.getPageIndex() + 1%>" class="pagination-link py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"><%=pagination.getPageIndex() + 1%></a>
                                </li>
                            </c:if>
                            <c:if test="${pagination.getPageIndex()+1<pagination.getCount()}">
                                <li>
                                    <a href="/pods?page=<%=pagination.getPageIndex() + 2%>" data="<%=pagination.getPageIndex() + 2%>" class="pagination-link py-2 px-3 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"><%=pagination.getPageIndex() + 2%></a>
                                </li>
                            </c:if>
                            <li>
                                <a href="/pods?page=<%=pagination.getNext()%>" data="<%=pagination.getNext()%>" class="pagination-link py-2 px-3 leading-tight text-gray-500 bg-white rounded-r-lg border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <script>
            
            const addToCart = (podId) => {
                console.log(podId);
                $("#cart-quantity").removeClass("hidden")
                const data = {
                    podId: podId,
                    quantity: 1,
                }
                $.ajax({
                    method: "POST",
                    url: "/addCart",
                    data: data,
                }).done(function(data){
                    if (data?.detailMessage) {
                        
                    }else{
                       $("#cart-quantity").text(data);
                    }
                })
            }

            const categorys = [
            <%for (Category category : categorys) {%>
            {
            id: <%=category.getId()%>,
                    name: "<%=category.getName()%>",
                    group: {
                    id: <%=category.getGroup().getId()%>,
                            name: "<%=category.getGroup().getName()%>",
                    }
            },
            <%}%>
            ]

            const category = document.getElementById("category");
            for (var i = 0; i < categorys.length - 1; i++) {
                category.innerHTML += '<option value="' + categorys[i].id + '">' + categorys[i].name + '</option>';
            }

            $("#group").on("change", function (e) {
                category.innerHTML = "";
                category.innerHTML += '<option value="all">Category</option>';
                categorys.forEach(item => {
                    if (item.group.id == $("#group").val() || $("#group").val() == "all") {
                        category.innerHTML += '<option value="' + item.id + '">' + item.name + '</option>';
                    }
                });
            })


            const url_string = window.location.href;
            const url = new URL(url_string);
            const search = url.searchParams.get("q");
            const paginationLinks = document.querySelectorAll(".pagination-link");
            if (paginationLinks) {
            paginationLinks.forEach(item => {
            var search = location.search.substring(1);
            const params = search ? JSON.parse('{"' + decodeURI(search).replace(/"/g, '\\"')
                    .replace(/&/g, '","').replace(/=/g, '":"') + '"}') : {};
            if (params?.group){
            $("#group").val(params?.group)
                    category.innerHTML = "";
                categorys.forEach(item => {
                if (item.group.id == params?.group || params?.group == "all") {
                    if (params?.category == item.id){
                        category.innerHTML += '<option value="' + item.id + '"selected>' + item.name + '</option>'
                        } else{
                            category.innerHTML += '<option value="' + item.id + '">' + item.name + '</option>'
                        }
                    }
                });
            }
            const page = item.getAttribute("data");
                params.page = page;
                const href = new URLSearchParams(params).toString();
                    item.setAttribute("href", "?" + href);
                })
            }
            
            
        </script>
        <jsp:include page="../base/footerImport.jsp" />
    </body>
</html>
