//
//  ViewController.swift
//  HW-Collection
//
//


import UIKit

struct AlbomInfo {
    var imageAlbom: UIImage
    var nameAlbom: String
    var photo: Int
    
    static func makeAlbom (_: [AlbomInfo]) -> [AlbomInfo] {
        let first = AlbomInfo(imageAlbom: UIImage(named: "albom1")!,
                              nameAlbom: "Недавние", photo: 52)
        let second = AlbomInfo(imageAlbom: UIImage(named: "albom2")!,
                               nameAlbom: "Избранные", photo: 87)
        let third = AlbomInfo(imageAlbom: UIImage(named: "albom3")!,
                              nameAlbom: "Instagram", photo: 12)
        let fouth = AlbomInfo(imageAlbom: UIImage(named: "albom4")!,
                             nameAlbom: "Фотогалерея", photo: 252)
        return [first, second, third, fouth]
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var MyAlbomLabel: UILabel!
    
    
    private var albomCollectionView = CollectionViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(albomCollectionView)
        
        albomCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        albomCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        albomCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        albomCollectionView.topAnchor.constraint(equalTo: MyAlbomLabel.bottomAnchor, constant: 10).isActive = true
        albomCollectionView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
