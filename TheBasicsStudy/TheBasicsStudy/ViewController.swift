//
//  ViewController.swift
//  TheBasicsStudy
//
//  Created by QiaoBaHui on 2018/10/24.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - ViewController Life Cycle
	override func viewDidLoad() {
		super.viewDidLoad()

		// ******************* 定义变量和常量 ****************************

		// 声明一个常量: 使用let修饰, 不可以被改变
		let 常量A = "QiaoBaHui"
		print(常量A) // 输出: QiaoBaHui

		// 声明一个变量: 使用var修饰, 允许被修改
		var 变量A = "Qiao"
		print(变量A) // 输出: Qiao

		变量A = "BaHui"
		print(变量A) // 输出: BaHui

		// 声明多个常量/变量: 头部使用一个let 或者 var
		let 变量B1 = "Qiao", 变量B2 = "Ba", 变量B3 = "Hui"
		print("输出结果: \(变量B1 + 变量B2 + 变量B3)") // 输出: 输出结果: QiaoBaHui

		let 常量C : String
		常量C = "C常量"
		print(常量C) // 输出: C常量


		// ************************** 类型推断 **************************
		let theFloatValue1  = 100.00
		let theFloatValue2 = 15.90

		let result1: Double = theFloatValue1 * theFloatValue2
		let result2: Int = (Int)(theFloatValue1 * theFloatValue2)
		print("浮点结果: \(result1)") // 输出: 浮点结果: 1590.0
		print("保留两位结果: \(String(format: "%.2f", result1))") // 保留两位结果: 1590.00
		print("取整结果: \(result2)") // 输出: 取整结果: 1590


		let result3 = 3 + 0.14159
		print(result3) // 输出: 3.14159


		// ************************** 整数和浮点数转换 **************************
		let three = 3
		let pointOneFourOneFiveNine = 0.14159
		let pi = Double(three) + pointOneFourOneFiveNine
		print(pi) // 输出: 3.14159  (PS: pi 等于 3.14159，所以被推测为 Double 类型)


		// ************************** 类型别名 (typealias)**************************
		typealias AudioSample = String
		let string = AudioSample(format: "%.2f", 11.111);
		print(string) // 输出: 11.11


		// ************************** 布尔值 (true / false)**************************
		let trueValue = true
		let falseValue = false

		if trueValue {
			print("This is true")
		}

		if !falseValue {
			print("This is !falseValue")
		}

		let i = 1
		if i == 1 {
			print("i 的值与 1相等")
		}

		// ************************** 元组 **************************
		let tuples1 = ("qiao", "ba", "hui", 26)
		let (subName1, subName2, subName3, age) = tuples1

		print(tuples1.0 + tuples1.1 + tuples1.2 + "\(tuples1.3)") // 输出: qiaobahui26
		print(subName1 + subName2 + subName3 + "\(age)") // 输出: qiaobahui26

		let tuples2 = (subName1: "qiao", subName2: "ba", subName3: "hui", age: 26)
		print(tuples2.subName1 + tuples2.subName2 + tuples2.subName3 + "\(age)") // 输出: vqiaobahui26


		//************************** 可选类型 **************************
		let possibleNumber = "Swift"
		if let convertedNumber = Int(possibleNumber) {
			print(convertedNumber)
		} else {
			print("possibleNumber转换为整数失败!!")
		}
		// 输出: possibleNumber转换为整数失败!!

		//************************** 可选绑定**************************

		if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
			print("\(firstNumber) < \(secondNumber) < 100")
		}
		// 输出: 4 < 42 < 100

		//************************** 使用断言进行调试 **************************
		let assertTest = -3
		assert(assertTest >= 0, "A person's age cannot be less than zero") 	// 因为 age < 0，所以断言会触发

	}

}
