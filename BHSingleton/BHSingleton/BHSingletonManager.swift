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
  
  static let singletoManager = BHSingletonManager()
 
  // MARK: - Shared Instance BHSingletonManager
  static func sharedInstance() -> BHSingletonManager {
    return singletoManager
  }
 
}
