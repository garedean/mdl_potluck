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
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .


$(function() {
   $('#flash').delay(100).fadeIn('normal', function() {
      $(this).delay(4000).fadeOut();
   });

   $('.fade-in').delay(100).fadeIn(500);

   $('.close-lightbox').click(function() {
     $(".lightbox-wrapper").hide();
   });
});

$(function () {
    $('#titleFade').fadeIn(500).removeClass('hidden');
    $('#locationFade').fadeIn(1000).removeClass('hidden');
    $('#conditionFade').fadeIn(1500).removeClass('hidden');
    $('#quantityFade').fadeIn(2000).removeClassa('hidden');
});

//= require turbolinks
