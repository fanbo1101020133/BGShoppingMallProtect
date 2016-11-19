//
//  CommonTools.swift
//  ShoppingMallProtect
//
//  Created by 慧流 on 16/11/14.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit



extension UIImage{
    static func reSizeImage(image:UIImage, reSize:CGSize) -> UIImage{
        if UIScreen.main.responds(to: #selector(NSDecimalNumberBehaviors.scale)) == true && UIScreen.main.scale == 3.00 {
            UIGraphicsBeginImageContextWithOptions(CGSize(width: reSize.width, height:reSize.height), false, 3.00)
                image.draw(in: CGRect(x:0, y:0, width: reSize.width, height:reSize.height))
                let reSizeImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext();
                return reSizeImage!
            }else if UIScreen.main.responds(to: #selector(NSDecimalNumberBehaviors.scale)) == true && UIScreen.main.scale == 2.00{
                UIGraphicsBeginImageContextWithOptions(CGSize(width: reSize.width, height:reSize.height), false, 2.00)
                image.draw(in: CGRect(x:0, y:0, width: reSize.width, height:reSize.height))
                let reSizeImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext();
                return reSizeImage!
        
        }else{
                UIGraphicsBeginImageContextWithOptions(CGSize(width: reSize.width, height:reSize.height), false, 1.00)
                image.draw(in: CGRect(x:0, y:0, width: reSize.width, height:reSize.height))
                let reSizeImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext();
                return reSizeImage!
        
        }

    }
}






























