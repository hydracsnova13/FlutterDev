// Class definition
class Car {
  // Properties
  String make;
  String model;
  int year;

  // Constructor
  Car(this.make, this.model, this.year);

  // Method
  void showDetails() {
    print('Car: $make $model, Year: $year');
  }
}

void main() {
  // Creating an object of the Car class
  Car myCar = Car('Toyota', 'Corolla', 2020);

  // Accessing method
  myCar.showDetails();
}
