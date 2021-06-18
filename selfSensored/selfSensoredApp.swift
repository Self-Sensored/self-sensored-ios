//
//  selfSensoredApp.swift
//  selfSensored
//
//  Created by C. Thomas Brittain on 6/18/21.
//

import SwiftUI
import HealthKit

let healthStore = HKHealthStore()

@main
struct selfSensoredApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
