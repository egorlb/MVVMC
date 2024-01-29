//
//  Coordinator B.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class CoordinatorB: Coordinator, ViewModelDelegateB {
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController?
    
    func start() {
        let viewControllerB = ViewControllerB.instantiate()
        let viewModelB = ViewModelB()
        viewModelB.coordinator = self
        viewModelB.delegate = self
        viewControllerB.viewModel = viewModelB
        self.rootViewController = viewControllerB
    }
    
    func navigateToScreenC() {
        let coordinatorC = CoordinatorC()
        coordinatorC.start()
        childCoordinators.append(coordinatorC)
        if let screenC = coordinatorC.rootViewController {
            screenC.modalPresentationStyle = .fullScreen
            rootViewController?.present(screenC, animated: true)
        }
    }
}
