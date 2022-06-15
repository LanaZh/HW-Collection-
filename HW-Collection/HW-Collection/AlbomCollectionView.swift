//
//  AlbomCollectionView.swift
//  HW-Collection
//
//

import UIKit

class AlbomCollectionView: UICollectionView {
    
    let cells = [AlbomInfo]()

    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.reuse)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AlbomCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuse, for: indexPath)
        return cell
    }
}
