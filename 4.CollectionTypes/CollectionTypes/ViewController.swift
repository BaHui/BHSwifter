//
//  ViewController.swift
//  CollectionTypes
//
//  Created by QBH on 2018/10/29.
//  Copyright © 2018 QBH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    /* 数组（Arrays）是有序数据的集
     * 集合（Sets）是无序无重复数据的集
     * 字典（Dictionaries）是无序的键值对的集
    */
    
    // 创建一个数组, 并添加元素
    let stringArray = [String]()
    // stringArray.append("a")  let定义的不可变数组, 不能添加元素, 编译不通过
    print(stringArray)
    
    
    var strings = [String]()
    strings.append("111")
    strings.append("222")
    print(strings) // 输出: ["111", "222"]
    
    strings.removeAll()
    print(strings) // 输出: []
  
  }
  
}


