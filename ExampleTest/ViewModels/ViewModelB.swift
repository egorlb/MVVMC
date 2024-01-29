//
//  ViewModelB.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

protocol ViewModelDelegateB: AnyObject {
    func navigateToScreenC()
}

class ViewModelB {
    var coordinator: CoordinatorB?
    weak var delegate: ViewModelDelegateB?

}
