//
//  ViewController.swift
//  DustinLayAssign2
//
//  Created by Heather Bishop on 2/10/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var uiView1: UIView!
    @IBOutlet weak var uiView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView1.layer.cornerRadius = 12.0
        uiView1.clipsToBounds = true
        uiView2.layer.cornerRadius = 12.0
        uiView2.clipsToBounds = true
    }


}

