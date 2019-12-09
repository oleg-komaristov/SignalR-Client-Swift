//
//  Util.swift
//  SignalRClient
//
//  Created by Pawel Kadluczka on 4/13/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//

import Foundation

internal class Util {
    private static let delegateQueue = DispatchQueue(label: "SwiftSignalRClient")
  
    public static func dispatchToMainThread(action: @escaping () -> Void) {
        delegateQueue.async(execute: action)
    }
}
