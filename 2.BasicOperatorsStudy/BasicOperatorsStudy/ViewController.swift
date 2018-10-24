//
//  ViewController.swift
//  BasicOperatorsStudy
//
//  Created by QiaoBaHui on 2018/10/25.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

// ################## 基本运算符（Basic Operators）######################

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		// ****************** 比较字符串是否相等 ******************
		let name1 = "qiaobahui"
		let name2 = "qiaobahui"

		if name1 == name2 {
			print("name1 和 name2相等") // 输出: name1 和 name2相等
		}


		// ****************** 三目运算 ******************
		let contentHeight = 40
		let hasHeader = true
		let rowHeight = contentHeight + (hasHeader ? 50 : 20)
		print(rowHeight) // 输出: 90


		// ****************** 空合运算符 ******************
		let defaultColorName = "red"
		var userDefinedColorName: String?   //默认值为 nil
		userDefinedColorName = "Blue"

		let colorNameToUse = userDefinedColorName ?? defaultColorName
		print(colorNameToUse) // 输出:Blue

		// ****************** 区间 ******************
		let names = ["name1", "name2", "name3"]
		for name in names[..<2] {
			print(name) //输出: name1    name2
		}

		for name in names[2...] {
			print(name) //输出: name3
		}

	}

}


