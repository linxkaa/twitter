abstract class Env {
  String get baseUrl;
}

class TwitterEnv {
  final String name;
  const TwitterEnv(this.name);
  static const main = 'main';
}
