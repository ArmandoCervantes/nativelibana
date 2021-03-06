//
//  CouponDetailViewController.swift
//  bwigolbx
//
//  Created by Armando Cervantes on 16/04/21.
//
import UIKit
import Foundation


class CouponDetailViewController: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var destacadosCollectionView: UICollectionView!
    @IBOutlet weak var recomendadosCollectionView: UICollectionView!
    
    var couponsRecomendados: [LovRecomendados] = []
    var couponsDestacados: [LovRecomendados] = []
    
    let menuCollectionViewIdentifier = "MenuItem"
    let destacadosCollectionViewIdentifier = "DestacadoItem"
    let recomendadosCollectionViewIdentifier = "RecomendadoItem"
    
    
    var couponId = 0

    var coupon: LovRecomendados?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("NOMBRE: \(String(describing: coupon?.Ali))")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

