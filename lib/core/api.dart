class WeatherApi {
  final WeatherLocation weatherLocation;
  final WeatherCurrent weatherCurrent;
  final WeatherForecast weatherForecast;
  WeatherApi({
    required this.weatherLocation,
    required this.weatherCurrent,
    required this.weatherForecast,
  });

  factory WeatherApi.fromJson(Map<String, dynamic> json) {
    final weatherlocation = WeatherLocation.fromJson(json['location']);
    final weathercurrent = WeatherCurrent.fromJson(json['current']);
    final weatherforecast = WeatherForecast.fromJson(json['forecast']);

    return WeatherApi(
      weatherLocation: weatherlocation,
      weatherCurrent: weathercurrent,
      weatherForecast: weatherforecast,
    );
  }
}

class WeatherLocation {
  final String name;
  final String country;
  WeatherLocation({
    required this.name,
    required this.country,
  });
  factory WeatherLocation.fromJson(Map<String, dynamic> json) {
    return WeatherLocation(
      name: json['name'],
      country: json['country'],
    );
  }
}

class WeatherCurrent {
  final int humidity;
  final String lastUpdated;
  WeatherCurrent({
    required this.humidity,
    required this.lastUpdated,
  });
  factory WeatherCurrent.fromJson(Map<String, dynamic> json) {
    return WeatherCurrent(
      humidity: json['humidity'],
      lastUpdated: json['last_updated'],
    );
  }
}

class WeatherForecast {
  final List<WeatherForecastDay> forecastday;
  WeatherForecast({
    required this.forecastday,
  });
  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    List forecastlist = json['forecastday'];
    List forlist = <WeatherForecastDay>[];
    forecastlist.forEach(
      (element) {
        forlist.add(WeatherForecastDay.fromJson(element));
      },
    );
    return WeatherForecast(forecastday: List.from(forlist));
  }
}

class WeatherForecastDay {
  final String date;
  WeatherForecastDay({
    required this.date,
  });
  factory WeatherForecastDay.fromJson(Map<String, dynamic> json) {
    return WeatherForecastDay(
      date: json['date'],
    );
  }
}
