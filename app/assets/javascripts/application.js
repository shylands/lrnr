// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require chosen-jquery
//= require bootstrap-tab
//= require bootstrap-dropdown
//= require bootstrap-modal
//= require bookmarks
//= require posts

$(function() {
  $('#search-box').keyup(function (ev) {
    // Could start doing searches and displaying matching posts...
    console.log('term: ' + $('#search-box').val())
  })
  
  $('#search-box').keypress(function(e) {
    if(e.which == 13) {
      var url = '/search/' + $('#search-box').val()
      console.log(url)
      window.location.replace(url);
    }
  })
})