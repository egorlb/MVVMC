//
//  CoordinatorD.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class CoordinatorD: Coordinator {
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController?
    
    func start() {
        let viewControllerD = ViewControllerD.instantiate()
        let viewModelD = ViewModelD()
        viewModelD.coordinator = self
        viewControllerD.viewModel = viewModelD
        self.rootViewController = viewControllerD
    }
}
