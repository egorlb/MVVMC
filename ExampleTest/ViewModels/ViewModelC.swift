//
//  ViewModelC.swift
//  ExampleTest
//
//  Created by Egor Laba on 26.01.24.
//

import Foundation

protocol ViewModelDelegateC: AnyObject{
    func navigateToScreenD()
}

class ViewModelC {
    var coordinator: CoordinatorC?
    weak var delegate: ViewModelDelegateC?
}
