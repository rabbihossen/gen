import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    switch (arguments[0]) {
      case 'setup-app':
        print("Auth API process done");
        break;
      case 'multi-language':
        print("Multi-language process done");
        break;
      case 'another-command':
        print("Another command executed");
        _executeCurlCommand();
        break;
      default:
        print(
            "Unknown command. Available commands: setup app, multi-language, another-command.");
    }
  } else {
    print(
        "No command provided. Available commands: setup app, multi-language, another-command.");
  }
}

void _executeCurlCommand() async {
  // Execute the curl command
  final process = await Process.start('bash', [
    '-c',
    'curl -sSL https://raw.githubusercontent.com/rabbihossenjoy/gen/main/remove_unused_constants.sh | bash'
  ]);

  // Capture the output
  process.stdout.transform(utf8.decoder).forEach((line) {
    print(line); // Print each line of output
  });

  // Capture errors, if any
  process.stderr.transform(utf8.decoder).forEach((line) {
    print("Error: $line");
  });

  // Wait for the process to exit
  final exitCode = await process.exitCode;
  print('Process exited with code: $exitCode');
}
