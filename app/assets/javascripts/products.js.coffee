# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
        $('#products').dataTable( {
																		"bJQueryUI": true,
																		"aLengthMenu": [[10, 15, 20, 25, 50, -1], [10, 15, 20, 25, 50, "All"]]
																	} );
