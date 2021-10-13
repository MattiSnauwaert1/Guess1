let myChart = document.getElementById('myChart').getContext('2d');
    
        let massPopChart = new Chart(myChart, {
            type : 'bar', //type chart
            data : {
              labels:['Jupiler', 'Stella Artois', 'Karmeliet', 'Bavik', 'Duvel'],
              datasets:[{
                label : 'Drinks',
                data : [
                  500,
                  482,
                  146,
                  400,
                  250
                ]
              }]
            },
            options : {}
        });