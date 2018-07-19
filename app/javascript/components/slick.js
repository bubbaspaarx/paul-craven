$(".video-carousel").slick({
  dots: true,
  infinite: false,
  speed: 600,
  slidesToShow: 1,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
        arrows: true
      }
    }
  ]
});

$(".testimonial-carousel").slick({
  dots: true,
  infinite: false,
  speed: 600,
  autoplay: true,
  arrows: false,
  autoplaySpeed: 12000,
  slidesToShow: 1,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
        arrows: false
      }
    }
  ]
});
