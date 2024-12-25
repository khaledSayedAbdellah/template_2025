
class ServerModel{
  final bool serverIsSecured;
  final String host;
  final int? port;
  final String? apiPrefix;

  ServerModel({required this.serverIsSecured, this.port, required this.host, this.apiPrefix});


  String get baseServer => "http${serverIsSecured ? "s" : ""}://$host";
  String get baseUrl => Uri(
    scheme: "http${serverIsSecured ? "s" : ""}",
    host: host,
    port: port,
    path: apiPrefix??"",
  ).toString();
}