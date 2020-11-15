//
//  BrandBoxCell.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import UIKit

class BrandBoxCell: UICollectionViewCell {
    static let identifier = "BrandBoxCell"
    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var brandName: UILabel!
    
    func configure(data: DummyData ) {
        self.brandName.text = data.name
        self.brandImage.image = data.image
    }
}
