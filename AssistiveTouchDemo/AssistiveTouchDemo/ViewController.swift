//
//  ViewController.swift
//  AssistiveTouchDemo
//
//  Created by KingCQ on 2016/11/16.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        let assistiveTouch = AssistiveTouch(frame: CGRect(x: 10, y: 100, width: 56, height: 56))
        assistiveTouch.addTarget(self, action: #selector(tap(sender:)), for: .touchUpInside)
        assistiveTouch.setImage(UIImage(named: "AsstisTouch"), for: .normal)
        view.addSubview(assistiveTouch)
    }
    
    func tap(sender: UIButton) {
        print("\(sender) has been touched", "🌹")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

