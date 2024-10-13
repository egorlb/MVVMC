//
//  ViewModelA.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

class ViewModelA {
    var coordinator: AppCoordinator?
    
    func navigateToScreenB() {
        coordinator?.showViewControllerB()
    }
}
