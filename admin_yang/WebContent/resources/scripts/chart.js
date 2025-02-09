'use strict';

var charts = function () {

  var data = [],
    totalPoints = 300,
    updateInterval = 30,
    plot,
    previousPoint = null;

  var categoryData = [['January', 10], ['February', 8], ['March', 4], ['April', 13], ['May', 17], ['June', 9], ['July', 4], ['August', 9]];

  var browserData = [
    {
      label: 'IE',
      data: 15,
      color: '#848ca1'
        },
    {
      label: 'Safari',
      data: 14,
      color: '#767f96'
        },
    {
      label: 'Chrome',
      data: 34,
      color: '#697289'
        },
    {
      label: 'Opera',
      data: 13,
      color: '#5e667a'
        },
    {
      label: 'Firefox',
      data: 24,
      color: '#535a6c'
        }
    ];

  var visits = [
            [0, 5],
            [1, 5],
            [2, 13],
            [3, 16],
            [4, 15],
            [5, 16],
            [6, 14],
            [7, 5],
            [8, 5],
            [9, 15],
            [10, 17],
            [11, 16],
            [12, 14],
            [13, 16],
            [14, 8],
            [15, 6],
            [16, 17]
            ];


  var visitors = [
            [0, 4],
            [1, 4],
            [2, 12],
            [3, 13],
            [4, 11],
            [5, 12],
            [6, 10],
            [7, 6],
            [8, 4],
            [9, 11],
            [10, 14],
            [11, 11],
            [12, 12],
            [13, 13],
            [14, 5],
            [15, 4],
            [16, 12]
            ];

  var plotdata = [{
    data: visits,
    color: '#1F9FD4'
            }, {
    data: visitors,
    color: '#28d8b3'
            }];

  var barData = [
    {
      data: [[1391761856000, 8], [1394181056000, 4], [1396859456000, 2], [1399451456000, 2], [1402129856000, 5]],
      bars: {
        show: true,
        barWidth: 7 * 24 * 60 * 60 * 1000,
        fill: true,
        lineWidth: 0,
        order: 1,
        fillColor: '#FF604F'
      },
      color: '#FF604F'
        },
    {
      data: [[1391761856000, 5], [1394181056000, 3], [1396859456000, 1], [1399451456000, 7], [1402129856000, 3]],
      bars: {
        show: true,
        barWidth: 7 * 24 * 60 * 60 * 1000,
        fill: true,
        lineWidth: 0,
        order: 2,
        fillColor: '#FFB244'
      },
      color: '#FFB244'
        },
    {
      data: [[1391761856000, 3], [1394181056000, 6], [1396859456000, 4], [1399451456000, 4], [1402129856000, 4]],
      bars: {
        show: true,
        barWidth: 7 * 24 * 60 * 60 * 1000,
        fill: true,
        lineWidth: 0,
        order: 3,
        fillColor: '#28d8b3'
      },
      color: '#28d8b3'
        }
    ];

  var sparkData = {
    one: [8, 4, 3, 8, 7, 1, 6, 1, 3],
    two: [5, 5, 7, 1, 3, 5, 1, 7, 6, 3, 8, 7, 8, 1, 7, 8, 2, 6, 9, 5, 2, 9, 7, 5, 5, 9],
    three: [4, 6, 7, 1, 4, 5, 7, 9, 6, 5, 3, 7, 1, 2, 8, 7, 3, 8, 9, 2, 1, 7, 4, 9, 1, 7],
    pie: [35, 15, 50]
  };

  var chartData = [
    {
      value: Math.random(),
      color: '#D97041'
      },
    {
      value: Math.random(),
      color: '#C7604C'
      },
    {
      value: Math.random(),
      color: '#21323D'
      },
    {
      value: Math.random(),
      color: '#9D9B7F'
      },
    {
      value: Math.random(),
      color: '#7D4F6D'
      },
    {
      value: Math.random(),
      color: '#584A5E'
      }
    ];

  var tax_data = [{
    'period': '2011 Q3',
    'licensed': 3407,
    'sorned': 660
            }, {
    'period': '2011 Q2',
    'licensed': 3351,
    'sorned': 629
            }, {
    'period': '2011 Q1',
    'licensed': 3269,
    'sorned': 618
            }, {
    'period': '2010 Q4',
    'licensed': 3246,
    'sorned': 661
            }, {
    'period': '2009 Q4',
    'licensed': 3171,
    'sorned': 676
            }, {
    'period': '2008 Q4',
    'licensed': 3155,
    'sorned': 681
            }, {
    'period': '2007 Q4',
    'licensed': 3226,
    'sorned': 620
            }, {
    'period': '2006 Q4',
    'licensed': 3245,
    'sorned': null
            }, {
    'period': '2005 Q4',
    'licensed': 3289,
    'sorned': null
            }];

  function events() {
    $('#line-chart, .realtime').bind('plothover', function (event, pos, item) {
      if (item) {
        if (previousPoint !== item.dataIndex) {
          previousPoint = item.dataIndex;
          $('#tooltip').remove();
          var x = item.datapoint[0],
            y = item.datapoint[1];
          showTooltip(item.pageX, item.pageY, y + ' at ' + x);
        }
      } else {
        $('#tooltip').remove();
        previousPoint = null;
      }
    });
  }

  function getRandomData() {

    if (data.length > 0) {
      data = data.slice(1);
    }

    // Do a random walk

    while (data.length < totalPoints) {

      var prev = data.length > 0 ? data[data.length - 1] : 50,
        y = prev + Math.random() * 10 - 5;

      if (y < 0) {
        y = 0;
      } else if (y > 20) {
        y = 20;
      }

      data.push(y);
    }

    // Zip the generated y values with the x values

    var res = [];
    for (var i = 0; i < data.length; ++i) {
      res.push([i, data[i]]);
    }

    return res;
  }
/*
  function update() {

    plot.setData([getRandomData()]);

    // Since the axes don't change, we don't need to call plot.setupGrid()

    plot.draw();
    setTimeout(update, updateInterval);
  }
*/
  function showTooltip(x, y, contents) {
    $('<div id="tooltip">' + contents + '</div>').css({
      top: y - 10,
      left: x + 20
    }).appendTo('body').fadeIn(200);
  }

  function initFlot() {
    $.plot($('.flot-pie'), browserData, {
      series: {
        pie: {
          show: true
        }
      },
      legend: {
        show: false
      },
      grid: {
        hoverable: true
      },
      stroke: {
        width: 0
      }
    });

    $.plot($('#bar-chart'), barData, {
      grid: {
        hoverable: false,
        clickable: false,
        labelMargin: 8,
        color: '#c2c2c2',
        borderColor: '#f0f0f0',
        borderWidth: 0,
      },
      xaxis: {
        min: (new Date(2014, '00', 1)).getTime(),
        max: (new Date(2014, '06', 18)).getTime(),
        mode: 'time',
        timeformat: '%b',
        tickSize: [1, 'month'],
        monthNames: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        tickLength: 0,
        axisLabel: 'Month',
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 12,
        axisLabelFontFamily: 'Open Sans, Arial, Helvetica, Tahoma, sans-serif',
        axisLabelPadding: 5
      },
      stack: true
    });
/*
    plot = $.plot('.realtime', [getRandomData()], {
      colors: ['#535a6c'],
      lines: {
        lineWidth: 1,
      },
      series: {
        shadowSize: 0
      },
      grid: {
        color: '#c2c2c2',
        borderColor: '#f0f0f0',
        borderWidth: 1,
        hoverable: true
      },
      xaxis: {
        show: false
      },
      yaxis: {
        min: 0,
        max: 20
      }

    });
*/
    $.plot('.category', [categoryData], {
      colors: ['#24ACE5'],
      series: {
        bars: {
          show: true,
          barWidth: 0.5,
          align: 'center',
          fill: 1,
        },
        shadowSize: 0
      },
      grid: {
        color: '#c2c2c2',
        borderColor: '#f0f0f0',
        borderWidth: 1
      },
      xaxis: {
        mode: 'categories',
        tickLength: 0
      }
    });

    $.plot($('#line-chart'), plotdata, {
      series: {
        points: {
          show: true,
          radius: 3
        },
        lines: {
          show: true,
          lineWidth: 1,
        },
        shadowSize: 0
      },
      grid: {
        color: '#c2c2c2',
        borderColor: '#f0f0f0',
        borderWidth: 0,
        hoverable: true
      }
    });
  }

  function initSparkchart() {
    $('.sparkline-ext').sparkline(sparkData.three, {
      type: 'line',
      width: '100%',
      height: '40',
      lineWidth: 1,
      lineColor: '#ddd',
      spotColor: '#f1f4f9',
      fillColor: '',
      spotRadius: '2',
    });

    $('.sparkline-ext').sparkline(sparkData.two, {
      composite: true,
      type: 'line',
      width: '100%',
      lineWidth: 1,
      lineColor: '#ddd',
      spotColor: '#f1f4f9',
      fillColor: '',
      spotRadius: '2',

    });


    $('.sparkpie').sparkline(sparkData.pie, {
      type: 'pie',
      height: '60',
      sliceColors: ['#FF604F', '#FFB244', '#28d8b3']
    });


    $('.sparkline-line-bm').sparkline(sparkData.two, {
      type: 'line',
      width: '100%',
      height: '40',
      lineWidth: 0.5,
      lineColor: '#ccc',
      spotColor: '#ECF0F8',
      fillColor: '',
      spotRadius: '2',
    });

    $('.sparkline-bar-bm').sparkline(sparkData.two, {
      type: 'bar',
      width: '100%',
      height: '40',
      barWidth: 5,
      barSpacing: 4,
      barColor: '#2ecc71'
    });
  }

  function initEastPie() {
    $('.bounce').easyPieChart({
      size: 150,
      lineWidth: 9,
      barColor: '#17c3e5',
      trackColor: '#F3F5F8',
      lineCap: 'butt',
      easing: 'easeOutBounce',
      onStep: function (from, to, percent) {
        $(this.el).find('.percent').text(Math.round(percent));
      }
    });

    $('.visits').easyPieChart({
      size: 150,
      lineWidth: 20,
      barColor: '#2dcb73',
      trackColor: false,
      lineCap: 'round',
      easing: 'easeOutBounce',
      onStep: function (from, to, percent) {
        $(this.el).find('.percent').text(Math.round(percent));
      }
    });

    $('.total').easyPieChart({
      size: 150,
      lineWidth: 12,
      barColor: '#FFB244',
      trackColor: '#F3F5F8',
      lineCap: 'square',
      easing: 'easeOutBounce',
      scaleColor: false,
      onStep: function (from, to, percent) {
        $(this.el).find('.percent').text(Math.round(percent));
      }
    });

    $('.piechart').each(function () {
      var canvas = $(this).find('canvas');
      $(this).css({
        'width': canvas.width(),
        'height': canvas.height()
      });
    });
  }

  function initMorris() {
    Morris.Line({
      element: 'hero-graph',
      data: tax_data,
      xkey: 'period',
      ykeys: ['licensed', 'sorned'],
      labels: ['Licensed', 'Off the road'],
      lineColors: ['#20aae5', '#bdc3c7'],
      resize: true,
    });

    Morris.Donut({
      element: 'hero-donut',
      data: [{
        label: 'Jam',
        value: 25
                }, {
        label: 'Frosted',
        value: 40
                }, {
        label: 'Custard',
        value: 25
                }, {
        label: 'Sugar',
        value: 10
                }],
      colors: ['#20aae5'],
      formatter: function (y) {
        return y + '%';
      }
    });

    Morris.Area({
      element: 'hero-area',
      data: [{
        period: '2010 Q1',
        iphone: 2666,
        ipad: null,
        itouch: 2647
                }, {
        period: '2010 Q2',
        iphone: 2778,
        ipad: 2294,
        itouch: 2441
                }, {
        period: '2010 Q3',
        iphone: 4912,
        ipad: 1969,
        itouch: 2501
                }, {
        period: '2010 Q4',
        iphone: 3767,
        ipad: 3597,
        itouch: 5689
                }, {
        period: '2011 Q1',
        iphone: 6810,
        ipad: 1914,
        itouch: 2293
                }, {
        period: '2011 Q2',
        iphone: 5670,
        ipad: 4293,
        itouch: 1881
                }, {
        period: '2011 Q3',
        iphone: 4820,
        ipad: 3795,
        itouch: 1588
                }, {
        period: '2011 Q4',
        iphone: 15073,
        ipad: 5967,
        itouch: 5175
                }, {
        period: '2012 Q1',
        iphone: 10687,
        ipad: 4460,
        itouch: 2028
                }, {
        period: '2012 Q2',
        iphone: 8432,
        ipad: 5713,
        itouch: 1791
                }],
      xkey: 'period',
      ykeys: ['iphone', 'ipad', 'itouch'],
      labels: ['iPhone', 'iPad', 'iPod Touch'],
      pointSize: 2,
      resize: true,
      hideHover: 'auto',
      lineColors: ['#20aae5', '#5cb85c', '#FF604F']
    });

    Morris.Bar({
      element: 'hero-bar',
      data: [{
        device: 'iPhone',
        geekbench: 136
            }, {
        device: 'iPhone 3G',
        geekbench: 137
            }, {
        device: 'iPhone 3GS',
        geekbench: 275
            }, {
        device: 'iPhone 4',
        geekbench: 380
            }, {
        device: 'iPhone 4S',
        geekbench: 655
            }, {
        device: 'iPhone 5',
        geekbench: 1571
            }],
      xkey: 'device',
      ykeys: ['geekbench'],
      labels: ['Geekbench'],
      barRatio: 0.4,
      xLabelAngle: 35,
      hideHover: 'auto',
      resize: true,
      barColors: ['#20aae5']
    });
  }

  function initChartJs() {
    var ctx = $('#plot-area').get(0).getContext('2d');

    var myPolarArea = new Chart(ctx).PolarArea(chartData);

    var radarChartData = {
      labels: ['Eating', 'Drinking', 'Sleeping', 'Designing', 'Coding', 'Partying', 'Running'],
      datasets: [
        {
          fillColor: 'rgba(220,220,220,0.5)',
          strokeColor: 'rgba(220,220,220,1)',
          pointColor: 'rgba(220,220,220,1)',
          pointStrokeColor: '#fff',
          data: [65, 59, 90, 81, 56, 55, 40]
        },
        {
          fillColor: 'rgba(151,187,205,0.5)',
          strokeColor: 'rgba(151,187,205,1)',
          pointColor: 'rgba(151,187,205,1)',
          pointStrokeColor: '#fff',
          data: [28, 48, 40, 19, 96, 27, 100]
        }
      ]
    };

    var ptx = $('#radar').get(0).getContext('2d');

    var myRadar = new Chart(ptx).Radar(radarChartData, {
      scaleShowLabels: false,
      pointLabelFontSize: 10
    });
  }

  return {
    init: function () {
      events();
      initFlot();
      initSparkchart();
      initEastPie();
      initMorris();
      initChartJs();
      update();
    }
  };
}();

$(function () {
  charts.init();
});
