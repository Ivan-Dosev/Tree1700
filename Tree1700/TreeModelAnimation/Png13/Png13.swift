//
//  Png13.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png13: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png13>) {
  }

    var png13 = Png13_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png13
  }
}
struct ViewPng13: View {
    
    var png13 = Png13()
    
    var body: some View {
        png13
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png13(view: png13.png13, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
