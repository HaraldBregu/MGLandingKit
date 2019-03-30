//
//  AppDelegate.swift
//  MGLandingKit
//
//  Created by AldoOS on 03/29/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGLandingKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var landing:MGLanding!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        landing = MGLanding(dataSource: DataSource(), delegate: Delegate())
        window?.rootViewController = landing.controller
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

class DataSource: MGLandingDataSource {
    
    var navTitle: String {
        return "Landing"
    }
    
    var title: String {
        return "Scalable multipurpose component based iOS framework"
    }
    
    var subTitle: String {
        return "Developers can't start always from scratch developing apps. With MegaGeneral developers can get almost all tools and softwares they need to pubblish an app."
    }
    
    var headerIcon: UIImage? {
        return nil
    }
    
    var dataList: [MGLandingData] {
        var megaitems:[MGLandingData] = []
        
        var itemFeed = MGLandingData()
        itemFeed.title = "mg.megageneral.componentcollection.item.one"//.localized
        itemFeed.thumbUrl = "https://siliconcanals.nl/wp-content/uploads/2018/05/tnw-.jpg"
        megaitems.append(itemFeed)
        
        var item2 = MGLandingData()
        item2.title = "mg.megageneral.componentcollection.item.two"//.localized
        item2.thumbUrl = "https://myfacemood.com/wp-content/uploads/2016/12/BitTorrent-Video-Streaming-per-iPhone.png"
        megaitems.append(item2)
        
        var item4 = MGLandingData()
        item4.title = "mg.megageneral.componentcollection.item.three"//.localized
        item4.thumbUrl = "https://r7h9p6s7.stackpathcdn.com/wp-content/uploads/2007/11/south_africa_commercial_radio_stations.jpg"
        megaitems.append(item4)
        
        var itemWeb = MGLandingData()
        itemWeb.title = "mg.megageneral.componentcollection.item.four"//.localized
        itemWeb.thumbUrl = "https://clarivate.com/wp-content/uploads/2017/05/antifraud-darkweb-and-cyber-intelligence-560x320.jpg"
        megaitems.append(itemWeb)
        
        var itemone = MGLandingData()
        itemone.title = "mg.megageneral.componentcollection.item.five"//.localized
        itemone.thumbUrl = "https://snazzy-maps-cdn.azureedge.net/assets/37-lunar-landscape.png?v=20170626074350"
        megaitems.append(itemone)
        
        var itemSett = MGLandingData()
        itemSett.title = "mg.megageneral.componentcollection.item.settings"//.localized
        itemSett.thumbUrl = "https://cdn.redmondpie.com/wp-content/uploads/2017/12/ios-12-dark-mode.png"
        megaitems.append(itemSett)

        return megaitems
    }
    
    var layout: MGLandingLayout {
        return MGLandingLayout()
    }
    
}

class Delegate: MGLandingDelegate {
    
    
}
