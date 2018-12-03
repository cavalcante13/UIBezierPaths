//
//  ViewController.swift
//  UIBezierPath
//
//  Created by Diego Costa on 26/11/18.
//  Copyright © 2018 Diego Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var myView : UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let origin  = CGPoint(x: myView.bounds.origin.x, y: myView.bounds.origin.y)
        let size    = CGSize(width: myView.frame.size.width, height: myView.frame.size.height)
        let shape   = ArrowUpShapeLayer(frame: CGRect(x: origin.x, y: origin.y, width: size.width, height: size.height))
        self.myView.layer.addSublayer(shape)
    }
}

