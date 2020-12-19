//
//  Png3.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png3: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png3>) {
  }

    var png3 = Png3_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png3
  }
}
struct ViewPng3: View {
    
    var png3 = Png3()
    
    var body: some View {
        png3
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png3(view: png3.png3, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
