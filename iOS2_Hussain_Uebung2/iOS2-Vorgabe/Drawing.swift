//
//  Drawing.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

protocol Drawing {
    var size: Double { get set }
    var color: UIColor { get set }
    var showDescription: Bool { get set }
    
    func paint()
    var area: Double { get }
    var circumference: Double { get }
}
