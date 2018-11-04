//
//  ViewController.swift
//  For-In-Where
//
//  Created by QiaoBaHui on 2018/11/4.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

// 定义ClassA
class ClassA: NSObject {}

// 定义ClassB
class ClassB: NSObject {}

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let objectA = ClassA()
		let objectB = ClassB()
		let	objectArray = [objectB, objectA, objectB]

		for object in objectArray where (object is ClassB) {
			print("ClassB实例对象, 位于的Index: \(objectArray.firstIndex(of: object)!)")
			break
		}
		// ClassB实例对象, 位于的Index: 0 (用了break关键字)
	}

}
