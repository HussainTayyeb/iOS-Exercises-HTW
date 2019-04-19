//
//  complex.swift
//  iOS1_Hussain_Uebung1
//
//  Created by Tayyeb Hussain on 15.10.18.
//  Copyright © 2018 Tayyeb Hussain. All rights reserved.
//

import Foundation

class Complex {
    
    var re: Double = 0.0
    var im: Double = 0.0
    
    
    init(real: Double, imaginaer: Double){
        self.re = real
        self.im = imaginaer
    }
    
    func printComplex(){
        print("(\(self.re) + \(self.im)i)")
    }
    
    func incrementBy(real: Double)  {   //
        // mit einem Parameter, der eine Gleitkommazahl zum Realteil addiert,
        
        re += real //complex.re
    }
    
    func incrementBy(imag: Double)  {
        // mit einem Parameter, der eine Gleitkommazahl zum Imaginärteil addiert,
        im += imag
    }
    
    func incrementBy(complex: Complex)  {
        // mit einem Parameter, der eine komplexe Zahl vom Typ Complex addiert.
        
        re += complex.re
        im += complex.im
    }
    
    func multiplyBy(complex: Complex) {
        // Methode, die zu sich selbst eine komplexe Zahl vom Typ Complex multipliziert.
        let oldReal = re
        re = re * complex.re - im * complex.im
        im = oldReal * complex.im + im * complex.re
    }
    
    
    func rotateBy(winkel: Double){
        // Methode, die sich selbst um einen als Parameter übergebenen Winkel rotiert.
        
        let rotateComplex = Complex(real: cos(winkel), imaginaer: sin(winkel))
        multiplyBy(complex: rotateComplex)
        
    }
    
    func plus(complex: Complex) {
       
             incrementBy(complex: Complex(real: complex.re, imaginaer: complex.im))
        
        
        
      
    }
    
    
    
}
