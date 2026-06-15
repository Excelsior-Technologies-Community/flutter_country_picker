import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Country Picker Demo')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            if (selectedCountry != null)
              Column(
                children: [
                  Text(
                    selectedCountry!.flag,

                    style: const TextStyle(fontSize: 60),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    selectedCountry!.name,

                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(selectedCountry!.phoneCode),
                ],
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                CountryPicker.show(
                  context,

                  onSelected: (country) {
                    print(country.name);
                    print(country.phoneCode);

                    setState(() {
                      selectedCountry = country;
                    });
                  },
                );
              },

              child: const Text('Pick Country'),
            ),
          ],
        ),
      ),
    );
  }
}
