// This is where it all goes :)

window.onload = function() {
  // Set first tab to be active
  let firstTab = document.getElementById('nav-tab').firstElementChild;
  firstTab.classList.add('active');
  firstTab.setAttribute('aria-selected', true);

  // Set first tab content to be active
  let firstTabContent = document.getElementById('nav-tabContent').firstElementChild;
  firstTabContent.classList.add('show', 'active');
}