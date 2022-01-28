abstract class ServiceProvider {

  late Map<String, dynamic> _providers;

  ServiceProvider() {}

  get getProviders => this._providers;

  void register() {}
  
  bool hasProvider(Type type) {
    return true;
  }
}