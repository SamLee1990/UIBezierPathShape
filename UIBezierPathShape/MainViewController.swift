//
//  MainViewController.swift
//  UIBezierPathShape
//
//  Created by 李世文 on 2021/1/20.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var supermanImageView: UIImageView!
    @IBOutlet weak var wonderwomanImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //superman view image mask setting
        var path = UIBezierPath()
        let imageWidth = supermanImageView.bounds.width
        let imageHeight = supermanImageView.bounds.height
        path.move(to: CGPoint(x: 0, y: imageHeight * 0.2))
        path.addLine(to: CGPoint(x: imageWidth, y: imageHeight * 0.4))
        path.addLine(to: CGPoint(x: imageWidth, y: imageHeight))
        path.addLine(to: CGPoint(x: 0, y: imageHeight * 0.8))
        path.close()
        
        var shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        supermanImageView.layer.mask = shapeLayer
        
        //wonderwoman view image mask setting
        path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: imageWidth, y: imageHeight * 0.2))
        path.addLine(to: CGPoint(x: imageWidth, y: imageHeight))
        path.addLine(to: CGPoint(x: 0, y: imageWidth * 0.8))
        path.close()
        
        shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        wonderwomanImageView.layer.mask = shapeLayer
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
