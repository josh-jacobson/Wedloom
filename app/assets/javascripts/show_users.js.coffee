$(document).ready ->
    $('#slider').slider
        range: 'min',
        min: 0,
        max: 500,
        value: 50,
        slide: (event, ui) ->
            $('#amount').val(ui.value)
            slid = parseInt($('#amount').val())
            
            $('#estprice1').text(baseEst1 * slid / 500)
            $('#estprice2').text(baseEst2 * slid / 500)
        
    baseEst1 = parseInt($('#estprice1').text().replace(/,/g, ''))
    baseEst2 = parseInt($('#estprice2').text().replace(/,/g, ''))
    $('#estprice1').text(baseEst1 * 50 / 500)
    $('#estprice2').text(baseEst2 * 50 / 500)
    $('#amount').val( $('#slider').slider('value'))