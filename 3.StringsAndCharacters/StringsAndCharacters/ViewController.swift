//
//  ViewController.swift
//  StringsAndCharacters
//
//  Created by QBH on 2018/10/29.
//  Copyright © 2018 QBH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 初始化字符串
    let string1 = ""
    let string2 = String()
    print(string1, string2)
    
    
    // 字符串的判断是否为空
    let emptyString = ""
    if emptyString.isEmpty {
      print("字符串为空") // 输出: 字符串为空
    } else {
      print("字符串不为空")
    }
    
    
    // 通过for-in循环来遍历字符串
    let fullString = "QiaoBaHui"
    for subChar in fullString {
      print(subChar)  // 输出: Q i a o B a H u i
    }
    
    
    // 连接字符串和字符
    let firstName = "BaHui·"
    let lastName = "Qiao"
    print(firstName + lastName) // 输出: BaHui·Qiao
    
    
    // 前缀/后缀相等
    let content = "qiaobahui"
    if content.hasPrefix("qiao") {
      print(content.prefix(4)) // 输出: qiao
    }
    
    if content.hasSuffix("hui") {
      print(content.suffix(3)) // 输出: hui
    }
    
  }
  
}


