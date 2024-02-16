/// You’ve declared list1 with var, list2 with final and list3 with const.
/// What’s the difference between these keywords? Will the last two lines compile?
///
void main() {
  List<String> list1 = ['I', '💙', 'Flutter'];

  final list2 = list1;
  list2[2] = 'Dart'; // Will this line compile?

  // const list3 = list1; // Will this line compile?
}



/// solved
/// 1 . list2 = ['I', '💙', 'Dart']
/// 2 . can't compile the code ->  because the value of list1 isn’t assigned until runtime
