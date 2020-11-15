//
//  UIViewExtension.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import Foundation
import UIKit

extension UIView {
    func addConstraintsWithFormatString(formate: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: formate, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
