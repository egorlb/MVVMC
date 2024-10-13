//
//  Coordinator.swift
//  ios-mvvm+c
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    func start()
}
