Highcharts.chart('container', {

    title: {
      text: 'Enfermedades más comunes'
    },
  
    subtitle: {
      text: ''
    },
  
    yAxis: {
      title: {
        text: 'Number of Employees'
      }
    },
  
    xAxis: {
      accessibility: {
        rangeDescription: 'Range: 2010 to 2017'
      }
    },
  
    legend: {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle'
    },
  
    plotOptions: {
      series: {
        label: {
          connectorAllowed: false
        },
        pointStart: 2020
      }
    },
  
    series: [{
      name: 'Brucolosis',
      data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }, {
      name: 'Equinococosis',
      data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    }, {
      name: 'Fiebre Aftosa.',
      data: [11744, 17722, 16005, 2000, 20185, 24377, 32147, 39387]
    }, {
      name: 'Diabete',
      data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
      name: 'Carbunco bacteridiano.',
      data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    }],
  
    responsive: {
      rules: [{
        condition: {
          maxWidth: 500
        },
        chartOptions: {
          legend: {
            layout: 'horizontal',
            align: 'center',
            verticalAlign: 'bottom'
          }
        }
      }]
    }
  
  });