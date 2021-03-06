//
//  FoodControllerVCCollectionViewController.swift
//  FoodLayoutTest
//
//  Created by marvin evins on 6/8/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cellId"

class FoodControllerVCCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        collectionView.backgroundColor = .white
        navigationItem.title = "Food Delivery"
        
    
    }
    
    
    //compositional layout
    init(){
    
        
        super.init(collectionViewLayout: FoodControllerVCCollectionViewController.createLayout() )
    }

    //first section
    static func createLayout()-> UICollectionViewCompositionalLayout{
       return  UICollectionViewCompositionalLayout { (sectioNumber, env) -> NSCollectionLayoutSection? in
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            item.contentInsets.trailing = 16
            item.contentInsets.bottom = 16
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
        
        section.orthogonalScrollingBehavior = .continuous
            return section
            
        }
    }
        
        
    
        
        
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implementend")
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if  section == 0{
            return 3
        }
        return 8
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        cell.backgroundColor = .red
    
        return cell
    }

}
