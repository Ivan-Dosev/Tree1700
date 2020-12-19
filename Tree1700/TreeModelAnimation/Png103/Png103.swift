//
//  Png103.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png103: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png103>) {
  }

    var png103 = Png103_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png103
  }
}
struct ViewPng103: View {
    
    var png103 = Png103()
    
    var body: some View {
        png103
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png103(view: png103.png103, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
