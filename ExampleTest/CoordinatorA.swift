//
//  CoordinatorA.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class CoordinatorA: Coordinator, ViewModelDelegateA {
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController?
    
    func start() {
        let viewControllerA = ViewControllerA.instantiate()
        let viewModelA = ViewModelA()
        viewModelA.coordinator = self
        viewModelA.delegate = self
        viewControllerA.viewModel = viewModelA
        self.rootViewController = viewControllerA
    }
    
    func navigateToScreenB() {
        let coordinatorB = CoordinatorB()
        coordinatorB.start()
        childCoordinators.append(coordinatorB)
        if let screenB = coordinatorB.rootViewController {
            screenB.modalPresentationStyle = .fullScreen
            rootViewController?.present(screenB, animated: true)
        }
    }
}

