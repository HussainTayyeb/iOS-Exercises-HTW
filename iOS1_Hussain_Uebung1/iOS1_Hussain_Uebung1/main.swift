//
//  main.swift
//  iOS1_Hussain_Uebung1
//
//  Created by Tayyeb Hussain on 15.10.18.
//  Copyright © 2018 Tayyeb Hussain. All rights reserved.
//


import Foundation

func readDouble(input: String) -> Double {  // INPUT als String OUTPUT als Double
    
    let result = Double(input) ?? 0.0 //Wenn konvertierung fehlschlägt benutz statt input die 0.0 "?? => Nil-Coalescing Operator"
    return result
}

print("Realteil eingeben: ")
let realteil = readDouble(input: readLine() ?? "")       // Realanteil als USERINPUT
print("Imaginärteil eingeben: ")
let imagteil = readDouble(input: readLine() ?? "")    // Imaginäranteil als USERINPUT

//1. Konsoleneingabe einer Komplexen zahl
let complex = Complex(real: realteil, imaginaer: imagteil)
complex.printComplex()

//2. Addition der Komplexen Zahl mit (1.2 + 2.4 i)
complex.incrementBy(complex: Complex(real: 1.2, imaginaer : 2.4))
complex.printComplex()

//3. Erhöhung des Realteils um 2.2
complex.incrementBy(real: 2.2)
complex.printComplex()

//4. Erhöhung des ImaginärTeils um 0.6
complex.incrementBy(imag: 0.6)
complex.printComplex()

//5. Multiplizierung mit (0.5+ 1.0 i)
complex.multiplyBy(complex: Complex(real: 0.5, imaginaer: 1.0))
complex.printComplex()

//6. Rotation um den Winkel pi(double.pi) pi (3.1415927)
complex.rotateBy(winkel: (Double.pi))
complex.printComplex()

//7. Berechnen Sie mit plus die Summe aus Ihrem Ergebnis und der Zahl (0.2 + 0.9 i).
complex.plus(complex: Complex(real: 0.2, imaginaer: 0.9))
complex.printComplex()
