//
//  VisionPro1App.swift
//  VisionPro1
//
//  Created by Saiprasad on 06/02/24.
//

import SwiftUI

@Observable
class DiceData {
  var rolledNumber = 0
}

@main
struct VisionPro1App: App {
  
  @State var diceData = DiceData()
  
    var body: some Scene {
        WindowGroup {
          ContentView(diceData: diceData)
        }
        .defaultSize(width: 100, height: 100)

        ImmersiveSpace(id: "ImmersiveSpace") {
          ImmersiveView(diceData: diceData)
        }
    }
}
