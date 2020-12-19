//
//  Png110.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png110: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png110>) {
  }

    var png110 = Png110_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png110
  }
}
struct ViewPng110: View {
    
    var png110 = Png110()
    
    var body: some View {
        png110
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png110(view: png110.png110, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
