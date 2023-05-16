
import 'package:flutter/material.dart';
import 'package:flutter_list/City.dart';
import 'package:flutter_list/CityDetails.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting){

    final args = setting.arguments;

    switch(setting.name){

      case './':
        return MaterialPageRoute(builder: (_) =>const MyHomePage(title: 'City Of Dreams'));

      case './details_page':
        if(args is City){
          return MaterialPageRoute(
              builder: (_) => CityDetails(city: args)
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}