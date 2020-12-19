//
//  Png108.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png108: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png108>) {
  }

    var png108 = Png108_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png108
  }
}
struct ViewPng108: View {
    
    var png108 = Png108()
    
    var body: some View {
        png108
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png108(view: png108.png108, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
