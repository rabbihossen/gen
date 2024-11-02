// bin/gen.dart
void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    switch (arguments[0]) {
      case 'auth-api-init':
        print("Auth API process done");
        break;
      case 'multi-language':
        print("Multi-language process done");
        break;
      case 'another-command':
        print("Another command executed");
        break;
      default:
        print(
            "Unknown command. Available commands: auth-api-init, multi-language, another-command.");
    }
  } else {
    print(
        "No command provided. Available commands: auth-api-init, multi-language, another-command.");
  }
}
