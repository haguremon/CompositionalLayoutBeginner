//
//  Tab1CollectionViewCell.swift
//  CompositionalLayoutBeginner
//
//  Created by IwasakIYuta on 2021/08/05.
//

import UIKit

class Tab1CollectionViewCell: UICollectionViewCell {
    
    static let cellid1 = "cell1"
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    addSubview(label)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame.size = self.bounds.size
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
