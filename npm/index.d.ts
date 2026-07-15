declare module '@apiverve/bluetoothlookup' {
  export interface bluetoothlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface bluetoothlookupResponse {
    status: string;
    error: string | null;
    data: BluetoothCompanyLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BluetoothCompanyLookupData {
      companyID:    number | null;
      companyIDHex: null | string;
      found:        boolean | null;
      company:      null | string;
  }

  export default class bluetoothlookupWrapper {
    constructor(options: bluetoothlookupOptions);

    execute(callback: (error: any, data: bluetoothlookupResponse | null) => void): Promise<bluetoothlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bluetoothlookupResponse | null) => void): Promise<bluetoothlookupResponse>;
    execute(query?: Record<string, any>): Promise<bluetoothlookupResponse>;
  }
}
