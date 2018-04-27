// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function swapImage() {

  var imageDisplayed = document.getElementById('display-image');

  if (imageDisplayed.src.match("http://3.bp.blogspot.com/-z6xWC_kQBmQ/UZ0rv2jPPoI/AAAAAAAAAAA/lyiSNkQw9M4/s400/summernight8-backalleys-cho.jpg")) {
    imageDisplayed.src = "https://nationalpostcom.files.wordpress.com/2012/05/cho.gif";
  }
  else {
    imageDisplayed.src = "http://3.bp.blogspot.com/-z6xWC_kQBmQ/UZ0rv2jPPoI/AAAAAAAAAAA/lyiSNkQw9M4/s400/summernight8-backalleys-cho.jpg";
  }
}
