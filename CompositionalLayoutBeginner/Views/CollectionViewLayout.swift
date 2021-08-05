//
//  CollectionViewLayout.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import Foundation
import UIKit

class CollectionViewLayout {
    static let headerid = "headerid"
    
    func createLayout1() ->  UICollectionViewLayout {
        
        let layout = UICollectionViewCompositionalLayout { [ weak self ] sectionIndex, environment in
            
                return   self?.categories()
            
        }
        
        return layout
    
    }
    
    func categories() -> NSCollectionLayoutSection {
        
        let item = NSCollectionLayoutItem(layoutSize: .init(
                                            widthDimension: .fractionalWidth(0.5),
                                            heightDimension: .absolute(150)))
        item.contentInsets = .init(top: 2, leading: 8, bottom: 12, trailing: 8)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                        widthDimension: .fractionalWidth(1),
                                                        heightDimension: .estimated(1000)),
                                                       subitems: [item])
        group.contentInsets = .init(top: 3, leading: 10, bottom: 0, trailing: 10)
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems =
            [
                .init(layoutSize: .init(
                        widthDimension: .fractionalWidth(0.95),
                        heightDimension: .absolute(60)),
                      elementKind: CollectionViewLayout.headerid ,
                      alignment: .topTrailing)
                
            ]
        return section
    }
    
    
}

