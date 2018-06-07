function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar');

  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-white');
    } else {
      navbar.classList.remove('navbar-white');
    }
  });
}

export { initUpdateNavbarOnScroll };