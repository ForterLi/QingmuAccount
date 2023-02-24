//
//  QingmuAccountApp.swift
//  QingmuAccount
//
//  Created by 周荥马 on 2022/11/24.
//

import SwiftUI


#if DEBUG
let umKey = ""
#else
let umKey = "63f87f32ba6a5259c40ae720"
#endif


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        //add code when didFinishLaunchingWithOptions
        UMConfigure.initWithAppkey(umKey, channel: "App Store")
        UMConfigure.setEncryptEnabled(true)
        return true
    }
}


@main
struct QingmuAccountApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
