<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Phobos.Ul.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/media.css"/>
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'/>
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <!-- AOS CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="img/icon.png" type="image/x-icon"/>
    <title>Enxame Hospital</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <header>
            <nav>
                <div class="menu">
                    <a href="#home" class="logo">
                        <i class='bx bxs-hot'></i>
                        <span>Phobos</span>
                    </a>
                    li
                    <ul class="navbar open">
                        <a class="btnMenu"><i class='bx bx-menu'></i></a>
                        <li><a href="index.aspx#home">home</a></li>
                        <li><a href="index.aspx#about">about</a></li>
                        <li><a>specialties <i class='bx bx-chevron-down'></i></a>
                            <ul class="sub">
                                <li><a href="index.aspx#emphasis">emphasis</a></li>
                                <li><a href="index.aspx#products">products</a></li>
                                <li><a href="index.aspx#services">services</a></li>
                                <li><a href="index.aspx#domain">domain</a></li>
                            </ul>
                        <li><a href="index.aspx#localization">localization</a></li>
                        <li><a href="index.aspx#contact">contact</a></li>

                    </ul>
                </div>
            </nav>

        </header>
        <main>
            <section id="home">
                <div class="homeC">
                    <video id="video" src="video/Scorn.mp4" muted></video>
                    <div class="homeI">
                        <h1>Enxame<span>&reg;</span>Hospital Web</h1>
                        <h2>Webhosting</h2>
                        <a href="#" class="btnDefault">Read more</a>
                    </div>
                </div>
            </section>

            <section id="about">
                <div class="swiper aboutInner aboutC" data-aos="fade-up">
                    <h2>know more about us</h2>
                    <div class="swiper-wrapper">
                        <!-- card1 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil.PNG" alt="perfil1"/></li>
                                <li class="cardTitulo">
                                    <h4>Rodometalica</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Developer</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card2 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil2.png" alt="perfil2"/></li>
                                <li class="cardTitulo">
                                    <h4>Simono</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Boss</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card3 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil3.png" alt="perfil3"/></li>
                                <li class="cardTitulo">
                                    <h4>Rodoamerica</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Secretaria</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card4 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil4.png" alt="perfil4"/></li>
                                <li class="cardTitulo">
                                    <h4>Samara</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Ghost</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card5 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil5.png" alt="perfil5"/></li>
                                <li class="cardTitulo">
                                    <h4>Jaquelino</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Maker all</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card6 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil6.png" alt="perfil6"/></li>
                                <li class="cardTitulo">
                                    <h4>Ollyudisoun</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Director</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card7 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil7.png" alt="perfil7"/></li>
                                <li class="cardTitulo">
                                    <h4>Letisgou</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Manager</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card8 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil8.png" alt="perfil8"/></li>
                                <li class="cardTitulo">
                                    <h4>Refrigerino</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Telephonist</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                        <!-- card9 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil9.png" alt="perfil9"/></li>
                                <li class="cardTitulo">
                                    <h4>Cipriana</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Developer</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class='bx bxl-facebook-circle'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-tiktok'></i>
                                    <i class='bx bxl-linkedin-square'></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- controles -->
                    <div class="swiper-button-next myNext"></div>
                    <div class="swiper-button-prev myPrev"></div>
                    <div class="swiper-pagination myPage"></div>
                </div>
            </section>

            <section id="emphasis">
                <div class="carousel">
                    <div class="carouselInner">
                        <div class="swiper carouselSwiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src='img/gato2.png' alt="" class="imgFit"></div>
                                <div class="swiper-slide"><img src='img/gato1.png' alt="" class="imgFit"></div>
                                <div class="swiper-slide"><img src='img/ghos2t.png' alt="" class="imgFit"></div>
                                <div class="swiper-slide"><img src='img/ghost1.png' alt="" class="imgFit"></div>
                                <div class="swiper-slide"><img src='img/pacman.png' alt="" class="imgFit"></div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-pagination"></div>
                        </div>
                    </div>
                </div>
            </section>

            <section id="products">
                <h4>Products prices and plans</h4>
                <div class="productsC" data-aos="fade-up">
                    <!-- card1 -->
                    <ul class="cardProd">
                        <li class="price">US$ 1.06</li>
                        <li class="title">standard</li>
                        <li>
                            <h5>10 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>10 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>15 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card2 -->
                    <ul class="cardProd">
                        <li class="price">US$ 2.05</li>
                        <li class="title">dedicated</li>
                        <li>
                            <h5>12 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>12 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>17 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>
                    <!-- card3 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 3.04</li>
                        <li class="title">black</li>
                        <li>
                            <h5>15 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>15 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>20 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>
                    <!-- card4 -->
                    <ul class="cardProd">
                        <li class="price">US$ 4.12</li>
                        <li class="title">plus</li>
                        <li>
                            <h5>17 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>17 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>22 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>
                    <!-- card5 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 4.99</li>
                        <li class="title">plus ++</li>
                        <li>
                            <h5>20 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>20 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>25 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card6 -->
                    <ul class="cardProd">
                        <li class="price">US$ 5.86</li>
                        <li class="title">viper</li>
                        <li>
                            <h5>22 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>22 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>27 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card7 -->
                    <ul class="cardProd">
                        <li class="price">US$ 6.16</li>
                        <li class="title">cloud</li>
                        <li>
                            <h5>24 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>24 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>30 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card8 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 8.00</li>
                        <li class="title">god</li>
                        <li>
                            <h5>50 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>50 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>50 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                </div>
            </section>

            <section id="services">
                <div class="servicesC">
                    <h4>The worst services today</h4>
                    <div class="servicesI">
                        <table class="tabela" data-aos="fade-up">
                            <thead>
                                <tr>
                                    <th>Services</th>
                                    <th>Description</th>
                                    <th>$Price</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tdoby>
                                <tr>
                                    <td>Stalker</td>
                                    <td>Stalker all people</td>
                                    <td>US$ 60.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>Attacks</td>
                                    <td>Personal Attacks</td>
                                    <td>US$ 150.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>Dissimulation</td>
                                    <td>Fake News</td>
                                    <td>US$ 90.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>Assistence</td>
                                    <td>present day</td>
                                    <td>US$ 120.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>Stalker</td>
                                    <td>Stalker all people</td>
                                    <td>US$ 60.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>erase</td>
                                    <td>erase problens</td>
                                    <td>US$ 80.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>fix</td>
                                    <td>fix error</td>
                                    <td>US$ 130.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>tilt</td>
                                    <td>machine tilt</td>
                                    <td>US$ 140.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>global</td>
                                    <td>global help</td>
                                    <td>US$ 90.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                <tr>
                                    <td>red line</td>
                                    <td>death line</td>
                                    <td>US$ 110.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>
                                </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <section id="domain">
                <h4>Check if the domain is avaliable for use</h4>
                <div class="domainC" data-aos="fade-up">
                    <ul>
                        <li><input type="text" name="search" placeholder="Enter your domain:"/>
                        </li>
                        <li>
                            <a href="#" class="btnDefault">Search</a>
                        </li>
                    </ul>
                </div>
            </section>

            <section id="localization">
                <h4>Try to find us on the map</h4>
                <div class="localizationC" data-aos="fade-up">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14629.168662373384!2d-46.570578759849525!3d-23.557948085574804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5e820dde705d%3A0x5d9ada76950fa481!2sShopping%20An%C3%A1lia%20Franco!5e0!3m2!1spt-BR!2sbr!4v1663698268441!5m2!1spt-BR!2sbr"
                        width="100%" height="700" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </section>

            <section id="contact">
                <h4>Send a message and maybe we'll answer one day</h4>
                <div class="contactC">
                    <form action="https://api.staticforms.xyz/submit" method="post">
                        <ul class="contactI">
                            <li><input type="text" name="name" placeholder="Nome:" autocomplete="off" required/></li>
                            <li><input type="email" name="email" placeholder="Email:" autocomplete="off" required/></li>
                            <li>
                                <textarea name="message" placeholder="Send your message:" cols="30" rows="10"
                                    required></textarea>
                            </li>
                            <li class="formBtn">
                                <input type="submit" class="btnDefault" value="Submit"/>
                                <input type="reset" class="btnDefault" value="Cancel"/>
                            </li>
                            <li>
                                <input type="checkbox"/>
                                <span>I want to receive junk in my email account</span>
                            </li>
                        </ul>
                        <!-- chave de acesso obtida no site -->
                        <input type="hidden" name="accessKey" value="9682408e-2dbe-44d8-908b-0045ad9b432">
                        <!-- pagina de redirecionamento -->
                        <input type="hidden" name="redirectTo" value="http://127.0.0.1:5500/thanks.html">
                    </form>
                </div>

            </section>
        </main>
        <!-- footer -->
        <footer>
            <div class="footerC">
                <ul>
                    <li><a href="index.aspx#home">home</a></li>
                    <li><a href="index.aspx#about">about</a></li>
                    <li><a href="index.aspx#emphasis">emphasis</a></li>
                    <li><a href="index.aspx#products">products</a></li>
                    <li><a href="index.aspx#services">services</a></li>
                </ul>
                <ul>
                    <li><a href="index.aspx#domain">domain</a></li>
                    <li><a href="index.aspx#localization">localization</a></li>
                    <li><a href="index.aspx#contact">contact</a></li>
                    <li><a href="login.aspx">login</a></li>
                </ul>
                <a href="#home" class="logo">
                    <i class='bx bxs-hot'></i>
                    <span>Enxame</span>
                </a>
                <h5>&copy;; Copyright all rights reserved 2012</h5>
            </div>
        </footer>
    </div>

            <!-- scripts -->
    <script src="script/jquery-3.6.0.min.js"></script>
    <!-- swiper -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <!-- AOS JS -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- script local -->
    <script src="script/script.js"></script>
    </form>
</body>
</html>
