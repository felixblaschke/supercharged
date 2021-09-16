import 'package:supercharged_dart/supercharged_dart.dart';

void main(List<String> args) {
  //@start
  'value=1'.allAfter('='); // '1'
  'i like turtles'.allAfter('like'); // ' turtles'
  'i   like cats'.allAfter(RegExp('\\s+')); // 'like cats'
  //@end
}
