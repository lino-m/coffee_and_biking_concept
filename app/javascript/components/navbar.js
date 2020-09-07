const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

const setActiveNavItem = () => {
  const items = document.querySelectorAll('.nav-item');
  let path = window.location.pathname.replace(/^\//, "");
  console.log(path);

  items.forEach((item) => {
    if (item.innerText.toLowerCase() === path) {
      item.classList.add("active")
    };
  });
}

export { initUpdateNavbarOnScroll, setActiveNavItem };
