//
//  ViewController.swift
//  bwigolbx
//
//  Created by Armando Cervantes on 16/04/21.
//


import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func btnx(_ sender: Any) {
        let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "HomeTableVC") as! HomeTableViewController
        self.navigationController?.pushViewController(homeVc, animated: true)
        
    }
    


}

