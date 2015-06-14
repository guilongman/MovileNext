//
//  ShowsViewController.swift
//  MovileNext
//
//  Created by User on 14/06/15.
//  Copyright (c) 2015 Movile. All rights reserved.
//

import UIKit

class ShowsViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var showCollection: UICollectionView!
    
    let allShows = [ ["Game of Thrones": "x"] , ["American Horor History" : "y"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //defini a quantidade de elementos que terão na tela
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    //defini a exibição (itera) esses elementos na tela
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let identifier = Reusable.ShowCell.identifier!
        
        let cell = showCollection.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath) as! ShowsCollectionViewCell
        
        let show = allShows[indexPath.row]
        
        cell.loadShow(show)
        
        return cell
    }

}
