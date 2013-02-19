$(document).ready ->
    $('#slider').slider
        range: 'min',
        min: 0,
        max: 500,
        value: 50,
        slide: (event, ui) ->
            $('#amount').html(ui.value)
            slid = parseInt($('#amount').html())
            
            $('#estprice1').text(baseEst1 * slid / 500)
        
    baseEst1 = parseInt($('#estprice1').text().replace(/,/g, ''))
    $('#estprice1').text(baseEst1 * 50 / 500)
    $('#amount').html( $('#slider').slider('value'))



    #---------------- d3 -----------------#

    stockdata = [
        [{'x': 0, 'y': 1}]
        [{'x': 0, 'y': 0.75}]
        [{'x': 0, 'y': 0.5}]
        [{'x': 0, 'y': 0.25}]
    ]
    n = 4
    m = 1

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
    width = 960 - margin.left - margin.right
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