<%-- 
    Document   : index
    Created on : Feb 24, 2022, 3:45:58 PM
    Author     : giaki
--%>


<%@page import="model.product.Pod"%>
<%@page import="dal.product.PodDBContext"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.product.Group"%>
<%@page import="dal.product.GroupDBContext"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%
            GroupDBContext groupDB = new GroupDBContext();
            ArrayList<Group> groups = groupDB.list();
            request.setAttribute("groups", groups);
            PodDBContext podDB = new PodDBContext();
            ArrayList<Pod> pods = podDB.getPods("", -1, -1, 1, 12);
            request.setAttribute("pods", pods);
        %>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    </head>
    <style>
        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
    </style>
    <body>
        <jsp:include page="/views/base/header.jsp" />
        <div class="w-full h-[430px]">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="/assets/images/banner1.webp" class="container h-full"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="/assets/images/banner2.webp" class="container h-full"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="/assets/images/banner3.webp" class="container h-full"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="/assets/images/banner4.webp" class="container h-full"/>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="container mx-auto">
                <div class="text-center mt-10 w-full">
                    <h3 class="text-4xl">DANH MỤC SẢN PHẨM</h3>
                    <div class="grid grid-cols-3 w-full mt-10 space-x-5">
                        <a href="/pods" class="block max-w-lg bg-white rounded-lg border border-gray-200 shadow-sm hover:bg-gray-1000">
                            <img src="/assets/images/danhmuc1.webp" style="width: 100%"/>
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">PODS</h5>
                        </a>
                        <a href="/pods" class="block max-w-lg bg-white rounded-lg border border-gray-200 shadow-sm hover:bg-gray-1000">
                            <img src="/assets/images/danhmuc2.jpg" style="width: 100%"/>
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">TINH DẦU</h5>
                        </a>
                        <a href="/pods" class="block max-w-lg bg-white rounded-lg border border-gray-200 shadow-sm hover:bg-gray-1000">
                            <img src="/assets/images/danhmuc3.jpg" style="width: 100%"/>
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">POD DÙNG 1 LẦN</h5>
                        </a>
                    </div>
                </div>
                <div class="text-center mt-10 w-full">
                    <h3 class="text-4xl">SẢN PHẨM NỔI BẬT</h3>
                    <div class="grid grid-cols-4 gap-6 mt-10 <%=pods.size() <= 0 ? "hidden" : ""%>">
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
                </div>
            </div>
            <div>
                <jsp:include page="/views/base/footer.jsp" />
            </div>
        </div>
        <jsp:include page="/views/base/footerImport.jsp" />
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script>
                                            var swiper = new Swiper(".mySwiper", {
                                                loop: true,
                                                centeredSlides: true,
                                                autoplay: {
                                                    delay: 2500,
                                                    disableOnInteraction: false,
                                                },
                                                pagination: {
                                                    el: ".swiper-pagination",
                                                    dynamicBullets: true,
                                                },
                                            });
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
                                                }).done(function (data) {
                                                    if (data?.detailMessage) {

                                                    } else {
                                                        $("#cart-quantity").text(data);
                                                    }
                                                })
                                            }
        </script>
    </body>
</html>
