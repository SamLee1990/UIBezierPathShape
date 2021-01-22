//
//  SharpImageView.swift
//  UIBezierPathShape
//
//  Created by 李世文 on 2021/1/20.
//

import UIKit

class SharpImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: bounds.height * 0.2))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.4))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.8))
        path.addLine(to: CGPoint(x: 0, y: bounds.height * 0.6))
        path.close()
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        layer.mask = shapeLayer
    }
    
}
