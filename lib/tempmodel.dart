class tempmodel {

final double maxtemp_c;
final double mintemp_c;
final double temp;
final String con;
final String date;

final String name;
final String ? image;


tempmodel({required this.name,required this.image,required this.maxtemp_c,required this.mintemp_c ,required this.temp,required this.date,required this.con,});

factory tempmodel.fromjson(json){
return tempmodel(name: json['location']['name']
  ,maxtemp_c: json['forecast']['forecastday'][0]['day']['maxtemp_c']
, mintemp_c: json['forecast']['forecastday'][0]['day']['mintemp_c']
, temp: json['forecast']['forecastday'][0]['day']['avgtemp_c']
, date: json['current']['last_updated']
, con:  json['current']['condition']['text'],
image: 'https:${json['current']['condition']['icon']}'
);



}

}