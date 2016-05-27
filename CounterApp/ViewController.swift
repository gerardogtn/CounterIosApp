//
//  ViewController.swift
//  CounterApp
//
//  Created by Gerardo Teruel on 5/27/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpLabel()
    setUpButton()
  }
  
  func setUpLabel() {
    let label = UILabel()
    label.frame = CGRectMake(150, 150, 60, 60)
    label.text = "0"
    self.view.addSubview(label)
  }
  
  func setUpButton() {
    let button = UIButton()
    button.frame = CGRectMake(150, 350, 90, 90)
    button.setTitle("Count", forState: UIControlState.Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    self.view.addSubview(button)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

