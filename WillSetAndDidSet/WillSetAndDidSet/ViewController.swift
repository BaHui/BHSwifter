//
//  ViewController.swift
//  WillSetAndDidSet
//
//  Created by QiaoBaHui on 2018/11/2.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

// 定义一个Person类
class BHPerson: NSObject {
  
  var name: String? {
    willSet {
      print("willSet: 新值 -> \(String(describing: newValue))")
    }
    didSet {
      print("didSet: 原值 -> \(String(describing: oldValue))")
    }
  }
  
}


class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // 初始化并且改变`name`值
    test1()
    
    // 仅仅初始化, 验证方法是否会被调用
    test2()
    
    // 初始化为nil后, 进行相同的nil赋值
    test3()
  }
  
  
  // MARK: - 初始化并且改变`name`值
  
  func test1() {
    let person = BHPerson()
    person.name = "小张"
    /* 输出
     *  willSet: 即将设置的新值 -> Optional("小张")
     *  didSet: 原始值 -> nil
     */
    
    person.name = "小王"
    /* 输出
     *  willSet: 即将设置的新值 -> Optional("小王")
     *  didSet: 原始值 -> Optional("小张")
     */
  }
  
  
  // MARK: - 仅仅初始化, 验证方法是否会被调用
  
  func test2() {
    let _ = BHPerson()
  }
  
  
  // MARK: - 初始化为nil后, 进行相同的nil赋值
  func test3() {
    let person = BHPerson()
    person.name = nil
    
    /* 输出
     *  willSet: 新值 -> nil
     *  didSet: 原值 -> nil
     */
  }
  
}
