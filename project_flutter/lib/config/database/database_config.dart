
class DatabaseConfig{
  DatabaseConfig._();
  static final DatabaseConfig _instance = DatabaseConfig._();
  static DatabaseConfig get instance => _instance;

  String get databasePath => 'database.db';








}