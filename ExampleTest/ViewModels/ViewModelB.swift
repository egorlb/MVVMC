//
//  ViewModelB.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

class ViewModelB {
    var coordinator: AppCoordinator?
    
    func navigateToScreenC() {
        coordinator?.showViewControllerC()
    }

}
