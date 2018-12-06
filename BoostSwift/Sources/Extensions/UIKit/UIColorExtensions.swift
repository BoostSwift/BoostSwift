//
//  UIColorExtensions.swift
//  BoostSwift
//
//  Created by Xinus Wang on 12/6/2018.
//  Copyright (c) 2018 Xinus Wang. All rights reserved.
//

#if canImport(UIKit)
import UIKit

// MARK: - Initializers
extension UIColor {
    
    /// BoostSwift: Create color from hex value.
    ///
    ///     let color = UIColor(hex: 0xEEEEEE) // alpha=0xFF
    ///     let colorWithAlpha = UIColor(hex: 0xFFEEEEEE)
    ///
    /// - Parameters:
    ///   - hex: hex UInt32 (example: 0xEEEEEE or 0xFFEEEEEE).
    public convenience init(hex: UInt32) {
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        
        var alpha : UInt32 = 0xFF
        if hex > 0xFFFFFF {
            alpha = (hex >> 24) & 0xFF
        }
        
        self.init(red: CGFloat(red)/255.0,
                  green: CGFloat(green)/255.0,
                  blue: CGFloat(blue)/255.0,
                  alpha: CGFloat(alpha)/255.0)
    }
    
    /// BoostSwift: Create color from RGBA array.
    ///
    ///     let color = UIColor(rgba: [10, 20, 30]) // alpha=255
    ///     let colorWithAlpha = UIColor(rgba: [10, 20, 30, 255])
    ///
    /// - Parameters:
    ///   - rgba: RGBA array of UInt8
    public convenience init?(rgba: Array<UInt8>) {
        guard rgba.count == 3 || rgba.count == 4 else {
            return nil
        }
        
        let red = rgba[0], green = rgba[1], blue = rgba[2]
        var alpha: UInt8 = 0xFF
        
        if rgba.count == 4 {
            alpha = rgba[3]
        }
        
        self.init(red: CGFloat(red)/255.0,
                  green: CGFloat(green)/255.0,
                  blue: CGFloat(blue)/255.0,
                  alpha: CGFloat(alpha)/255.0)
    }
}


// MARK: - Color Properties
extension UIColor {
    /// BoostSwift: Get random color with alpha=1.
    public static var random: UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1);
    }
}

// MARK: - BoostSwiftCompatible
extension UIColor: BoostSwiftCompatible { }
extension BoostSwift where Base: UIColor {
    
    /// BoostSwift: Get red.
    public var red: CGFloat {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        base.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return red;
    }
    
    /// BoostSwift: Get green.
    public var green: CGFloat {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        base.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return green;
    }
    
    /// BoostSwift: Get blue.
    public var blue: CGFloat {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        base.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return blue;
    }
    
    /// BoostSwift: Get alpha.
    public var alpha: CGFloat {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        base.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return alpha;
    }
}

#endif
