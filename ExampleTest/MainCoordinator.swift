//
//  MainCoordinator.swift
//  ios-mvvm+c
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController?
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    func start() {}
}


