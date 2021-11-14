<%--
  Created by IntelliJ IDEA.
  User: Bui Duc Nhan
  Date: 11/9/2021
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search results</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/homepage.css">
</head>

<body>
<header>
    <nav class="bg-color-3 d-flex justify-around p-1">
        <ul class="list-style-none d-flex align-center justify-center">
            <li>
                <a href="homepage.jsp" class="image-highlight">
                    <img src="./assets/images/book.svg" alt="bookshop-logo">
                    <span class="color-white font-style-3 font-size-md pl-1">BOOKSHOP</span>
                </a>
            </li>
            <li class="pl-2 d-none visible-in-md">
                <a href="homepage.jsp">
                    <img src="./assets/images/home-run.svg" alt="home-logo" class="navbar-icon">
                    <span class="color-1 font-style-1 font-size-sm pl-1 white-highlight">HOME</span>
                </a>
            </li>
            <li class="pl-2 d-none visible-in-md">
                <a href="collection.jsp">
                    <img src="./assets/images/bookshelf.svg" alt="collection-logo" class="navbar-icon">
                    <span class="color-2 font-style-1 font-size-sm pl-1 white-highlight">COLLECTIONS</span>
                </a>
            </li>
            <li class="pl-2">
                <a href="#">
                    <img src="./assets/images/supermarket.svg" alt="cart-logo" class="navbar-icon">
                    <span
                            class="color-2 font-style-1 font-size-sm pl-1 white-highlight d-none visible-in-md">PURCHASE
                            LIST</span>
                </a>
            </li>
            <li class="pl-2">
                <button type="button"
                        class="d-none stock-btn default-btn font-size-sm font-style-2 bg-color-1">REQUEST
                    FOR STOCK</button>
            </li>
        </ul>

        <ul class="list-style-none d-flex justify-around align-center user-info">
            <li class="d-none visible-in-lg">
                <a href="#" class="image-highlight">
                    <img src="./assets/images/mail.svg" alt="mail-icon" class="navbar-icon">
                    <span
                            class="d-inline-block bg-color-1 mail-notification font-size-sm font-style-2 color-white">12</span>
                </a>
            </li>
            <li class="d-none visible-in-lg">
                <a href="#">
                    <span class="color-white font-style-3 font-size-sm pl-1 gray-highlight">User Name</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./assets/images/person.svg" alt="user-img" class="image-highlight pl-1">
                </a>
            </li>
            <li class="pl-1">
                <a href="search.html" class="search-btn default-btn font-size-sm font-style-2 bg-color-1">Search</a>
            </li>
        </ul>
    </nav>

    <section class="hero-section d-none flex-column p-1">
        <h2 class="d-none">This is added to remove validators errors.</h2>
        <div class="mx-auto">
            <h1 class="hero-title font-style-2 color-white">BOOKSHOP</h1>
            <h4 class="font-style-1 color-white font-size-md py-1">Search for your desired book</h4>
            <form action="#" class="hero-form d-flex align-center py-1">
                <select name="genre" class="genre-selector border-0 bg-white border-right flex-grow-1 pointer">
                    <option value="all" class="genre-selector">All genre</option>
                    <option value="non-fiction" class="genre-selector">Non Fiction</option>
                    <option value="fiction" class="genre-selector" selected>Fiction</option>
                    <option value="academic" class="genre-selector">Academic</option>
                </select>
                <input type="text" placeholder="What do you search for ?" value="philosophy"
                       class="p-1 border-0 font-style-1 font-size-sm border-right flex-grow-1 pointer">
                <input type="text" value="life" placeholder="Search..."
                       class="p-1 border-0 font-style-1 font-size-sm flex-grow-1 pointer">
                <a href="search.jsp" class="default-btn font-size-sm font-style-2 bg-color-3 ml-1">Search</a>
            </form>
        </div>
    </section>
</header>

<main class="d-flex justify-around">
    <!-- Sidebar  -->
    <div class="bg-color-3">
        <div class="color-white">
            <div class="bg-color-3 d-flex">
                <a href="homepage.jsp" class="image-highlight">
                    <img src="./assets/images/book.svg" alt="bookshop-logo">
                    <span class="color-white font-style-3 font-size-md pl-1">BOOKSHOP</span>
                </a>
                <div class="bg-color-3">
                    <div class="iq-menu-bt align-self-center">
                        <div class="wrapper-menu">
                            <div class="main-circle">
                                <i class="las la-bars"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sidebar-scrollbar">
                <nav class="bg-color-4">
                    <ul id="iq-sidebar-toggle" class="list-style-none">
                        <li class="bg-color-4">
                            <a href="#dashboard" class="bg-color-1 font-style-3 p-1"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Shop</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="dashboard" class="bg-color-4 list-style-none m-left-1" data-parent="#iq-sidebar-toggle">
                                <li><a href="homepage.jsp"><i class="#"></i>Home Page</a></li>
                                <li><a href="collection.jsp"><i class="#"></i>Category Page</a></li>
                                <li><a href="#"><i class="#"></i>Book Page</a></li>
                                <li><a href="#"><i class="#"></i>Book PDF</a></li>
                                <li><a href="#"><i class="#"></i>Checkout</a></li>
                                <li><a href="#"><i class="#"></i>wishlist</a></li>
                            </ul>
                        </li>
                        <li class="bg-color-4">
                            <a href="#admin" class="bg-color-1 font-style-3 p-1"><span class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>Admin</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="admin" class="bg-color-4 list-style-none m-left-1" data-parent="#iq-sidebar-toggle">
                                <li><a href="admin-dashboard.jsp"><i class="#"></i>Dashboard</a></li>
                                <li><a href="admin-category.jsp"><i class="#"></i>Category Lists</a></li>
                                <li><a href="admin-author.jsp"><i class="#"></i>Author</a></li>
                                <li><a href="admin-books.jsp"><i class="#"></i>Books</a></li>
                            </ul>
                        </li>
                        <li class="bg-color-4">
                            <a href="#userinfo" class="bg-color-1 font-style-3 p-1" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="userinfo" class="bg-color-4 list-style-none m-left-1" data-parent="#iq-sidebar-toggle">
                                <li><a href="#"><i class="#"></i>User Profile</a></li>
                                <li><a href="#"><i class="#"></i>User Edit</a></li>
                                <li><a href="#"><i class="#"></i>User Add</a></li>
                                <li><a href="#"><i class="#"></i>User List</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- Search Results -->
    <section class="border">
        <h3 class="font-style-1 font-size-s color-2 p-1 border-bottom-3">119 search results for 'life' Search at 'philosophy' at Category 'fiction'</h3>
        <section class="p-1 d-flex flex-column align-center">
            <h2 class="d-none">This is hidden</h2>
            <article class="d-flex justify-between p-1">
                <img src="assets/images/fiction-img-1.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1 d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">The Great Gatsby: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by F. Scott
                                Fitzgerald</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        The Great Gatsby, F. Scott Fitzgerald's third book, stands as the supreme achievement of his
                        career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers.
                        The story is of the fabulously wealthy Jay Gatsby and his new love for the beautiful Daisy
                        Buchanan</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 3.92/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$10.78</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/fiction-img-4.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1 d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">The Alchemist: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Paulo Coelho, Alan R.
                                Clarke
                                (Translator)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Paulo Coelho's enchanting novel has inspired a devoted following around the world. This
                        story, dazzling in its powerful simplicity and soul-stirring wisdom, is about an Andalusian
                        shepherd boy named Santiago who travels from his homeland in Spain to the Egyptian desert
                    </p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 3.87/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$16.93</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/siddhartha.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1 d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">Siddhartha: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Hermann Hesse, Hilda
                                Rosner
                                (Translator)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Herman Hesse's classic novel
                        has delighted, inspired, and influenced generations of readers,
                        writers, and thinkers. In this story of a wealthy Indian Brahmin who casts off a life of
                        privilege to seek spiritual fulfillment.</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$5.49</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/fiction-img-3.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1  d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">1984: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by George Orwell, Peter
                                Hobley
                                Davison (Foreword)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows
                        more haunting as its futuristic purgatory becomes more real. Published in 1949, the book
                        offers political satirist George Orwell's nightmarish vision of a totalitarian</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4.18/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$19.99</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/non-fiction-img-1.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1  d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">"Surely You're Joking, Mr.
                        Feynman!": Adventures of a Curious Character
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Richard P. Feynman</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        A New York Times bestseller—the outrageous exploits of one of this century's greatest
                        scientific minds and a legendary American original.</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4.6/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$10.89</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>
            <ul class="list-style-none d-flex my-1">
                <li class="border bg-color-1 p-1 color-white font-style-1 font-size-sm gray-highlight pointer">1</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">2</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">3</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">4</li>
                <li class="p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">....</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">7</li>
            </ul>
        </section>
    </section>

</main>

<footer class="bg-white border">
    <section class="d-flex flex-wrap justify-around footer-links-container mx-auto">
        <h1 class="d-none">This is hidden</h1>
        <div class="p-1">
            <div class="d-flex justify-center align-center">
                <img src="./assets/images/book-gray.svg" alt="bookshop-logo">
                <span class="color-2 font-style-3 font-size-md pl-1">BOOKSHOP</span>
            </div>
            <p class="font-style-2 color-2 font-size-sm py-half">
                Bookshop is a market place for books. Here you can find<br>
                a huge collection of books. You can browse through our<br>
                search box. Our search algorithm will help you find your<br>
                preferred books. </p>
        </div>

        <div class="flex-grow-1 p-1">
            <p class="font-style-2 color-1 font-size-s  border-bottom-2">Categories</p>
            <ul class="list-style-none py-half">
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Non Fiction</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Fiction</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Academic</li>
            </ul>
        </div>

        <div class="flex-grow-1 p-1">
            <p class="font-style-2 color-1 font-size-s  border-bottom-2">Navigation</p>
            <ul class="list-style-none py-half">
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half"><a href="index.jsp" class="d-block">Home</a></li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Sign In</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Sign Up</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Terms & Conditions</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">FAQ</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Help</li>
            </ul>
        </div>
        <div class="flex-grow-1 d-flex flex-column p-1 location-info">
            <ul class="list-style-none">
                <li class="font-style-3 color-1 font-size-s py-half">COUNTRY<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">United
                            States</span></li>
                <li class="font-style-3 color-1 font-size-s  py-half">LANGUAGE<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">English</span></li>
                <li class="font-style-3 color-1 font-size-s  py-half">CURRENCY<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">US Dollar</span>
                </li>
            </ul>
        </div>
    </section>
    <section class="border">
        <h1 class="d-none">This is hidden</h1>
        <div class="copyright-section p-1 mx-auto d-flex justify-between align-center">
            <p class="font-size-sm font-style-1 color-2">Copyright&copy; 2020 bookshop.com. All rights reserved</p>
            <ul class="list-style-none d-flex">
                <li><img src="./assets/images/twitter.svg" alt="twitter-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/google.svg" alt="google-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/facebook.svg" alt="facebook-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/linkedin.svg" alt="linkedin-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
            </ul>
        </div>
    </section>
</footer>
</body>

</html>
