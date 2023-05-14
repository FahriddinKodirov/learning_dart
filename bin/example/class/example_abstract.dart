abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class Hello extends Describable{
  @override
  void describe() {
    // TODO: implement describe
  }

}

//!
