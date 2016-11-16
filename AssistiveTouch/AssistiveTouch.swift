//
//  AssistiveTouch.swift
//  AssistiveTouchDemo
//
//  Created by KingCQ on 2016/11/16.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class AssistiveTouch: UIButton {
    var originPoint = CGPoint.zero
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            fatalError("touch can not be nil")
        }
        originPoint = touch.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            fatalError("touch can not be nil")
        }
        let nowPoint = touch.location(in: self)
        let offsetX = nowPoint.x - originPoint.x
        let offsetY = nowPoint.y - originPoint.y
        self.center = CGPoint(x: self.center.x + offsetX, y: self.center.y + offsetY)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
