//
//  boceto_4_subiendo_fotosApp.swift
//  boceto_4_subiendo_fotos
//
//  Created by alumno on 10/30/24.
//

import SwiftUI

@main
struct boceto_4_subiendo_fotosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
