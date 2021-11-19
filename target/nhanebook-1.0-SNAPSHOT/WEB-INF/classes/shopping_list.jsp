<%@ page import="business.Products" %>
<%@ page import="database.ProductsDB" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/shopping_list.css">
    <title>Shopping Cart</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>
<div class="container">

    <div class="column-left">
        <div class="sub-container">
            <div id="shopping-cart">
                <div class="shopping-cart-title">My Shopping Cart</div>

                <div class="shopping-cart-item">
                    <div class="message">${product_count} Items from Barnes & Noble</div>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                    <form action="UpdateCart" method="post">
                    <c:forEach var="book_item" items="${book_items}">
                        <div class="item">
                            <div class="item-name">
                                <a href="">${book_item.title}</a>
                            </div>
                            <div class="director">By: ${book_item.author}</div>

                            <div class="item-details">
                                <div class="book-detail">
                                    <a class="book-img" src="#"><img src="data:image/jpg;base64,${book_item.base64Image}" width="200" height="280" alt=""></a>
                                    <p class="book-format">Hardcover</p>
                                </div>

                                <div class="shipping-detail">
                                    <div class="ship-to-home">
                                        <label class="radio-label-container" for="ship-this">
                                            <input type="radio" class="ship-this" name="purchase-type" checked>
                                            <span class="radio-circle"></span>
                                                <p>Ship this item</p>
                                        </label>
                                    </div>
                                    <div class="pick-in-store">
                                        <label class="radio-label-container" for="buy-online">
                                            <input  type="radio" class="buy-online" name="purchase-type">
                                            <span class="radio-circle"></span>
                                            <p>Buy Online Edition</p>
                                        </label>
                                    </div>
                                    <div class="remove-save">
                                        <a href="RemoveCart?book_id=${book_item.book_id}" class="remove">Remove</a>
                                    </div>
                                </div>
                                <div class="price-detail">
                                    <div class="retail-discounted-price">
                                        <p class="retail-price">
                                            $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${book_item.cost + 10}"/>
                                        </p>
                                        <p class="discounted-price">$10</p>
                                    </div>
                                    <c:forEach var="product" items="${products}">
                                        <c:if test = "${product.product_id eq book_item.book_id}">
                                            <div class="quantity">
                                                <input type="text" name="quantity" value="${product.quantity} ">

                                            </div>
                                        </c:if>
                                    </c:forEach>

                                    <div class="total-price">
                                        $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${book_item.cost}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="expedited-shipping">
                                <i>Choose Expedited Shipping at checkout for delivery by Wednesday, November 10</i>
                            </div>
                            <div class="horizontal-line"></div>
                        </div>
                    </c:forEach>

                    </form>
                </div>

            </div>
            <div class="recent-view">

            </div>
        </div>
    </div>

    <div class="column-right stick">
        <div id="order-summary">
            <p class="head-title">Oder Summary</p>
            <div class="order-infos">
                <div class="order-info">
                    <p class="item">Subtotal (${product_count}items)</p>
                    <p class="price">$<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${subtotal}"/></p>
                </div>
                <div class="order-info">
                    <p class="item">Estimated Shipping</p>
                    <p class="price">$<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${shipping}"/></p>
                </div>
                <div class="order-info">
                    <p class="item">Estimated Tax</p>
                    <p class="price">$<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${tax}"/></p>
                </div>
            </div>

            <div class="horizontal-line"></div>

            <div class="order-total">
                Order Total:
                <div class="order-total-price">
                    $<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${total}"/>
                </div>

            </div>

            <div class="checkout">
                <form action="UpdateCart" method="post">
                    <button type="submit" class="checkout-btn">Update Cart</button>
                    <br>
                </form>
                <form action="authorize_payment" method="post">
                    <button class="checkout-btn" type="submit" >Checkout</button>
                </form>
                <div class="checkout-with">
                    <p class="title">Or Checkout With</p>
                    <div id="paypal-checkout">
                        <a href="">
                            <img src="image/paypal-checkout.png"  alt="Paypal">
                        </a>
                    </div>
                    <div id="other-checkout"><img src="image/other-checkout.png" alt="Other cards"></div>
                </div>
            </div>
        </div>

        <div id="apply-coupon">
            <div class="input-field">
                <input type="text" id="input-coupon" placeholder="Apply Coupon Code">
            </div>
            <button id="apply-btn">Apply</button>
        </div>
    </div>
    <div class="clear"></div>
</div>
</form>
</body>
<%@ include file="/includes/footer.jsp" %>
</html>