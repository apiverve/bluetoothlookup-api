# Bluetooth Company Lookup API - PHP Package

Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier. This helps identify the manufacturer of Bluetooth devices, beacons, and accessories.

## Installation

Install via Composer:

```bash
composer require apiverve/bluetoothlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Bluetoothlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['companyid' => '76']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Bluetoothlookup\Client;
use APIVerve\Bluetoothlookup\Exceptions\APIException;
use APIVerve\Bluetoothlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['companyid' => '76']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bluetoothlookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/bluetoothlookup?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/bluetoothlookup?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
