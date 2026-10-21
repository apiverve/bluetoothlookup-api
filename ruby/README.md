# Bluetooth Company Lookup API - Ruby Gem

Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier. This helps identify the manufacturer of Bluetooth devices, beacons, and accessories.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_bluetoothlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_bluetoothlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_bluetoothlookup'

# Initialize the client
client = APIVerve::Bluetoothlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ companyid: "76" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ companyid: "76" })
  puts response["data"]
rescue APIVerve::Bluetoothlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Bluetoothlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Bluetoothlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bluetoothlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bluetoothlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bluetoothlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
