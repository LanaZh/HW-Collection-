//
//  CollectionViewCell.swift
//  HW-Collection
//
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuse = "CollectionViewCell"
    
    let albomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(albomImageView)
        albomImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        albomImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        albomImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        albomImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
