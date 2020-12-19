//
//  Png10.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png10: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png10>) {
  }

    var png10 = Png10_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png10
  }
}
struct ViewPng10: View {
    
    var png10 = Png10()
    
    var body: some View {
        png10
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png10(view: png10.png10, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
