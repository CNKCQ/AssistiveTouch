//
//  ViewController.swift
//  AssistiveTouchDemo
//
//  Created by KingCQ on 2016/11/16.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gradientLayer: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        createGradientLayer()
        let assistiveTouch = AssistiveTouch(frame: CGRect(x: 10, y: 100, width: 56, height: 56))
        assistiveTouch.addTarget(self, action: #selector(tap(sender:)), for: .touchUpInside)
        assistiveTouch.setImage(UIImage(named: "AsstisTouch"), for: .normal)
        view.addSubview(assistiveTouch)
    }
    
    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        self.view.layer.addSublayer(gradientLayer)
    }
    
    func tap(sender: UIButton) {
        print("\(sender) has been touched", "🌹")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

