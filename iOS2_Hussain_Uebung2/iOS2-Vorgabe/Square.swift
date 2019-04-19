//
//  Square.swift
//  iOS2-Vorgabe
//
//  Created by Tayyeb Hussain on 29.10.18.
//  Copyright © 2018 Klaus Jung. All rights reserved.
//

import Foundation
class Square: Glyph {
    
    override var area: Double {
        get {
            return super.size * super.size
        }
    }
    override var circumference: Double {
        get {
            return size*4
        }
    }
    override func paint() {
        DrawHelper.drawSquare(x: super.center.x, y: super.center.y, size: super.size, color: super.color)
        printDescription()
    }
}
