//
//  Png4.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct Png4: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png4>) {
  }

    var png4 = Png4_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png4
  }
}
struct ViewPng4: View {
    
    var png4 = Png4()
    
    var body: some View {
        png4
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png4(view: png4.png4, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
