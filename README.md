# Flutter Country Picker

A lightweight and customizable country picker for Flutter.

Easily select countries with flags, phone codes, ISO codes, and built-in search support.

---

## Features

✅ Country List

✅ Search Countries

✅ Country Flags

✅ Country Name

✅ Country Phone Code

✅ Country ISO Code

✅ Bottom Sheet Picker

✅ Selection Callback

✅ Lightweight

✅ Easy To Use

---

## Installation

Add the dependency to your `pubspec.yaml`

```yaml
dependencies:
  flutter_country_picker: 
    path: ../
```

Run:

```bash
flutter pub get
```

---

## Import

```dart
import 'package:flutter_country_picker/flutter_country_picker.dart';
```

---

## Basic Usage

```dart
CountryPicker.show(
  context,

  onSelected: (country) {

    print(country.name);

    print(country.phoneCode);
  },
);
```

---

## Example

```dart
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
```

---

## Country Model

```dart
class Country {
  final String name;

  final String code;

  final String phoneCode;

  final String flag;

  const Country({
    required this.name,
    required this.code,
    required this.phoneCode,
    required this.flag,
  });
}
```

---

## Search Support

Built-in search functionality allows users to quickly find countries.

```text
🔍 Search Country
```

Search results update instantly while typing.

---

## Package Structure

```text
lib/
├── flutter_country_picker.dart

└── src/
    ├── country_picker.dart

    ├── models/
    │   └── country.dart

    └── data/
        └── countries.dart
```

---

## Full Example

```dart
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
```

---

## License

MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy

of this software and associated documentation files (the "Software"), to deal

in the Software without restriction, including without limitation the rights

to use, copy, modify, merge, publish, distribute, sublicense, and/or sell

copies of the Software, and to permit persons to whom the Software is

furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all

copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,

OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

SOFTWARE.
 
