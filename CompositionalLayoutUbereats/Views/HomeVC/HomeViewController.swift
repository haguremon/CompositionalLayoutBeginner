//
//  HomeViewController.swift
//  CompositionalLayoutUbereats
//
//  Created by IwasakIYuta on 2021/08/07.
//

import UIKit

class HomeViewController: UIViewController {
    static let headerid = "header"
    static let cellid = "cell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    let collectionViewLayout = CollectionViewLayout()
    override func viewDidLoad() {
        super.viewDidLoad()
      configuration()
    
    }
    private func configuration() {
        
        collectionView.collectionViewLayout = collectionViewLayout.createHomeLayout()

        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: HomeViewController.cellid)
        
        collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: CollectionViewLayout.headerid, withReuseIdentifier: HomeViewController.headerid)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    
    }
  

}



    
    

