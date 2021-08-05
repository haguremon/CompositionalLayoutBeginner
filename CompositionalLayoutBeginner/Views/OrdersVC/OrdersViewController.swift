//
//  Tab2ViewController.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import UIKit

class OrdersViewController: UIViewController {
    static let cellid2 = "cell2"
    static let headerid2 = "header2"
    @IBOutlet weak var collectionView: UICollectionView!
   private let collectionViewLayout = CollectionViewLayout()
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()
        navigationItem.title = " Your Orders"
    }
    private func configuration() {
        collectionView.collectionViewLayout = collectionViewLayout.createOrderLayout()

        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: OrdersViewController.cellid2)
        collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: CollectionViewLayout.headerid2, withReuseIdentifier: OrdersViewController.headerid2)
        collectionView.delegate = self
        collectionView.dataSource = self
    
    }
}


