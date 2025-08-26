abstract class Animal {
  String _name;

  Animal(this._name);
  void makeSound();
  String getName() => _name;
}

class Lion extends Animal {
  double _maneSize;

  Lion(String name, this._maneSize) : super(name);
  double get maneSize => _maneSize;

  set maneSize(double value) {
    if (value < 0) {
      throw ArgumentError("Mane size cannot be negative.");
    }
    _maneSize = value;
  }

  @override
  void makeSound() {
    print("Sound: Roar!");
  }
}

class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, this._trunkLength) : super(name);

  double get trunkLength => _trunkLength;

  set trunkLength(double value) {
    if (value < 0) {
      throw ArgumentError("Trunk length cannot be negative.");
    }
    _trunkLength = value;
  }

  @override
  void makeSound() {
    print("Sound : Trumpet!");
  }
}

class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int value) {
    if (value < 0) {
      throw ArgumentError("Vocabulary size cannot be negative.");
    }
    _vocabularySize = value;
  }

  @override
  void makeSound() {
    print("Sound: Squawk!");
  }
}

void main() {
  List<Animal> zoo = [
    Lion("Lion-Jack", 1.5),
    Elephant("Elephant-Dumbo", 2.3),
    Parrot("Parrot-Polly", 50),
  ];

  for (var animal in zoo) {
    print("Animal: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} meters");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} meters");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }
    animal.makeSound();
    print("==========================");
  }
}
