//
//  AppDelegate.swift
//  TheBasicsStudy
//
//  Created by QiaoBaHui on 2018/10/24.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		print("didFinishLaunchingWithOptions");
		return true
	}

	func applicationWillResignActive(_ application: UIApplication) {
		print("applicationWillResignActive");
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		print("applicationDidEnterBackground");
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		print("applicationWillEnterForeground");
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		print("applicationDidBecomeActive");
	}

	func applicationWillTerminate(_ application: UIApplication) {
		print("applicationWillTerminate");
	}

}
