//
//  TreeViewAll.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//

import SwiftUI

struct TreeViewAll: View {
    
    @State var colorShadow : Color = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    var width : CGFloat {
        let a = UIScreen.main.bounds.width
        if a < 700 {
            return a
        }else{
            return 700
        }
    }
    
    var height : CGFloat {
        let b = UIScreen.main.bounds.width
        if b < 700 {
            return UIScreen.main.bounds.height
        }else{
            return 1000
        }
    }
    
    @State var inButton : Int = 0
    var pngSuma = ["png105", "png107", "png102", "png110", "png109", "png111", "png108", "png104", "png103", "png101", "png12", "png4","png19", "png10", "png9", "png3", "png1"]
    
    var body: some View {
        
        
        VStack {
            
            
            ZStack {
                Image("pngTreva")
                    .resizable()
                    
                    
                loadView()

            }
            .frame(width: width / 1.1, height: width / 1.1 , alignment: .center)
            .background(
                ZStack {
                    Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 4.0)
                        .offset(x: -8.0, y: -8.0) })
             .foregroundColor(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
             .shadow(color: colorShadow, radius: 20, x: 20.0  , y:  20.0)
            .shadow(color: Color.white, radius: 20, x: -20.0 , y: -20.0)
        }
        
        Picker(selection: self.$inButton, label: Text("")){
            ForEach(0 ..< pngSuma.count) {
               Text(self.pngSuma[$0])
            }

            
        }.padding(.horizontal, 15)
    }
    
    func loadView() -> AnyView {
        
        switch inButton {
        case 0:
                 return AnyView( ViewPng105())
        case 1:
                 return AnyView( ViewPng107())
        case 2:
                 return AnyView(  ViewPng102())
        case 3:
                 return AnyView( ViewPng110())
        case 4:
                 return AnyView( ViewPng109())
        case 5:
                 return AnyView(  ViewPng111())
        case 6:
                 return AnyView( ViewPng108())
        case 7:
                 return AnyView( ViewPng104())
        case 8:
                 return AnyView( ViewPng103())
        case 9:
                 return AnyView(  ViewPng101())
        case 10:
                 return AnyView( ViewPng12())
        case 11:
                 return AnyView( ViewPng4())
        case 12:
                 return AnyView(  ViewPng13())
        case 13:
                 return AnyView( ViewPng19())
        case 14:
                 return AnyView( ViewPng10())
        case 15:
                 return AnyView( ViewPng9())
        case 16:
                 return AnyView(  ViewPng3())
        default:
                 return AnyView(  ViewPng1())
        }
//        return AnyView(Text("gg"))
    }
}

struct TreeViewAll_Previews: PreviewProvider {
    static var previews: some View {
        TreeViewAll()
    }
}


struct Arda: AnimatableModifier {

        var pct : CGFloat
        
        var animatableData: CGFloat {
            get { pct }
            set { pct = newValue }
        }
    
    func body(content: Content) -> some View {
        return content
                .opacity(Double(pct))
                .animation(.easeInOut(duration: 10))
    }
}
