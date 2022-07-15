// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap

import "@hotwired/turbo-rails"
import "controllers"
import "@fortawesome/fontawesome-free"

var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
  var button = event.relatedTarget
  var id = button.getAttribute('data-bs-whatever')
  var modalButtonSend = exampleModal.querySelector('.send')
  modalButtonSend.id = id
  modalButtonSend.addEventListener('click', function(event){
    // debugger;
  })
})
