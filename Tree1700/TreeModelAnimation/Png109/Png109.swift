//
//  Png109.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png109: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png109>) {
  }

    var png109 = Png109_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png109
  }
}
struct ViewPng109: View {
    
    var png109 = Png109()
    
    var body: some View {
        png109
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png109(view: png109.png109, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
