//
//  aplicacion_pruebaApp.swift
//  aplicacion_prueba
//
//  Created by alumno on 10/16/24.
//

import SwiftUI

@main
struct aplicacion_pruebaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
