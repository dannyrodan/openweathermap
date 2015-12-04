app = angular.module 'open-weather', []

app.controller 'city1Controller', ['$http', ($http) ->
  this.city = undefined
  this.current_city = undefined
  stored_city = this
  
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]

app.controller 'city2Controller', ['$http', ($http) ->
  this.city = undefined
  this.current_city = undefined
  stored_city = this
  
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]

app.controller 'city3Controller', ['$http', ($http) ->
  this.city = undefined
  this.current_city = undefined
  stored_city = this
  
  this.getData = (city) ->
    getWeather($http, city, stored_city)
  undefined
]
  
getWeather = (service, city, stored_city) ->
  service.get("http://api.openweathermap.org/data/2.5/weather", {params: {q: city, APPID: "dff97a586b33bfeb217ac171a722c96b", units: 'imperial'}})
  .success( (result) ->
    stored_city.current_city = result
    stored_city.city = undefined
  )
  .then( ->
    console.log "Information found for #{city}"
  )
    