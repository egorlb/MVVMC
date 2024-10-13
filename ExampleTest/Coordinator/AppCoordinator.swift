//
//  AppCoordinator.swift
//  ExampleTest
//
//  Created by Egor Laba on 13.10.24.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let builder: Builder
    private let window: UIWindow
    var navigationController: UINavigationController?
    
    init(builder: Builder, window: UIWindow) {
        self.builder = builder
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start() {
            print("AppCoordinator start")
            showViewControllerA()
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            print("RootViewController установлен и окно отображено")
        }
    
    func showViewControllerA() {
        let vc = builder.createViewControllerA(coordinator: self)
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    func showViewControllerB() {
        let vc = builder.createViewControllerB(coordinator: self)
        vc.modalPresentationStyle = .fullScreen
        topViewController()?.present(vc, animated: true, completion: nil)
    }
    
    func showViewControllerC() {
        let vc = builder.createViewControllerC(coordinator: self)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        topViewController()?.present(navController, animated: true, completion: nil)
    }
    
    func showViewControllerD() {
        let vc = self.builder.createViewControllerD(coordinator: self)
        
        guard let activeNav = self.activeNavigationController() else {
            return
        }
        activeNav.pushViewController(vc, animated: true)
    }
    
    private func activeNavigationController() -> UINavigationController? {
        var topVC = topViewController()
        while let presentedVC = topVC?.presentedViewController {
            topVC = presentedVC
        }
        if let nav = topVC as? UINavigationController {
            return nav
        } else if let nav = topVC?.navigationController {
            return nav
        }
        return navigationController
    }
    
    private func topViewController() -> UIViewController? {
        var topVC: UIViewController? = navigationController
        while let presentedVC = topVC?.presentedViewController {
            topVC = presentedVC
        }
        return topVC
    }
}
