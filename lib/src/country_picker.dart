import 'package:flutter/material.dart';
import 'package:flutter_country_picker/src/model/model.dart';

import 'data/countries.dart';

class CountryPicker {
  static Future<void> show(
    BuildContext context, {
    required ValueChanged<Country> onSelected,
  }) {
    return showModalBottomSheet(
      context: context,

      isScrollControlled: true,

      builder: (_) {
        return const _CountryPickerView();
      },
    ).then((value) {
      if (value is Country) {
        onSelected(value);
      }
    });
  }
}

class _CountryPickerView extends StatefulWidget {
  const _CountryPickerView();

  @override
  State<_CountryPickerView> createState() => _CountryPickerViewState();
}

class _CountryPickerViewState extends State<_CountryPickerView> {
  late List<Country> filtered;

  @override
  void initState() {
    super.initState();

    filtered = countries;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .75,

        child: Column(
          children: [
            const SizedBox(height: 12),

            const Text(
              'Select Country',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.all(16),

              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search Country',

                  prefixIcon: Icon(Icons.search),
                ),

                onChanged: (value) {
                  setState(() {
                    filtered = countries
                        .where(
                          (country) => country.name.toLowerCase().contains(
                            value.toLowerCase(),
                          ),
                        )
                        .toList();
                  });
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,

                itemBuilder: (context, index) {
                  final country = filtered[index];

                  return ListTile(
                    leading: Text(
                      country.flag,

                      style: const TextStyle(fontSize: 24),
                    ),

                    title: Text(country.name),

                    subtitle: Text(country.code),

                    trailing: Text(country.phoneCode),

                    onTap: () {
                      Navigator.pop(context, country);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
