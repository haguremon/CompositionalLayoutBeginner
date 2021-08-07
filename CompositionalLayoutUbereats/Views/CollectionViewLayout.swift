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
    
    private func browseCategories() -> NSCollectionLayoutSection {
        
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
    static let headerid = "header"
    
    func createHomeLayout() ->  UICollectionViewLayout {
        
        let layout = UICollectionViewCompositionalLayout { [ weak self ]  sectionIndex, environment in
            
            if sectionIndex == 0 {
                
            return self?.homeCategories()
            
            } else if sectionIndex == 3 {
                    
                    return self?.scrollhome()
                }
            else if sectionIndex == 6 {
                
                return self?.scrollHeaderHome()
            }
            
            
            return self?.createhome1()
            
            
        }
        
        return layout
    
    }
    
    private func createhome1() -> NSCollectionLayoutSection {
        
        let item = NSCollectionLayoutItem(layoutSize: .init(
                                            widthDimension: .fractionalWidth(1),
                                            heightDimension: .absolute(200)))
        item.contentInsets = .init(top: 2, leading: 1, bottom: 7, trailing: 1)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                        widthDimension: .fractionalWidth(1),
                                                        heightDimension: .estimated(1000)),
                                                       subitems: [item])
        group.contentInsets = .init(top: 3, leading: 5, bottom: 0, trailing: 5)
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    private func homeCategories()->  NSCollectionLayoutSection {
        
        let item = NSCollectionLayoutItem(layoutSize: .init(
                                            widthDimension: .fractionalWidth(0.25), //100%グループの幅
                                                heightDimension: .fractionalHeight(1)))//100% 125
            //4　ここでセルの間をあける　三つの高さ200のセルが表示されるため
            item.contentInsets = .init(top: 10, leading: 1, bottom: 5, trailing: 0)
            //2 グループを作成　グループのサイズを決める
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                            widthDimension: .fractionalWidth(0.9),//80%fractional（分数）
                                                            heightDimension: .absolute(90)), //absolute(絶対)125の高さグループ
                                                           subitems: [item])
        //1sectionを作成
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets.top = 1

            return section
            
        }
    //Scroll
    private func scrollhome() -> NSCollectionLayoutSection {
        
        let item = NSCollectionLayoutItem(layoutSize: .init(
                                            widthDimension: .fractionalWidth(1),
                                            heightDimension: .absolute(150)))
        item.contentInsets = .init(top: 2, leading: 1, bottom: 7, trailing: 1)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                        widthDimension: .fractionalWidth(1),
                                                        heightDimension: .estimated(1000)),
                                                       subitems: [item])
        group.contentInsets = .init(top: 3, leading: 5, bottom: 0, trailing: 5)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .paging
        return section
    }
    
    private func scrollHeaderHome()-> NSCollectionLayoutSection {
        
        let item = NSCollectionLayoutItem(layoutSize: .init(
                                            widthDimension: .fractionalWidth(1),
                                            heightDimension: .absolute(150)))
        item.contentInsets = .init(top: 2, leading: 1, bottom: 7, trailing: 1)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                                                        widthDimension: .fractionalWidth(1),
                                                        heightDimension: .estimated(1000)),
                                                       subitems: [item])
        group.contentInsets = .init(top: 3, leading: 5, bottom: 0, trailing: 5)
        let section = NSCollectionLayoutSection(group: group)
                section.boundarySupplementaryItems =
                    [
                        .init(layoutSize: .init(
                                widthDimension: .fractionalWidth(0.95),
                                heightDimension: .absolute(50)),
                              elementKind: CollectionViewLayout.headerid ,
                              alignment: .topTrailing)
        
                    ]

        section.orthogonalScrollingBehavior = .paging
        return section
    }
    
    
    
}

