library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {

  //
  // Dart2js
  //
  final paths = ['dom_hello_world', 'new_web_app', 'print_hello_world']
      .map((d) => "web/$d.dart")
      .toList();

  addTask('dart2js', createDartCompilerTask(paths, minify: true));


  runHop(args);
}

