//
//  ContentView.swift
//  aplicacion_prueba
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var templacion: Int = 0
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            Model3D(named: "Earth", bundle: realityKitContentBundle)
                .padding(.bottom, 0)
            Button(action: {templacion+=1;}, label: {Text("Hola Mundo \(templacion)")})
   
        }
        .padding()
    
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
