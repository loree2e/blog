# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

###
$( document ).ready(function() {
	$('#myButton').click( function () { console.log('click');$(this).hide(); });
});
###

$( document ).ready () ->
	$( '.show-body').click () -> 
		$.get '/posts.json', (data) ->
			$('.show-body').append data.body
