//
//  Png1.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png1: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png1>) {
  }

    var png1 = Png1_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png1
  }
}
struct ViewPng1: View {
    
    var png1 = Png1()
    
    var body: some View {
        png1
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png1(view: png1.png1, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
