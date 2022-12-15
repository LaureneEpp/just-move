// Get all links with class="nav-link" inside the container
const navContainer = document.querySelector("#navbar");
const navLinks = navContainer.querySelectorAll(".js-link");
const activePage = window.location.pathname;

// Loop through the navbar items and add the active class to the current/clicked nav item
const activeNavbar = () => {
    console.log('test')
    navLinks.forEach(link => {
        if(link.href.includes(`${activePage}`)) {
            link.classList.add('active');
            console.log('active')
        }
    })

    if(window.location.pathname === '/') {
        navLinks.forEach(link => link.classList.remove('active'));
        navLinks[0].classList.add('active')
    }
}
export default  activeNavbar();