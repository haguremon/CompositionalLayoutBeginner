//
//  CollectionViewLayout.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import Foundation
import UIKit

class CollectionViewLayout {
    
    static let headerid1 = "headerid1"
    
    func browseCategories() -> NSCollectionLayoutSection {
        
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
                      elementKind: CollectionViewLayout.headerid1 ,
                      alignment: .topTrailing)
                
            ]
        return section
    }
    
    func createBrowseLayout() ->  UICollectionViewLayout {
        
        let layout = UICollectionViewCompositionalLayout { [ weak self ] sectionIndex, environment in
            
                return   self?.browseCategories()
            
        }
        
        return layout
    
    }
    
    static let headerid2 = "headerid2"
    func createOrderLayout() ->  UICollectionViewLayout {
        
        let layout = UICollectionViewCompositionalLayout { sectionIndex, environment in
            
            let item = NSCollectionLayoutItem(layoutSize: .init(
                                                widthDimension: .fractionalWidth(1),
                                                heightDimension: .absolute(90)))
            item.contentInsets = .init(top: 1, leading: 5, bottom: 0, trailing: 5)
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                            widthDimension: .fractionalWidth(1),
                                                            heightDimension: .estimated(900)),
                                                           subitems: [item])
            group.contentInsets = .init(top: 10, leading: 5, bottom: 0, trailing: 5)
            let section = NSCollectionLayoutSection(group: group)
            section.boundarySupplementaryItems =
                [
                    .init(layoutSize: .init(
                            widthDimension: .fractionalWidth(0.95),
                            heightDimension: .absolute(60)),
                          elementKind: CollectionViewLayout.headerid2 ,
                          alignment: .topTrailing)
                    
                ]
            return section
            
        }
        
        return layout
    
    }
    
    
    
    
}

