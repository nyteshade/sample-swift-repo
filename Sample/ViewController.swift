//
//  ViewController.swift
//  Sample
//
//  Created by Brielle Harrison on 3/6/19.
//  Copyright © 2019 Nyteshade Enterprises. All rights reserved.
//

import UIKit
import MyFuncsAndLibs

@IBDesignable class ViewController: UIViewController {
  
  @IBOutlet var label: UILabel?

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    label?.text = Peep.shared.name
  }


}

