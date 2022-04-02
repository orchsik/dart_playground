void startedRun() {
  Car myCar = new Car('pink');
  Car namedCar = Car.namedOn();
  Car basicCar = Car.basic('yellow');
  Car initCar = Car.init('rainbow');

  print({
    "myCar": myCar,
    "color": myCar.color,
    "wheels": myCar.wheels,
    "speed": myCar.speed(5),
  });
  print({
    "namedCar": namedCar,
    "color": namedCar.color,
    "wheels": namedCar.wheels,
  });
  print({
    "basicCar": basicCar,
    "color": basicCar.color,
    "wheels": basicCar.wheels,
  });
  print({
    "initCar": initCar,
    "color": initCar.color,
    "wheels": initCar.wheels,
  });
}

class Car {
  String? color;
  int? wheels;

  // Car(String _color) {
  //   this.color = _color;
  // }

  // 생성자의 인자가 필드 속성에 적용.
  Car(this.color, [this.wheels = 4]);

  // named 생성자.
  // 위 생성자가 호출됨.
  Car.basic(String _color) : this(_color, 1);

  Car.namedOn() {
    color = 'red';
    wheels = 8;
  }

  // 언제 사용할까?
  // color가 final이면 바디에서 color에 값을 줄 수 없다. 그런 경우 사용. Car initCar = Car.init('rainbow');
  Car.init(String _color) : color = _color;

  int speed(int accel) {
    return accel * 2;
  }
}
