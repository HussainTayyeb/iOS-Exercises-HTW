//
//  Glyph.swift
//  iOS2-Vorgabe
//
//  Created by Tayyeb Hussain on 29.10.18.
//  Copyright © 2018 Klaus Jung. All rights reserved.
//

import UIKit

import Foundation

class Glyph: Drawing{
    
    var size: Double = 20.0
    
    var color: UIColor = UIColor.black
    
    var center: Point = Point(x:5.0, y:5.0)
    
    var showDescription: Bool = false
    
    func paint() {
        // do nothing
    }
    
    var area: Double {
        return 0.0
    }
    
    var circumference: Double {
        return 0.0
    }
    
    init(size: Double, color: UIColor, center: Point) {
        self.size = size
        self.color = color
        self.center = center
    }
    
    func printDescription() {
        if(showDescription) {
            DrawHelper.drawDescription(area: self.area, circumferrence: self.circumference, atX: self.center.x, y: self.center.y)
        }
    }
    
    
    
}
