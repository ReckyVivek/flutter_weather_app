// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WeatherModel {
  final double currentTemp;
  final String currrentSky; 
  final String currrentPressure; 
  final String currrentWindSpeed; 
  final String currrentHumidity; 
  WeatherModel({
    required this.currentTemp,
    required this.currrentSky,
    required this.currrentPressure,
    required this.currrentWindSpeed,
    required this.currrentHumidity,
  });


  // final data = snapshot.data!;



  WeatherModel copyWith({
    double? currentTemp,
    String? currrentSky,
    String? currrentPressure,
    String? currrentWindSpeed,
    String? currrentHumidity,
  }) {
    return WeatherModel(
      currentTemp: currentTemp ?? this.currentTemp,
      currrentSky: currrentSky ?? this.currrentSky,
      currrentPressure: currrentPressure ?? this.currrentPressure,
      currrentWindSpeed: currrentWindSpeed ?? this.currrentWindSpeed,
      currrentHumidity: currrentHumidity ?? this.currrentHumidity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentTemp': currentTemp,
      'currrentSky': currrentSky,
      'currrentPressure': currrentPressure,
      'currrentWindSpeed': currrentWindSpeed,
      'currrentHumidity': currrentHumidity,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {

  final currentWeatherData = map['list'][0];

    return WeatherModel(
      currentTemp: (currentWeatherData['main']['temp']) - 273,
      currrentSky: currentWeatherData['weather'][0]['main'],
      currrentPressure: currentWeatherData['main']['pressure'],
      currrentWindSpeed: currentWeatherData['wind']['speed'],
      currrentHumidity: currentWeatherData['main']['humidity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromJson(String source) => WeatherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WeatherModel(currentTemp: $currentTemp, currrentSky: $currrentSky, currrentPressure: $currrentPressure, currrentWindSpeed: $currrentWindSpeed, currrentHumidity: $currrentHumidity)';
  }

  @override
  bool operator ==(covariant WeatherModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.currentTemp == currentTemp &&
      other.currrentSky == currrentSky &&
      other.currrentPressure == currrentPressure &&
      other.currrentWindSpeed == currrentWindSpeed &&
      other.currrentHumidity == currrentHumidity;
  }

  @override
  int get hashCode {
    return currentTemp.hashCode ^
      currrentSky.hashCode ^
      currrentPressure.hashCode ^
      currrentWindSpeed.hashCode ^
      currrentHumidity.hashCode;
  }
}
