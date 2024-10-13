//
//  ViewModelC.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

class ViewModelC {
    var coordinator: AppCoordinator?
    
    func navigateToScreenD() {
        coordinator?.showViewControllerD()
    }
}
