//
//  IPaNetworkState.swift
//  Pods
//
//  Created by IPa Chen on 2017/3/6.
//
//

import UIKit

open class IPaNetworkState: NSObject {
    static var networkCounter = 0
    static public func startNetworking() {
        networkCounter += 1
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
    static public func endNetworking() {
        networkCounter -= 1
        if networkCounter <= 0 {
           networkCounter = 0
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
}
