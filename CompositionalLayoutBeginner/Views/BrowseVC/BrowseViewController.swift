//
//  ViewController.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import UIKit

class BrowseViewController: UIViewController {
    static let header1 = "header1"
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    let categories = [
        "Jap","Burger","American","Soul Food","Latest",
        " Rewards","Top Eats","Desserts","Fast Food","Chinese"
    ]
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    let collectionViewLayout = CollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configuration()
        searchBarconfigur()
    }
    func searchBarconfigur() {
        searchBar.layer.cornerRadius = 100
        searchBar.searchTextField.layer.cornerRadius = 100
        searchBar.searchTextField.frame.size.height = 60
        collectionView.keyboardDismissMode = .onDrag
    }
    func configuration() {
        collectionView.collectionViewLayout = collectionViewLayout.createLayout1()
        collectionView.register(BrowseCollectionViewCell.self, forCellWithReuseIdentifier: BrowseCollectionViewCell.cellid1)
        collectionView.register(BrowseHeaderCollectionReusableView.self, forSupplementaryViewOfKind: CollectionViewLayout.headerid, withReuseIdentifier: BrowseViewController.header1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    
    }
    
    

}
