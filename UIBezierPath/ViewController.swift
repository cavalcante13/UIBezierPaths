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
        
        let size = myView.frame.size
        self.myView.layer.addSublayer(ArrowUpShapeLayer(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height)))
    }
}

