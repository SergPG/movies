// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require popper
//= require bootstrap
//= require jquery
//= require jquery_ujs


import "@hotwired/turbo-rails"
import "controllers"
import "@fortawesome/fontawesome-free"

console.log('test')

// var ratingsMovieModal = document.getElementById('ratingsMovieModal');
// // ratingsMovieModal.on('shown', function (event) {
// $('#ratingsMovieModal').on('shown.bs.modal', function (event) {
//     debugger;
//   var button = event.relatedTarget;
//   var id = button.getAttribute('data-movie-id');
//   var modalForm = ratingsMovieModal.querySelector('.button_to');
//   var newAction = modalForm.getAttribute("action").replace("movie_id", id);
//   modalForm.attr('action', newAction);

// //   modalButtonSend.id = id
// //   modalButtonSend.addEventListener('click', function(event){
// //     // debugger;
// //   })
// })

//    var ratingsMovieModal = document.getElementById('ratingsMovieModal')
//    ratingsMovieModal.addEventListener('show.bs.modal', function (event) {
//       var button = event.relatedTarget
//       var id = button.getAttribute('data-bs-whatever')
//       var modalButtonSend = exampleModal.querySelector('.send')
//       modalButtonSend.id = id
//       modalButtonSend.addEventListener('click', function(event){
//         // debugger;
//       })
//     })  ratingsMovieModal

// var ratingsMovieModal = document.getElementById('ratingsMovieModal')
// ratingsMovieModal.addEventListener('show.bs.modal', function (event) {
// console.log(ratingsMovieModal)
// })
(function ($) {
    "use strict";

    // document.getElementById('modal-rating').on('click', function(){
    //     $('#ratingsMovieModal').on('shown.bs.modal', function (event) {
    //       debugger;
    //       var button = event.relatedTarget;
    //       var id = button.getAttribute('data-movie-id');
    //       var modalForm = ratingsMovieModal.querySelector('.button_to');
    //       var newAction = modalForm.getAttribute("action").replace("movie_id", id);
    //       modalForm.attr('action', newAction);
    //     })
    // });


    $("#Super").click( function(event)
     {
          // видим сообщение "Hello"
          alert("Hello");

          // удаляем стандартный обработчик открытия ссылки (то есть ссылка не открывается)
          event.preventDefault();
     });

    //  var ratingsMovieModal = document.getElementById('ratingsMovieModal');
    //   {
    //     console.log(ratingsMovieModal)
    //  })

        
    //  $('.back-to-top').click(function () {
    //     $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
    //     return false;
    // });

})(jQuery);    