import 'dart:io';

void main() {
  while (true) {
    print('=== Menú Set ===');
    print('1) Agregar elementos (Ejercicio 1)');
    print('2) Operaciones con conjunto vacío (Ejercicio 2)');
    print('3) Combinar conjuntos (Ejercicio 3 y 4)');
    print('4) Mostrar conjunto constante (Ejercicio 5)');
    print('5) Iterar conjunto con ciclo for');
    print('6) Salir');
    print('Selecciona una opción:');

    int option = int.parse(stdin.readLineSync()!);

    if (option == 6) break;

    switch (option) {
      case 1:
        ejercicio1Set();
        break;
      case 2:
        ejercicio2Set();
        break;
      case 3:
        ejercicio3Set();
        break;
      case 4:
        ejercicio4Set();
        break;
      case 5:
        ejercicioForSet();
        break;
      default:
        print('Opción no válida.');
    }
  }
}

void ejercicio1Set() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print('Conjunto inicial: $halogens');
  print('Ingresa el elemento a agregar:');
  String element = stdin.readLineSync()!;
  halogens.add(element);
  print('Conjunto actualizado: $halogens');
}

void ejercicio2Set() {
  var names = <String>{};
  print('Conjunto inicial vacío.');
  print('Menú: 1) Agregar elemento  2) Mostrar conjunto');
  int subOption = int.parse(stdin.readLineSync()!);

  if (subOption == 1) {
    print('Ingresa el elemento a agregar:');
    String element = stdin.readLineSync()!;
    names.add(element);
  }
  print('Conjunto actual: $names');
}

void ejercicio3Set() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  print('Conjunto inicial vacío: $elements');
  print('Añadiendo todos los elementos del conjunto halogens...');
  elements.addAll(halogens);
  print('Conjunto actualizado: $elements');
}

void ejercicio4Set() {
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  };
  print('Conjunto constante: $constantSet');
  print('Nota: No se puede modificar un conjunto constante.');
}

void ejercicioForSet() {
  var elements = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print('Conjunto: $elements');
  print('Iterando con un ciclo for:');
  for (var element in elements) {
    print('Elemento: $element');
  }
}
