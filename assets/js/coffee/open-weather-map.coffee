app = angular.module 'open-weather', []

app.controller 'city1Controller', ->
  this.city = undefined
  this.getData = (city)->
    $.ajax
      url: "http://api.openweathermap.org/data/2.5/weather"
      dataType: 'json'
      data:
        q: city
        APPID: ""
    .done (data)->
        this.name = city
        this.temperature = data.main.temp
  undefined

app.controller 'city2Controller', ->
  this.weatherData = weatherData
  undefined

app.controller 'city3Controller', ->
  this.weatherData = weatherData
  undefined

weatherData =
  name: 'San Fran Florida',
  temperature: '70 degress'