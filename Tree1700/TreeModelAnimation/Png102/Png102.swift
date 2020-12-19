//
//  Png102.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png102: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png102>) {
  }

    var png102 = Png102_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png102
  }
}
struct ViewPng102: View {
    
    var png102 = Png102()
    
    var body: some View {
        png102
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png102(view: png102.png102, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
