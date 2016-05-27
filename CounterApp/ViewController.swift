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
  var label : UILabel!
  var isDarkBackground = true

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpLabel()
    setUpIncrementButton()
    setUpDecrementButton()
    setUpToggleBackgroundButton()
  }
  
  func setUpLabel() {
    let label = UILabel()
    label.frame = CGRectMake(150, 150, 60, 60)
    label.text = "0"
    self.label = label
    self.view.addSubview(label)
  }
  
  func setUpIncrementButton() {
    let button = UIButton()
    button.frame = CGRectMake(100, 350, 90, 90)
    button.setTitle("Inc", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    
    button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
    self.view.addSubview(button)
  }
  
  func setUpDecrementButton() {
    let button = UIButton()
    button.frame = CGRectMake(200, 350, 90, 90)
    button.setTitle("Dec", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    button.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: .TouchUpInside)
    self.view.addSubview(button)
  }
  
  func setUpToggleBackgroundButton() {
    let button = UIButton()
    button.frame = CGRectMake(100, 450, 200, 200)
    button.setTitle("Toggle background", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    button.addTarget(self, action: #selector(ViewController.toggleBackground), forControlEvents: .TouchUpInside)
    self.view.addSubview(button)
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
    if self.isDarkBackground {
      self.view.backgroundColor = UIColor.redColor()
    } else {
      self.view.backgroundColor = UIColor.whiteColor()
    }
    self.isDarkBackground = !self.isDarkBackground
  
  }
  
}

