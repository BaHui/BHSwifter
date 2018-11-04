//
//  ViewController.swift
//  BHSingleton
//
//  Created by QBH on 2018/11/3.
//  Copyright © 2018 QBH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 获取单例对象
    let singleManager1 = BHSingletonManager.sharedInstance()
    singleManager1.name = "1000"
    print("\(singleManager1, singleManager1.name)")
    // 输出: (<BHSingleton.BHSingletonManager: 0x600002040f00>, Optional("1000"))
    
    
    // 再次获取单例对象, 对比内存地址和属性值
    let singleManager2 = BHSingletonManager.sharedInstance()
    print("\(singleManager2, singleManager2.name)")
    // 输出: (<BHSingleton.BHSingletonManager: 0x600002040f00>, Optional("1000"))
  }
  
}


