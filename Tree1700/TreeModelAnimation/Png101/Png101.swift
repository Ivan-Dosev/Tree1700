//
//  Png101.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png101: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png101>) {
  }

    var png101 = Png101_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png101
  }
}
struct ViewPng101: View {
    
    var png101 = Png101()
    
    var body: some View {
        png101
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png101(view: png101.png101, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
