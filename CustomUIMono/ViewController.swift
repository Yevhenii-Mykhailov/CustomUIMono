//
//  ViewController.swift
//  CustomUIMono
//
//  Created by Yevhenii M on 21.10.2022.
//

import UIKit

class ViewController: UIViewController, MenuBlockDelegate {
    @IBOutlet var bottomMenuBlockViews: [MenuBlock]!
    @IBOutlet var currencyViews: [Currency]!
    
    let menuBlock = MenuBlock()
    let currency = Currency()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in bottomMenuBlockViews {
            item.delegate = self
        }
        
        menuBlock.configureMenuBlock(menuBlockViews: bottomMenuBlockViews)
        currency.configureCurrency(currencyViews: currencyViews)
    }
    
    func menuElementPressed() {
        print("Menu Item Pressed!!")
    }
}

