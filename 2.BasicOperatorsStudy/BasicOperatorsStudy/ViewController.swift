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

		// ****************** 组合赋值运算符******************
		var num = 100
		num += 200
		print("num的值: \(num)") // 输出: 300


		// ****************** 比较字符串是否相等 **************
		let nameOne = "qiaobahui"
		let nameTwo = "qiaobahui"

		if nameOne == nameTwo {
			print("nameOne 和 nameTwo相等") // 输出: name1 和 name2相等
		}


		let nameThree = "nameThree"
		let nameFour = "nameFour"

		if nameThree != nameFour {
			print("nameThree 和 nameFour 不相等") // 输出: nameThree 和 nameFour 不相等
		}

		// 注意： Swift 也提供恒等（===）和不恒等（!==）这两个比较符来判断两个对象是否引用同一个对象实例。更多细节在类与结构。


		// ****************** 三目运算 ******************
		let contentHeight = 40.0
		let hasHeader = true
		let rowHeight = contentHeight + (hasHeader ? 50.0 : 20.0)
		print(rowHeight) // 输出: 90.0


		// ****************** 空合运算符 ******************
		let defaultColorName = "Red"
		var userDefinedColorName: String?   //默认值为 nil

		let colorNameToUse1 = userDefinedColorName ?? defaultColorName
		print("colorNameToUse1: \(colorNameToUse1)") // 输出: colorNameToUse1: Red


		userDefinedColorName = "Blue"
		let colorNameToUse2 = userDefinedColorName ?? defaultColorName
		print("colorNameToUse2: \(colorNameToUse2)") // 输出: colorNameToUse2: Blue

		// ****************** 区间 ******************
		let names = ["name1", "name2", "name3"]
		for name in names[..<2] {
			print(name) //输出: name1    name2
		}

		for name in names[2...] {
			print(name) //输出: name3
		}

	// ****************** 逻辑运算符 ******************
		let allowedEntry = false
		if !allowedEntry {
			print("ACCESS DENIED")
		}
		// 输出 "ACCESS DENIED"

		let enteredDoorCode = true
		let passedRetinaScan = false
		if enteredDoorCode && passedRetinaScan {
			print("Welcome!")
		} else {
			print("ACCESS DENIED")
		}
		// 输出 "ACCESS DENIED"

		let hasDoorKey = false
		let knowsOverridePassword = true
		if hasDoorKey || knowsOverridePassword {
			print("Welcome!")
		} else {
			print("ACCESS DENIED")
		}
		// 输出 "Welcome!"

		if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
			print("Welcome!")
		} else {
			print("ACCESS DENIED")
		}
		// 输出 "Welcome!"

	}

}


