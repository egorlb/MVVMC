//
//  CoordinatorC.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import UIKit

class CoordinatorC: Coordinator, ViewModelDelegateC {
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController?
    
    func start() {
        let viewControllerC = ViewControllerC.instantiate()
        let viewModelC = ViewModelC()
        viewModelC.coordinator = self
        viewModelC.delegate = self
        viewControllerC.viewModel = viewModelC
        self.rootViewController = viewControllerC
    }
    
    func navigateToScreenD() {
        let coordinatorD = CoordinatorD()
        coordinatorD.start()
        childCoordinators.append(coordinatorD)
        if let screenD = coordinatorD.rootViewController {
            screenD.modalPresentationStyle = .fullScreen
            rootViewController?.present(screenD, animated: true)
        }
    }
}
