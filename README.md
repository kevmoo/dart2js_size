# dart2js: Size Matters

## 1: Print "Hello, World!"

```dart
void main() {
  print("Hello, world!");
}
```

## 2: DOM "Hello, World!"

```dart
import 'dart:html';

void main() {
  querySelector('#text').text = 'Hello, world!';
}
```

## 3: Dart Editor "New web Application"

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

## 4: qr.dart

## 5: vote.dart

## 6: Pop, Pop, Win!
