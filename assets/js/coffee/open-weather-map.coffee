app = angular.module 'open-weather', []

app.controller 'city1Controller', ['$http', ($http) ->
  this.city = undefined
  stored_city = this
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]

app.controller 'city2Controller', ['$http', ($http) ->
  this.city = undefined
  stored_city = this
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]

app.controller 'city3Controller', ['$http', ($http) ->
  this.city = undefined
  stored_city = this
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]

weatherData =
  name: 'San Fran Florida',
  temperature: '70 degress'

  
getWeather = (service, city, stored_city) ->
  service.get("http://api.openweathermap.org/data/2.5/weather", {params: {q: city, APPID: "dff97a586b33bfeb217ac171a722c96b"}})
  .success( (result) ->
    stored_city.city = result
  )