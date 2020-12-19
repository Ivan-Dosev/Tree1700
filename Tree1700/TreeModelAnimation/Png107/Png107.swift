//
//  Png107.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//
import SwiftUI

struct Png107: UIViewRepresentable {
    
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Png107>) {
  }

    var png107 = Png107_View()
    

  func makeUIView(context: Context) -> UIView {
    
    return png107
  }
}
struct ViewPng107: View {
    
    var png107 = Png107()
    
    var body: some View {
        png107
            .onAppear(){
                let timelinePNG19 : Timeline = Timeline_Png107(view: png107.png107, duration: 1, repeatCount: 100)
                    timelinePNG19.play()
            }
    }
}
