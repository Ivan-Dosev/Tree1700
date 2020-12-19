//
//  Png111.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png111: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png111>) {
  }

    var png111 = Png111_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png111
  }
}
struct ViewPng111: View {
    
    var png111 = Png111()
    
    var body: some View {
        png111
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png111(view: png111.png111, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
