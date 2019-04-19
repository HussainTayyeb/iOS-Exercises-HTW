//
//  Circle.swift
//  iOS2-Vorgabe
//
//  Created by Tayyeb Hussain on 29.10.18.
//  Copyright © 2018 Klaus Jung. All rights reserved.
//

import Foundation

class Circle: Glyph {
    var radius: Double {
        return size/2
    }
    override var area: Double {
        return Double.pi * radius*radius
    }
    override var circumference: Double {
        return radius*2
    }
    override func paint() {
        
        DrawHelper.drawCircle(x: super.center.x, y: super.center.y, size: super.size, color: super.color)
        printDescription()
    }
}


