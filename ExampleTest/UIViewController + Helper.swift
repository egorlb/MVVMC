//
//  UIViewController + Helper.swift
//  ios-mvvm+c
//
//  Created by Egor Laba on 24.01.24.
//

import UIKit

extension UIViewController {
    static func instantiate() -> Self  {
        let storyboardName = String(describing: self)
        let nib = UINib(nibName: storyboardName, bundle: .main)
        return nib.instantiate(withOwner: self, options: nil)[0] as! Self
    }
}
