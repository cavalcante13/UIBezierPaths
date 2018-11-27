//
//  ArrowUpShapeLayer.swift
//  UIBezierPath
//
//  Created by Diego Costa on 27/11/18.
//  Copyright © 2018 Diego Costa. All rights reserved.
//

import UIKit

class ArrowUpShapeLayer: CAShapeLayer {
    
    
    init(frame : CGRect) {
        super.init()
        self.frame = frame
        self.prepareLayout()
        self.drawArrowUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        self.fillColor      = UIColor.cyan.cgColor
        self.strokeColor    = UIColor.blue.cgColor
        self.lineWidth      = 2
    }
    
    private func drawArrowUp() {
        //size = 100x190
        
        let center  = CGPoint(x: frame.width / 2, y: frame.height / 2)
        let size    = frame.size
        
        let path : UIBezierPath = UIBezierPath()
        path.move(to: CGPoint(x: center.x, y: 0))
        path.addLine(to: CGPoint(x: size.width, y: 60))
        path.addLine(to: CGPoint(x: size.width - 20, y: 60))
        path.addLine(to: CGPoint(x: size.width - 20, y: size.height))
        path.addLine(to: CGPoint(x: 20, y: size.height))
        path.addLine(to: CGPoint(x: 20, y: 60))
        path.addLine(to: CGPoint(x: 0, y: 60))
        path.addLine(to: CGPoint(x: center.x, y: 0))
        
        self.path = path.cgPath
    }
}
