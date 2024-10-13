//
//  Builder.swift
//  ExampleTest
//
//  Created by Egor Laba on 13.10.24.
//

import UIKit

final class Builder {
    func createViewControllerA(coordinator: AppCoordinator) -> ViewControllerA {
        let vc = ViewControllerA.instantiate()
        let viewModel = ViewModelA()
        vc.viewModel = viewModel
        viewModel.coordinator = coordinator
        
        return vc
    }
    
    func createViewControllerB(coordinator: AppCoordinator) -> ViewControllerB {
        let vc = ViewControllerB.instantiate()
        let viewModel = ViewModelB()
        vc.viewModel = viewModel
        viewModel.coordinator = coordinator
        
        return vc
    }
    
    func createViewControllerC(coordinator: AppCoordinator) -> ViewControllerC {
        let vc = ViewControllerC.instantiate()
        let viewModel = ViewModelC()
        vc.viewModel = viewModel
        viewModel.coordinator = coordinator
        
        return vc
    }
    
    func createViewControllerD(coordinator: AppCoordinator) -> ViewControllerD {
        let vc = ViewControllerD.instantiate()
        let viewModel = ViewModelD()
        vc.viewModel = viewModel
        viewModel.coordinator = coordinator
        
        return vc
    }
}
