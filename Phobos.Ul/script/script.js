//dropDown
$(function () {
    $('.navbar li').hover(

        function () {
            $('>ul.sub:not(:animated)', this).slideDown(500);
        },
        function () {
            $('>ul.sub', this).slideUp(300);
        }
    );


});

// video
window.addEventListener("load", function () {
    let video = window.document.querySelector('#video');
    video.play();
    video.loop = true;
});

// about
// reload
window.addEventListener('resize', function (event) {
    recarrega();
});

function recarrega() {
    document.location.reload();
};

// cards

if ($(window).width() < 700) {
    var swiper = new Swiper(".aboutInner", {
        slidesPerView: 1,
        spaceBetween: 30,
        slidesPerGroup: 1,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
} else {
    var swiper = new Swiper(".aboutInner", {
        slidesPerView: 3,
        spaceBetween: 30,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
}

// carousel swiper

var swiper = new Swiper(".carouselSwiper", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
    },
});

// inicializacao AOS fades

AOS.init({
    duration: 2000,
});

// services
// zebrando a tabela

$(document).ready(function () {
    // linhas pares, iniciando em zero
    $('.tabela tbody tr:even').css('background-color', '#9400D3');
    // linhas impares iniciando em zero
    $('.tabela tbody tr:odd').css('background-color', '#4B0082');
});

// login
function logar() {
    var nome = document.getElementById('nome').value;
    var senha = document.getElementById('senha').value;

    if (nome == 'admin' && senha == 'admin') {
        alert('Sucesso !!');
        location.href = "privacity.html";
    } else {
        alert('Fracasso !! usuário ou senha incorretos !!');
    }
}

// menusHamburguer
$("i").click(function () {
    $("ul").toggleClass("open");
});