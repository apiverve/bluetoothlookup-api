declare module '@apiverve/bluetoothlookup' {
  export interface bluetoothlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface bluetoothlookupResponse {
    status: string;
    error: string | null;
    data: BluetoothCompanyLookupData;
    code?: number;
  }


  interface BluetoothCompanyLookupData {
      companyID:    number;
      companyIDHex: string;
      found:        boolean;
      company:      string;
  }

  export default class bluetoothlookupWrapper {
    constructor(options: bluetoothlookupOptions);

    execute(callback: (error: any, data: bluetoothlookupResponse | null) => void): Promise<bluetoothlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bluetoothlookupResponse | null) => void): Promise<bluetoothlookupResponse>;
    execute(query?: Record<string, any>): Promise<bluetoothlookupResponse>;
  }
}
