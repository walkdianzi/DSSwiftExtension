//
//  UIView.swift
//  DSCategories
//
//  Created by dasheng on 16/6/1.
//  Copyright © 2016年 dasheng. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    public var kcenterX: CGFloat{
        
        return self.center.x
    }
    
    
    public func setKcenterX(centerX: CGFloat){
        
        self.center.x = centerX
    }
}
