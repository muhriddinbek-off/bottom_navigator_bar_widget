import 'package:flutter/material.dart';
import 'package:myapp/modal/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ModalApi modalApi = ModalApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rest Api Call'),
      ),
      body: FutureBuilder(
          future: modalApi.getWeather(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      snapshot.data!.weatherLocation.name,
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      '${snapshot.data!.weatherCurrent.lastUpdated} ',
                      style: const TextStyle(fontSize: 30),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.weatherForecast.forecastday.length,
                        itemBuilder: (context, index) {
                          return Text(
                            '${snapshot.data!.weatherForecast.forecastday[index].date} ',
                            style: const TextStyle(fontSize: 30),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: Text('eror'));
            }
          }),
    );
  }
}
