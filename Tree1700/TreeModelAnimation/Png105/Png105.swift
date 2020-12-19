//
//  Png105.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png105: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png105>) {
  }

    var png105 = Png105_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png105
  }
}
struct ViewPng105: View {
    
    var png105 = Png105()
    
    var body: some View {
        png105
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png105(view: png105.png105, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
