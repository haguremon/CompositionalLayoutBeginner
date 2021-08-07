//
//  ExtensionHomeVC.swift
//  CompositionalLayoutUbereats
//
//  Created by IwasakIYuta on 2021/08/07.
//

import Foundation
import UIKit


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        8
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 12
        case 3:
            return 5
        case 6:
            return 7
        case 8:
            return 6
        default:
            return 1
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeViewController.cellid, for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .systemGray
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HomeViewController.headerid, for: indexPath) as! HeaderCollectionReusableView
        if indexPath.section == 6 {
            header.label.text = " in a rush?"
        }
        return header
    }
}
