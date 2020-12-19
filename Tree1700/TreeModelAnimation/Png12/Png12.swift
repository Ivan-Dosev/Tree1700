//
//  Png12.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png12: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png12>) {
  }

    var png12 = Png12_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png12
  }
}
struct ViewPng12: View {
    
    var png12 = Png12()
    
    var body: some View {
        png12
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png12(view: png12.png12, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
