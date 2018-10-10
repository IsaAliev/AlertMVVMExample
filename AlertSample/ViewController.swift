//
//  ViewController.swift
//  AlertSample
//
//  Created by Isa Aliev on 10.10.2018.
//  Copyright © 2018 IsaAliev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AlertPresentableView {
    var model = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindToAlerts()
        model.setup()
    }
}

