//
//  ViewController.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import UIKit

class Tab1ViewController: UIViewController {
    static let header1 = "header1"
   
    @IBOutlet weak var searchBar: UISearchBar!
    
   
    
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
        collectionView.register(Tab1CollectionViewCell.self, forCellWithReuseIdentifier: Tab1CollectionViewCell.cellid1)
        collectionView.register(Header1CollectionReusableView.self, forSupplementaryViewOfKind: CollectionViewLayout.headerid, withReuseIdentifier: Tab1ViewController.header1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    
    }
    
    

}




extension Tab1ViewController : UICollectionViewDataSource , UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: Tab1CollectionViewCell.cellid1, for: indexPath) as! Tab1CollectionViewCell
        cell1.backgroundColor = .green
        cell1.label.text = "a"
        return cell1
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header1 = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                      withReuseIdentifier: Tab1ViewController.header1,
                                                                      for: indexPath) as! Header1CollectionReusableView
        if indexPath.section == 0 {
        
            header1.label.text = "Top categories"
        
        } else {
            
            header1.label.text = "More categories"
        
        }
        
        return header1
    }
    
    
    
}
