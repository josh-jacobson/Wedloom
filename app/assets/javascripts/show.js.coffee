$(document).ready ->
    $('#slider').slider
        range: 'min',
        min: 50,
        max: 300,
        value: 150,
        slide: (event, ui) ->
            $('#amount').html(ui.value)
            slid = parseInt($('#amount').html())
            
            # TODO: Complete hack, brain not working. Make estprice into a class and iterate through

            $('#estprice1').text(baseEst1 * slid / randomSmoother)
            $('#estprice2').text(baseEst2 * slid / randomSmoother)
            $('#estprice3').text(baseEst3 * slid / randomSmoother)
            $('#estprice4').text(baseEst4 * slid / randomSmoother)
            $('#estprice5').text(baseEst5 * slid / randomSmoother)
            $('#estprice6').text(baseEst6 * slid / randomSmoother)
            $('#estprice7').text(baseEst7 * slid / randomSmoother)
            $('#estprice8').text(baseEst8 * slid / randomSmoother)

            venue = layer.select('rect')
            venue.attr('width', baseEst2 * slid / randomSmoother)
                .transition()
                .delay( (d, i) -> i * 10 )
            svg.attr('width', 600 / slid)
                #.attr('x', (d) -> y(d.y0 + d.y))
                #.attr('width', (d) -> y(d.y0) - y(d.y0 + d.y))
        
    baseEst1 = parseInt($('#estprice1').text().replace(/,/g, ''))
    baseEst2 = parseInt($('#estprice2').text().replace(/,/g, ''))
    baseEst3 = parseInt($('#estprice3').text().replace(/,/g, ''))
    baseEst4 = parseInt($('#estprice4').text().replace(/,/g, ''))
    baseEst5 = parseInt($('#estprice5').text().replace(/,/g, ''))
    baseEst6 = parseInt($('#estprice6').text().replace(/,/g, ''))
    baseEst7 = parseInt($('#estprice7').text().replace(/,/g, ''))
    baseEst8 = parseInt($('#estprice8').text().replace(/,/g, ''))

    randomSmoother = 1000

    $('#estprice1').text(baseEst1 * 150 / randomSmoother) #Adding default num of guests divided by some random smoother
    $('#estprice2').text(baseEst2 * 150 / randomSmoother)
    $('#estprice3').text(baseEst3 * 150 / randomSmoother)
    $('#estprice4').text(baseEst4 * 150 / randomSmoother)
    $('#estprice5').text(baseEst5 * 150 / randomSmoother)
    $('#estprice6').text(baseEst6 * 150 / randomSmoother)
    $('#estprice7').text(baseEst7 * 150 / randomSmoother)
    $('#estprice8').text(baseEst8 * 150 / randomSmoother)

    $('#amount').html( $('#slider').slider('value'))



    #---------------- d3 -----------------#

    stockdata = [
        [{'x': 0, 'y': baseEst2 * 0.25}]
        [{'x': 0, 'y': baseEst2 * 0.4}]
        [{'x': 0, 'y': baseEst2 * 0.55}]
        [{'x': 0, 'y': baseEst2 * 0.6}]
        [{'x': 0, 'y': baseEst2 * 0.75}]
        [{'x': 0, 'y': baseEst2}]
    ]
    n = 6  # Num of Stacks
    m = 1  # Num of Bars

    stack = d3.layout.stack()
    layers = stack(d3.range(n).map( (d) -> stockdata[d]))
    yStackMax = d3.max(layers, (layer) -> 
        d3.max(layer, (d) -> 
            d.y0 + d.y))

    margin = 
        top: 40
        right: 10
        bottom: 20
        left: 10
    width = 600 - margin.left - margin.right
    height = 50 - margin.top - margin.bottom

    x = d3.scale.ordinal()
        .domain(d3.range(m))
        .rangeRoundBands([0, height], .08)
        
    y = d3.scale.linear()
        .domain([0, yStackMax])
        .range([width, 0])
        
    color = d3.scale.category10()
        .domain([0, n - 1])
        #.range(['#aad', '#556'])

    svg = d3.select('svg')
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append('g')
            .attr('transform', 'translate(' + margin.left + ',' + margin.top + ')')
    layer = svg.selectAll('.layer')
        .data(layers)
        .enter().append('g')
            .attr('class', 'layer')
            .style('fill', (d, i) -> color(i))
            
    rect = layer.selectAll('rect')
        .data( (d) -> d)
        .enter().append('rect')
            .attr('x', (d) -> x(d.x))
            .attr('y', height)
            .attr('height', x.rangeBand())
            .attr('width', 0)

    rect.transition()
        .delay( (d, i) -> i * 10 )
        .attr('x', (d) -> y(d.y0 + d.y))
        .attr('width', (d) -> y(d.y0) - y(d.y0 + d.y))