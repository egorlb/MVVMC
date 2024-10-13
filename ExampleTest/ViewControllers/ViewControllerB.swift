//
//  ViewControllerB.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class ViewControllerB: UIViewController {
    var viewModel: ViewModelB?
    
    
    @IBAction func navigateToC(_ sender: Any) {
        viewModel?.navigateToScreenC()
    }
}

