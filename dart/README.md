# Bluetooth Company Lookup API - Dart/Flutter Client

Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier. This helps identify the manufacturer of Bluetooth devices, beacons, and accessories.

[![pub package](https://img.shields.io/pub/v/apiverve_bluetoothlookup.svg)](https://pub.dev/packages/apiverve_bluetoothlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Bluetooth Company Lookup API](https://apiverve.com/marketplace/bluetoothlookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bluetoothlookup: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_bluetoothlookup/apiverve_bluetoothlookup.dart';

void main() async {
  final client = BluetoothlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'companyid': '76'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "companyId": 76,
    "companyIdHex": "0x004C",
    "found": true,
    "company": "Apple, Inc."
  }
}
```

## API Reference

- **API Home:** [Bluetooth Company Lookup API](https://apiverve.com/marketplace/bluetoothlookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/bluetoothlookup](https://docs.apiverve.com/ref/bluetoothlookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
