void main() {
  List<Vehicle> vehicles = [Car(50, 15), Truck(100, 500)];
  List<double> distances = [100, 2000];

  for (var v in vehicles) {
    double needed = v.calculateFuel(distances[vehicles.indexOf(v)]);
    print("Fuel needed: ${needed.toStringAsFixed(2)}");
    if (needed > v.fuelCapacity) print("Cannot complete route!");
  }
}

class Vehicle {
  double _fuelCapacity = 0;

  Vehicle(double fuel) {
    if (fuel <= 0) print("Error: Invalid Fuel");
    else _fuelCapacity = fuel;
  }

  double get fuelCapacity => _fuelCapacity;

  double calculateFuel(double distance) => distance * 0.1;
}

class Car extends Vehicle {
  double _efficiency = 0;

  Car(double fuel, double eff) : super(fuel) {
    if (eff > 0) _efficiency = eff;
  }

  @override
  double calculateFuel(double distance) => distance / _efficiency;
}

class Truck extends Vehicle {
  double _load = 0;

  Truck(double fuel, double load) : super(fuel) {
    if (load > 0) _load = load;
  }

  @override
  double calculateFuel(double distance) => (distance * 0.2) + (_load * 0.05);
}