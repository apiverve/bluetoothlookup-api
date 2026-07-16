# [Bluetooth Company Lookup API](https://apiverve.com/marketplace/bluetoothlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier. This helps identify the manufacturer of Bluetooth devices, beacons, and accessories.

The Bluetooth Company Lookup API provides a simple, reliable way to integrate bluetooth company lookup functionality into your applications. Built for developers who need production-ready bluetooth company lookup capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/bluetoothlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/bluetoothlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/bluetoothlookup)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.BluetoothCompanyLookup)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-bluetoothlookup/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_bluetoothlookup)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/bluetoothlookup)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_bluetoothlookup)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callBluetoothCompanyLookupAPI() {
    try {
        const params = new URLSearchParams({
            companyid: '76'
        });

        const response = await fetch(`https://api.apiverve.com/v1/bluetoothlookup?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callBluetoothCompanyLookupAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/bluetoothlookup?companyid=76" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/bluetoothlookup
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/bluetoothlookup) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.BluetoothCompanyLookup
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.BluetoothCompanyLookup) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-bluetoothlookup
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-bluetoothlookup/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_bluetoothlookup
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_bluetoothlookup) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/bluetoothlookup
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/bluetoothlookup) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_bluetoothlookup
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_bluetoothlookup) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:bluetoothlookup-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/bluetoothlookup-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Bluetooth Company Lookup API](https://apiverve.com/marketplace/bluetoothlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/bluetoothlookup](https://docs.apiverve.com/ref/bluetoothlookup)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Bluetooth Company Lookup API is commonly used for:

- **Web Applications** - Add bluetooth company lookup features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with bluetooth company lookup capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Bluetooth Company Lookup API:

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

---

## Support & Community

- 🏠 **API Home**: [Bluetooth Company Lookup API](https://apiverve.com/marketplace/bluetoothlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
