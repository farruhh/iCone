//
//  Coordinator.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import Foundation
import UIKit

/// `Coordinator Protocol - UINavigation Flow Control Protocol.`
protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
