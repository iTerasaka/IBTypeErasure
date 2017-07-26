//
//  ViewController.swift
//  IBTypeErasure
//
//  Created by i_terasaka on 2017/07/26.
//  Copyright © 2017年 i_terasaka. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainView.draw()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
