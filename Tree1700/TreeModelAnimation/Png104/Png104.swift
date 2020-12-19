//
//  Png104.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png104: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png104>) {
  }

    var png104 = Png104_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png104
  }
}
struct ViewPng104: View {
    
    var png104 = Png104()
    
    var body: some View {
        png104
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png104(view: png104.png104, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
