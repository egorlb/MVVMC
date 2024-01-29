//
//  ViewControllerA.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class ViewControllerA: UIViewController {
    var viewModel: ViewModelA?
    

    @IBAction func navigateToB(_ sender: Any) {
        viewModel?.delegate?.navigateToScreenB()
    }
}

