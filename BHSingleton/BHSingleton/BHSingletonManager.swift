//
//  BHSingletonManager.swift
//  BHSingleton
//
//  Created by QBH on 2018/11/3.
//  Copyright © 2018 QBH. All rights reserved.
//

import UIKit

class BHSingletonManager: NSObject {
  var name: String?

	// 通过类常量实现了延迟初始化和类型安全。
	static let singletoManager = BHSingletonManager()
 
  // MARK: - Return Singleton Object
  static func sharedInstance() -> BHSingletonManager {
    return singletoManager
  }
 
}
