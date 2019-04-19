//
//  ViewController.swift
//  iOS6
//
//  Created by Tayyeb Hussain on 13.01.19.
//  Copyright © 2019 Tayyeb Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer){
   
    guard let recognizerView = recognizer.view
        else{
            return
        }

    let translation = recognizer.translation(in: view)
    recognizerView.center.x += translation.x
    recognizerView.center.y += translation.y
    recognizer.setTranslation(.zero, in: view) //back to zero
}
    
    @IBAction func handlePinch(recognizer:UIPinchGestureRecognizer){
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
            
        }
    }
    
    @IBAction func handleRotate(recognizer:UIRotationGestureRecognizer){
        if let view = recognizer.view {
            view.transform = view.transform.rotated(by: recognizer.rotation)
            recognizer.rotation = 0
        }
    }
  
    
    
//    @IBAction func backToOrigin(recognizer:UITapGestureRecognizer){
//        if let view = recognizer.view{
//        view.transform = CGAffineTransform.identity
//        }
//    }
    
    @IBAction func backToOrigin(recognizer:UITapGestureRecognizer){
        if let view = recognizer.view{
        UIView.animate(withDuration: 1.0, // in seconds
            delay: 0.0,
            options: .curveEaseInOut, // animation curve
            animations: { () -> Void in
                // target values to be changed smoothly
                view.transform = CGAffineTransform.identity
              
        }) { (finished: Bool) -> Void in
            // executed when animation finished
        }

        }

    }
}
