//
//  ViewController.swift
//  CounterApp
//
//  Created by Gerardo Teruel on 5/27/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var count : Int = 0
  @IBOutlet var label : UILabel!
  var isLightBackground = true

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func incrementCount() {
    self.count += 1
    self.label.text = "\(self.count)"
  }

  func decrementCount() {
    self.count -= 1
    self.label.text = "\(self.count)"
  }

  func toggleBackground() {
    if !self.isLightBackground {
      self.view.backgroundColor = UIColor.redColor()
    } else {
      self.view.backgroundColor = UIColor.whiteColor()
    }
    self.isLightBackground = !self.isLightBackground
  
  }
  
}

