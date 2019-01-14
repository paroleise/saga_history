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

//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap-sprockets
//= require activestorage
//= require quill.global
//= require_tree .
//= require popper



//wysiwyg設定
var defaults = {
  theme: 'snow',
  modules: {
    toolbar: [
      [{ 'header': [1, 2, false] }],
      [{ 'color': [] }, { 'background': [] }],
      ['bold', 'italic', 'underline', 'strike'],
      ['blockquote', 'code-block'],
      [{ 'list': 'ordered'}, { 'list': 'bullet' }],
      ['clean'],
      ['link']
    ]
  },
  placeholder: '記事を入力してください',
};
Quilljs.setDefaults(defaults)


$(function(){
  $('#list, .nav-left a, .toInfo').click(function(){
    $('.navigation').css("display","none");
    $.scrollify.disable();
  })

  $('.toArticle').click(function(){
    $('.navigation').css("display","block");
    $.scrollify.enable();
  })
});


//モーダル閉じる
$(document).click(function(event) {
  if(!$(event.target).closest('.figure-modal, .figure-image img').length) {
    $('.modal-wrapper').fadeOut();
  }
  $('.close-modal').click(function(){
    $('.modal-wrapper').fadeOut();
  });
});

$(window).keyup(function(e){
	if(e.keyCode == 27){
    $('.modal-wrapper').fadeOut();
  }
});
