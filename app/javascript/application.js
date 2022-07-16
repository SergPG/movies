// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require popper
//= require bootstrap


import "@hotwired/turbo-rails"
import "controllers"
import "@fortawesome/fontawesome-free"

$( document ).ready(function()
{
     // Пишем свой обработчик нажатия на ссылку
     $("#Super").click( function(event)
     {
          // видим сообщение "Hello"
          alert("Hello");

          // удаляем стандартный обработчик открытия ссылки (то есть ссылка не открывается)
          event.preventDefault();
     });
});