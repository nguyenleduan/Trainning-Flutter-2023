
class NamePageConfig{
  NamePageConfig._();
  static final NamePageConfig _instance = NamePageConfig._();
  static NamePageConfig get instance => _instance;

  final String home = "/";
  final String sql = "sqlite-page";
  final String router = "router-page";
  final String shop = "shop-page";
}