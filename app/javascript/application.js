// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap

import "@hotwired/turbo-rails"
import "controllers"
import "@fortawesome/fontawesome-free"

var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
  // Button that triggered the modal
  var button = event.relatedTarget
  // Extract info from data-bs-* attributes
  var recipient = button.getAttribute('data-bs-whatever')
  console.log(recipient)  
  // If necessary, you could initiate an AJAX request here
  // and then do the updating in a callback.
  //
  // Update the modal's content.
  var modalTitle = exampleModal.querySelector('.modal-title')
  var modalBodyInput = exampleModal.querySelector('.modal-body input')

  modalTitle.textContent = 'New message to ' + recipient
  modalBodyInput.value = recipient
})

//=======================
var categoryFilter = document.getElementById('category_filter')
categoryFilter.addEventListener('change', function (event) {
  console.log($(this).val())
  // $.ajax({
  //   url: 'movies',
  //   type: 'GET',
  //   dataType: 'script',
  //   data: { category_id: $(this).val() }
  // });
}) 

// $('#category_filter').on('change', function(){
//   console.log($(this).val())
//  // $.ajax({
//  //     url: 'movies',
//  //     type: 'GET',
//  //     dataType: 'script',
//  //     data: { category_id: $(this).val() }
//  // });
// });

