//
//  ViewControllerC.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class ViewControllerC: UIViewController {
    var viewModel: ViewModelC?
    
    @IBAction func navigateToD(_ sender: Any) {
        viewModel?.navigateToScreenD()
    }
}

