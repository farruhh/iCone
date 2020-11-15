//
//  MainCoordinator.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import Foundation
import UIKit

/// `MainCoordinator - Custom UINavigationCon Flow Initiator & UINavigation Flow Methods Manager Class.`
class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc = SplashViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
}
