//
//  ViewController.swift
//  As-Used
//  as, as?, as! 和 is
//  Created by QBH on 2018/11/3.
//  Copyright © 2018 QBH. All rights reserved.
//

import UIKit

// 父类
class SuperMan: NSObject {}

class OthersClass: NSObject {}

// 一级子类: Person
class Person: SuperMan {}

// 二级子类1: Teacher
class Teacher: Person {
  var name: String?
}


class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // as的用法
    testMethod_As()
    
    // as!用法
    testMethod_ASExclamationPoint()
    
    // as?用法
    testmethod_ASQuestionmark()
  }

  
  // MARK: - as的用法 (关键字: Guaranteed conversion、 Upcasting)
  func testMethod_As() {
    // ********* 有保证的类型转换，从派生类转换为基类的向上转型 ********
    let teacher = Teacher()
    teacher.name = "teacher type"
    
    // let person = teacher as OthersClass  编译报错
    let person = teacher as SuperMan
    print(person) // 输出: <As_Used.Teacher: 0x600000c26660>
  }
  
  
  // MARK: as!用法 (关键字: Forced conversion、 Downcasting)
  func testMethod_ASExclamationPoint() {
    // ********* 无保证强制转换，从派生类转换为基类的向下转型, 若转换失败, 则发生崩溃 ********
    let person: Person = Teacher()
    
    let _ = person as! Teacher
    // let _ = person as! Student 运行时错误, 发生崩溃
  }
  
  
  // MARK: as? 用法 (关键字: Optional、 Nil)
  func testmethod_ASQuestionmark() {
    // ********* 类型转换，从派生类转换为基类的向下转型, 若转换失败, 则返回nil ********
    let person1: Person = Teacher()
    
    if let _ = person1 as? Teacher {
      print("person转换Teacher类型成功")
    } else {
      print("person转换Teacher类型失败")
    }
    // 输出: person转换Teacher类型成功
    
  }

  
}




