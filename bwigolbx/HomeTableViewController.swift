//
//  HomeTableViewController.swift
//  bwigolbx
//
//  Created by Armando Cervantes on 17/04/21.
//

import UIKit


class HomeTableViewController: UITableViewController {
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var destacadosCollectionView: UICollectionView!
    @IBOutlet weak var recomendadosCollectionView: UICollectionView!
    
    var couponsRecomendados: [LovRecomendados] = []
    var couponsDestacados: [LovRecomendados] = []
    
    let menuCollectionViewIdentifier = "MenuItem"
    let destacadosCollectionViewIdentifier = "DestacadoItem"
    let recomendadosCollectionViewIdentifier = "RecomendadoItem"
    
    
    var couponId = 0
    

    override func viewDidLoad() {
        let httx = HttpCte.init()
        
        let resp = httx.getReq()

        print("First Controller Loaded\(String(describing: resp))")
    }
    
}
