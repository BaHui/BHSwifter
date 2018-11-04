//
//  ViewController.swift
//  Guard-Used
//
//  Created by QiaoBaHui on 2018/11/4.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

// 定义一个Person类
class Person: NSObject {
	var name: String = ""
	var identifyNumber: String = ""

	init(name: String, identifyNumber: String) {
		self.name = name
		self.identifyNumber = identifyNumber
	}
}


class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let person = Person(name: "小张", identifyNumber: "42637488847654667")

		// 使用if - else
		if person.identifyNumber.isEmpty {
			print("if - 无身份证号")
		} else {
			print("if - 有身份证号")
		}
		// 输出: if - 有身份证号


		// 使用gurad
		guard person.identifyNumber.isEmpty else {
			print("guard - \(person.name)无身份证号")
			return
		}
		// 输出: guard - 小张无身份证号
	}

}
