/// Response models for the Bluetooth Company Lookup API.

/// API Response wrapper.
class BluetoothlookupResponse {
  final String status;
  final dynamic error;
  final BluetoothlookupData? data;

  BluetoothlookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BluetoothlookupResponse.fromJson(Map<String, dynamic> json) => BluetoothlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BluetoothlookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Bluetooth Company Lookup API.

class BluetoothlookupData {
  int? companyId;
  String? companyIdHex;
  bool? found;
  String? company;

  BluetoothlookupData({
    this.companyId,
    this.companyIdHex,
    this.found,
    this.company,
  });

  factory BluetoothlookupData.fromJson(Map<String, dynamic> json) => BluetoothlookupData(
      companyId: json['companyId'],
      companyIdHex: json['companyIdHex'],
      found: json['found'],
      company: json['company'],
    );
}

class BluetoothlookupRequest {
  String companyid;

  BluetoothlookupRequest({
    required this.companyid,
  });

  Map<String, dynamic> toJson() => {
      'companyid': companyid,
    };
}
