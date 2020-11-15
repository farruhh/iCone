//
//  SplashViewController.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import UIKit
import Lottie
import CocoaLumberjack

/// `SplashViewController - Loads and Displays Custom UI SplashAnimation`
class SplashViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
//MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - viewDidAppear()
    override func viewDidAppear(_ animated: Bool) {
        let animationView = AnimationView()
        let animation = Animation.named("cartSplash", bundle: Bundle.main)
        animationView.animation = animation
        animationView.frame = CGRect(origin: .zero, size: CGSize(width: self.view.frame.size.width, height: 200))
        animationView.center = self.view.center
        animationView.loopMode = .repeat(2.0)
        animationView.contentMode = .scaleAspectFit
        animationView.play { (finished) in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {
                self.activateRootVC()
            })
        }
        view.addSubview(animationView)
    }
    fileprivate func activateRootVC() {
        if let vc = self.storyboard?.instantiateViewController(identifier: "MainViewController") as? MainViewController {
            self.view.window?.rootViewController = vc
            self.view.window?.makeKeyAndVisible()
        }
    }
}
