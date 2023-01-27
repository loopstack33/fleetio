class ApiURls{

  static String apikey = "9d736c8dda";
  static String authorization = "Token 2115c2fa7bfea254144e6e8b7648aa8ef73bee00";
  static String baseURL = "https://secure.fleetio.com/api/v1";

  static Map<String, String> httpHeaders = {
    'Account-Token': apikey,
    'Authorization': authorization};


/* -------- METHODS -------- */
  static String vehicles = "/vehicles";
}