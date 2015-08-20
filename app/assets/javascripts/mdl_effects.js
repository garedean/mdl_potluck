$(document).on('page:change', function(event) {
  $('.ripple').on('mousedown', function (event) {
    //event.preventDefault();

    var $div = $('<div>'),
        btnOffset = $(this).offset(),
    		xPos = event.pageX - btnOffset.left,
    		yPos = event.pageY - btnOffset.top;

    var $ripple = $div.addClass('ripple-effect');

    $ripple.css("height", $(this).height());
    $ripple.css("width", $(this).height());
    $div
      .css({
        top: yPos - ($ripple.height()/2),
        left: xPos - ($ripple.width()/2),
        background: $(this).data("ripple-color")
      })
      .appendTo($(this));

      window.setTimeout(function(){
        $div.remove();
      }, 1000);
  });
});
