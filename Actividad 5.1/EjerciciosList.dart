import 'dart:io';

void main() {
  while (true) {
    print('=== Menú List ===');
    print('1) Sumar a cada elemento (Ejercicio 1)');
    print('2) Modificar lista de cadenas (Ejercicio 2)');
    print('3) Modificar un valor específico (Ejercicio 3)');
    print('4) Mostrar lista constante (Ejercicio 4)');
    print('5) Imprimir elementos con un ciclo for');
    print('6) Salir');
    print('Selecciona una opción:');

    int option = int.parse(stdin.readLineSync()!);

    if (option == 6) break;

    switch (option) {
      case 1:
        ejercicio1();
        break;
      case 2:
        ejercicio2();
        break;
      case 3:
        ejercicio3();
        break;
      case 4:
        ejercicio4();
        break;
      case 5:
        ejercicioForList();
        break;
      default:
        print('Opción no válida.');
    }
  }
}

void ejercicio1() {
  var list = [1, 2, 3];
  print('Lista inicial: $list');
  print('Ingresa un número para sumar a cada elemento:');
  int number = int.parse(stdin.readLineSync()!);
  list = list.map((e) => e + number).toList();
  print('Lista actualizada: $list');
}

void ejercicio2() {
  var list = ['Car', 'Boat', 'Plane'];
  print('Lista inicial: $list');
  print('Menú: 1) Agregar elemento  2) Eliminar elemento');
  int subOption = int.parse(stdin.readLineSync()!);

  if (subOption == 1) {
    print('Ingresa el elemento a agregar:');
    String element = stdin.readLineSync()!;
    list.add(element);
  } else if (subOption == 2) {
    print('Ingresa el elemento a eliminar:');
    String element = stdin.readLineSync()!;
    list.remove(element);
  } else {
    print('Opción no válida.');
  }
  print('Lista actual: $list');
}

void ejercicio3() {
  var list = [1, 2, 3];
  print('Lista inicial: $list');
  print('Ingresa el índice a modificar (0-${list.length - 1}):');
  int index = int.parse(stdin.readLineSync()!);

  if (index >= 0 && index < list.length) {
    print('Ingresa el nuevo valor:');
    int value = int.parse(stdin.readLineSync()!);
    list[index] = value;
  } else {
    print('Índice inválido.');
  }
  print('Lista actual: $list');
}

void ejercicio4() {
  var constantList = const [1, 2, 3];
  print('Lista constante: $constantList');
  print('Nota: No se puede modificar una lista constante.');
}

void ejercicioForList() {
  var list = [10, 20, 30, 40, 50];
  print('Lista: $list');
  print('Iterando con un ciclo for:');
  for (var element in list) {
    print('Elemento: $element');
  }
}
