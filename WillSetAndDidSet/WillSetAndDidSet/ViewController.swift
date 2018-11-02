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
	var age: Int?
	var name: String? {
		willSet {
			print("willSet: 属性`name`的值将要发生改变, age Old Value: \(String(describing: age))")
		}
		didSet {
			print("didSet: 属性`name`的值将要发生改变, age New Value: \(String(describing: age))")
		}
	}

}


class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let person = BHPerson()
		person.name = "小张"
		// 输出: willSet: 属性`name`的值将要发生改变, age Old Value: nil
		// 输出: didSet: 属性`name`的值将要发生d改变, age New Value: nil

		person.name = "小王"
		// 输出: willSet: 属性`name`的值将要发生改变, age Old Value: nil
		// 输出: didSet: 属性`name`的值将要发生d改变, age New Value: nil
	}

}


