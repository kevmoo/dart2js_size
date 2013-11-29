# dart2js: Size Matters

### FYI

 * All file sizes are in bytes
 * Dart VM 1.0.1.3 r30657
 * [Raw data](https://docs.google.com/spreadsheet/pub?key=0AmnQApvDdKKpdE1LS0ozeXVZTkJsNFRmc1NneEtiZ2c&single=true&gid=0&output=html)

## 1: Print "Hello, World!"

### Source
```dart
void main() {
  print("Hello, world!");
}
```

### Stats

 * **Source Size**: 42
 * **Compiler Reported Size**: 1,008,506
 * **JS Line Count**: 230
 * **JS Output Size**: 6,979
 * **JS Output Size, gzip**: 2,045

### Notes

 * No imports.

## 2: DOM "Hello, World!"

### Source
```dart
import 'dart:html';

void main() {
  querySelector('#text').text = 'Hello, world!';
}
```

### Stats

 * **Source Size**: 86
 * **Compiler Reported Size**: 2,695,121
 * **JS Line Count**: 831
 * **JS Output Size**: 28,289
 * **JS Output Size, gzip**: 8,572

### Notes

 * One import
 * Using query method and element property.

## 3: Dart Editor "New web Application"

### Source
```dart
import 'dart:html';

void main() {
  querySelector("#sample_text_id")
    ..text = "Click me!"
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();
}
```

### Stats

 * **Source Size**: 398
 * **Compiler Reported Size**: 2,695,433
 * **JS Line Count**: 3,235
 * **JS Output Size**: 88,833
 * **JS Output Size, gzip**: 25,989

### Notes

 * One import
 * Using query method and element property.

## 4: qr.dart

 * Source:
[Commit at 5465aef](https://github.com/kevmoo/qr.dart/commit/5465aef967c40fe0c7f23485a490baea4e77126b)

## 5: vote.dart

## 6: Pop, Pop, Win!
