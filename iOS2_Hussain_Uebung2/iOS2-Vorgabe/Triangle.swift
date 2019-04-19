//
//  Triangle.swift
//  iOS2-Vorgabe
//
//  Created by Tayyeb Hussain on 29.10.18.
//  Copyright © 2018 Klaus Jung. All rights reserved.
//

import Foundation

class Triangle: Glyph {
    override var area: Double {
        return 0.5 * super.size * super.size
    }
    override var circumference: Double {
        return 3.0 * super.size
    }
    override func paint() {
        DrawHelper.drawTriangle(x: super.center.x, y: super.center.y, size: super.size, color: super.color)
        printDescription()
    }
}
