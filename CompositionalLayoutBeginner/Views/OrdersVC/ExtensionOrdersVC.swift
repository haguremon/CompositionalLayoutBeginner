//
//  OrdersVC.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import Foundation
import UIKit

extension OrdersViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: OrdersViewController.cellid2, for: indexPath) as! CollectionViewCell
        cell2.backgroundColor = .systemGray
        return cell2
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header2 = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: OrdersViewController.headerid2, for: indexPath) as! HeaderCollectionReusableView
        header2.label.textColor = .black
        header2.label.text = "Past orders"
        return header2
    }
    
    
    
}
