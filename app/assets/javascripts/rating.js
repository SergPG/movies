// document.getElementById('modal-rating').on('click', function(){
    $('#ratingsMovieModal').on('shown.bs.modal', function (event) {
      debugger;
      var button = event.relatedTarget;
      var id = button.getAttribute('data-movie-id');
      var modalForm = ratingsMovieModal.querySelector('.button_to');
      var newAction = modalForm.getAttribute("action").replace("movie_id", id);
      modalForm.attr('action', newAction);
    })
// });

console.log("vddv");