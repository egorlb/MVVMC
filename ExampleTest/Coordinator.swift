//
//  Coordinator.swift
//  ios-mvvm+c
//
//  Created by Angelica dos Santos on 31/10/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var rootViewController: UIViewController? { get set }
    func start()
}
