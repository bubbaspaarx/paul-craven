function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-sparks');
  const logo = document.querySelector('.navbar-sparks-brand')
  console.log(logo)
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight - 100) {
      navbar.classList.add('navbar-white');
      logo.classList.add('logo-small')
    } else {
      navbar.classList.remove('navbar-white');
      logo.classList.remove('logo-small')
    }
  });
}

export { initUpdateNavbarOnScroll };
