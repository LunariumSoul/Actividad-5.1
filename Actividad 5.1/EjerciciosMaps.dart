import 'dart:io';

void main() {
  while (true) {
    print('=== Menú Map ===');
    print('1) Agregar/Actualizar clave (Ejercicio 1)');
    print('2) Buscar clave (Ejercicio 2)');
    print('3) Eliminar clave (Ejercicio 3)');
    print('4) Mostrar mapa constante (Ejercicio 7)');
    print('5) Iterar sobre mapa con ciclo for');
    print('6) Salir');
    print('Selecciona una opción:');

    int option = int.parse(stdin.readLineSync()!);

    if (option == 6) break;

    switch (option) {
      case 1:
        ejercicio1Map();
        break;
      case 2:
        ejercicio2Map();
        break;
      case 3:
        ejercicio3Map();
        break;
      case 4:
        ejercicio4Map();
        break;
      case 5:
        ejercicioForMap();
        break;
      default:
        print('Opción no válida.');
    }
  }
}

void ejercicio1Map() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print('Mapa inicial: $gifts');
  print('Ingresa la clave:');
  String key = stdin.readLineSync()!;
  print('Ingresa el valor:');
  String value = stdin.readLineSync()!;
  gifts[key] = value;
  print('Mapa actualizado: $gifts');
}

void ejercicio2Map() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print('Ingresa la clave a buscar:');
  String key = stdin.readLineSync()!;
  print(gifts.containsKey(key)
      ? 'Valor asociado: ${gifts[key]}'
      : 'Clave no encontrada.');
}

void ejercicio3Map() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print('Mapa inicial: $gifts');
  print('Ingresa la clave a eliminar:');
  String key = stdin.readLineSync()!;
  gifts.remove(key);
  print('Mapa actualizado: $gifts');
}

void ejercicio4Map() {
  final constantMap = const {2: 'helium', 10: 'neon', 18: 'argon'};
  print('Mapa constante: $constantMap');
  print('Nota: No se puede modificar un mapa constante.');
}

void ejercicioForMap() {
  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};
  print('Mapa: $nobleGases');
  print('Iterando con un ciclo for:');
  for (var entry in nobleGases.entries) {
    print('Clave: ${entry.key}, Valor: ${entry.value}');
  }
}
