// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require nprogress
//= require nprogress-turbolinks
//= require turbolinks
//= require_tree .

$(function() {
   $('#flash').delay(100).fadeIn('normal', function() {
      $(this).delay(4000).fadeOut();
   });

   $('.fade-in').delay(200).fadeIn(500);
   $('.fade-out').delay(1000).fadeOut(800);

});

$("#titleHeading").click(function() {
    $('html,body').animate({
        scrollTop: $(".ingredientTable").offset().top},
        'slow');
});
