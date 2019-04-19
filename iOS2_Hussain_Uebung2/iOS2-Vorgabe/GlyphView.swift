//
//  GlyphView.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

enum GlyphType: Int {
    case square = 0, circle, triangle
}

class GlyphView: UIView {
    
    var glyphes = [
        Triangle(size: 50, color: UIColor.blue, center: Point(x: 100, y: 200)),
        Square(size: 50, color: UIColor.black, center: Point(x: 200, y: 300)),
        Circle(size: 50, color: UIColor.red, center: Point(x: 300, y: 200))
    ]
    
    // MARK: - Change Handlers
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        glyphes[index].center = Point(x: x, y: y)
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion
        switch type {
        case .circle:
            glyphes[index] = Circle(size: glyphes[index].size, color: glyphes[index].color, center: glyphes[index].center)
        case .square:
            glyphes[index] = Square(size: glyphes[index].size, color: glyphes[index].color, center: glyphes[index].center)
        case .triangle:
            glyphes[index] = Triangle(size: glyphes[index].size, color: glyphes[index].color, center: glyphes[index].center)
        }
    }
    
    func glyph(index: Int, showDescription show: Bool) {
        glyphes[index].showDescription = show
    }
    
    func glyph(index: Int, changedColor color: UIColor) {
        glyphes[index].color = color
    }
    
    func glyph(index: Int, changedSize size: Double) {
        glyphes[index].size = size
    }
    
   
    
    
    // MARK: - Drawing
    
    override func draw(_ rect: CGRect)
    {
        // Drawing code
        for (index, glyph) in glyphes.enumerated() {
            glyph.paint()
            DrawHelper.drawGlyphNumber(index: index, atX: glyph.center.x, y: glyph.center.y)
        }
        
    }
    
}
