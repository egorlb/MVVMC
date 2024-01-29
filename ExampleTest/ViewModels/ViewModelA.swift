//
//  ViewModelA.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

protocol ViewModelDelegateA: AnyObject {
    func navigateToScreenB()
}

class ViewModelA {
    var coordinator: CoordinatorA?
    weak var delegate: ViewModelDelegateA?
}
