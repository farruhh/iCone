//
//  ContentViewController.swift
//  Branded
//
//  Created by frank on 2020/11/15.
//

import Foundation
import UIKit

class ContentVC: UIViewController {
    @IBOutlet weak var brandCollectionView: UICollectionView!
    var pageIndex: Int = 0
    var strTitle: String!
    var dummyData: [DummyData] = [DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo")),DummyData(name: "Zara", image: UIImage.init(imageLiteralResourceName: "zaralogo"))]
    //MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Views")
    }
    
}
extension ContentVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dummyData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandBoxCell.identifier, for: indexPath) as! BrandBoxCell
        let data = self.dummyData[indexPath.row]
        cell.configure(data: data)
        
        return cell
    }
    
    
}

extension ContentVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        default:
            print("didselect")
        }
    }
}
extension ContentVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        return CGSize(width: (screenWidth/3) - 9, height: (screenHeight / 6) - 12)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
}


