//
//  ViewController.swift
//  UIDesign
//
//  Created by User-UAM on 8/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var images: [String] = ["song1","song2", "song3","song4", "song5"]
    
    var titles: [String] = ["We","Somewhere Only We Know", "Not Like Us","The Boy is Mine", "Wonderwall"]
    
    var arbums: [String] = ["Miller - The Divine Feminine","Keane - Hopes and Fears", "Kendrick - Not Like Us","Ariana - Eternal Sunshine", "Oasis - What's the Story"]
    
    var years: [String] = ["2016","2004", "2024","2024", "1995"]
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view1.layer.cornerRadius = 15
        view1.layer.masksToBounds = true
        
        view2.layer.cornerRadius = 15
        view2.layer.masksToBounds = true
        
        view3.layer.cornerRadius = 15
        view3.layer.masksToBounds = true
        
        
        
    }
    
    

}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        cell.title.text = titles[indexPath.row]
        cell.arbum.text = arbums[indexPath.row]
        cell.year.text = years[indexPath.row]
        
        
        return cell
    }
    
}
