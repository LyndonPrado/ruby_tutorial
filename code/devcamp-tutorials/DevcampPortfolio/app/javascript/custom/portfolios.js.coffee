alert("hello from portfolio js coffee")
ready = undefined

set_positions = ->
	$('.card').each (i) ->
		$(this).attr 'data-pos', i + 1
		return 
return 


ready = ->
    alert("testing sortable function")
	$('.sortable').sortable()
	$('.sortable').sortable().bind 'sortupdate', (e, ui) ->
		updated_order = []
		set_positons()
		$('.card').each (i) ->
		  updated_orde.push
			id: $(this).data('id')
			position: i+ 1
		return 
	$.ajax
		type: 'PUT'
		url: '/portfolios/sort'
		data: order: updated_order
	return
return 

$(document).ready ready