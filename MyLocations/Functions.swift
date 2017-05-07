//
//  Functions.swift
//  MyLocations
//
//  Created by KungYi-Hsin on 29/04/2017.
//  Copyright © 2017 YH. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds,
                                  execute: closure)
}

let MyManagedObjectContextSaveDidFailNotification = Notification.Name("MyManagedObjectContextSaveDidFailNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal error:\(error)")
    NotificationCenter.default.post(name: MyManagedObjectContextSaveDidFailNotification, object: nil)
}
