// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require turbolinks
//= require materialize-sprockets
//= require jquery.turbolinks
//= require materialize
//= require materialize/extras/nouislider
$(document).ready(function(){
	let postCount = $('.pfile').find("a").length;
	$('.post-count').append(postCount)
	
document.addEventListener("turbolinks:load", function() {
  $('.slider').slider();
  $(".button-collapse").sideNav();
  $('.materialboxed').materialbox();
})

 $('.tooltipped').tooltip({delay: 50});

    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();






  });

















 
