import 'package:flutter/material.dart';

// observer pattern ???
class CartModel extends ChangeNotifier{
  int noodlesoup = 0;
  int festival = 0;
  int tour = 0;

  void addNoodleSuppe() {
    noodlesoup++;
    // inform all listeners
    notifyListeners();
  }

  void removeNoodleSuppe() {
    if (noodlesoup > 0) {
      noodlesoup--;
    }
    // inform all listeners
    notifyListeners();
  }

  void addFestival() {
    festival++;
    // inform all listeners
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
    }
    // inform all listeners
    notifyListeners();
  }

  void addTour() {
    tour++;
    // inform all listeners
    notifyListeners();
  }

  void removeTour() {
    if (tour > 0) {
      tour--;
    }
    // inform all listeners
    notifyListeners();
  }

  void main() {

  }
}