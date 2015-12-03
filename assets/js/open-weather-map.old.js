(function(){
  var app = angular.module('open-weather', []);
  
  app.controller('city1Controller', function(){
    this.weatherData = weatherData;
    
    this.getData = function(city){
      
    };
  });
  
  app.controller('city2Controller', function(){
    this.weatherData = weatherData;
  });
  
  app.controller('city3Controller', function(){
    this.weatherData = weatherData;
  });
})()

var weatherData = {
  name: 'San Fran Florida',
  temperature: '70 degress'
};