import Foundation

/*
 * EJERCICIO:
 * - Crea ejemplos utilizando todos los tipos de operadores de tu lenguaje:
 *   Aritméticos, lógicos, de comparación, asignación, identidad, pertenencia, bits...
 *   (Ten en cuenta que cada lenguaje puede poseer unos diferentes)
 * - Utilizando las operaciones con operadores que tú quieras, crea ejemplos
 *   que representen todos los tipos de estructuras de control que existan
 *   en tu lenguaje:
 *   Condicionales, iterativas, excepciones...
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea un programa que imprima por consola todos los números comprendidos
 * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
 *
 * Seguro que al revisar detenidamente las posibilidades has descubierto algo nuevo.
 */


// Operadores aritméticos
let suma = 5 + 3
let resta = 10 - 2
let multiplicacion = 4 * 6
let division = 15 / 3
let modulo = 7 % 2
let potencia = Int(pow(2, 4))

print("Operadores aritméticos:")
print("Suma:", suma)
print("Resta:", resta)
print("Multiplicación:", multiplicacion)
print("División:", division)
print("Módulo:", modulo)
print("Potencia:", potencia)

// Operadores lógicos
let andResultado = true && false
let orResultado = true || false
let notResultado = !true

print("\nOperadores lógicos:")
print("AND:", andResultado)
print("OR:", orResultado)
print("NOT:", notResultado)

// Operadores de comparación
let igual = 5 == 5
let distinto = 5 != 10
let mayor = 10 > 5
let menor = 3 < 8
let mayorOigual = 7 >= 7
let menorOigual = 6 <= 6

print("\nOperadores de comparación:")
print("Igual:", igual)
print("Distinto:", distinto)
print("Mayor:", mayor)
print("Menor:", menor)
print("Mayor o igual:", mayorOigual)
print("Menor o igual:", menorOigual)

// Operadores de asignación
var x = 5
x += 3
x -= 2
x *= 4
x /= 2

print("\nOperadores de asignación:", x)

// Operadores de identidad
let a = [1, 2, 3]
let b = [1, 2, 3]
let identidad = a === b
let noIdentidad = a !== b

print("\nOperadores de identidad:")
print("Identidad:", identidad)
print("No identidad:", noIdentidad)

// Operadores de pertenencia
let lista = [1, 2, 3, 4, 5]
let pertenencia = 3
let noPertenencia = 6
print("\nOperadores de pertenencia:")
print("Pertenencia:", lista.contains(pertenencia))
print("No pertenencia:", !lista.contains(noPertenencia))

// Operadores de bits
let bitwiseAnd = 5 & 3
let bitwiseOr = 5 | 3
let bitwiseXor = 5 ^ 3
let bitwiseNot = ~5
let shiftIzquierda = 5 << 1
let shiftDerecha = 5 >> 1

print("\nOperadores de bits:")
print("AND:", bitwiseAnd)
print("OR:", bitwiseOr)
print("XOR:", bitwiseXor)
print("NOT:", bitwiseNot)
print("Shift izquierda:", shiftIzquierda)
print("Shift derecha:", shiftDerecha)

// Estructuras de control

// Condicionales
if 5 > 3 {
    print("\nCondicionales:")
    print("5 es mayor que 3")
}

// Iterativas
print("\nIterativas:")
for i in 10...55 {
    if i % 2 == 0 && i != 16 && i % 3 != 0 {
        print(i)
    }
}

// Excepciones
print("\nExcepciones:")
do {
    let resultado = try dividir(dividendo: 10, divisor: 0)
    print(resultado)
} catch {
    print("Error: división por cero")
}

func dividir(dividendo: Int, divisor: Int) throws -> Int {
    if divisor == 0 {
        throw CustomError.divisionByZero
    }
    return dividendo / divisor
}

enum CustomError: Error {
    case divisionByZero
}
