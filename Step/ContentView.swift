//
//  ContentView.swift
//  Step
//
//  Created by kuehar on 2021/06/05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked: Bool = false
    
    var body: some View {
        GeometryReader{
            geometry in
            ZStack(alignment: .top,content:{
            Button(action: self.animation, label:{
                Image(systemName: isClicked ? "gobackward": "plus.circle.fill")
                    .resizable().frame(width:60,height:60,alignment: .top)
            }).rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                    .animation(.spring())
                    .offset(x:0,y:isClicked ? geometry.size.height - 400 : geometry.size.height - 200)
            
                Color
                    .black
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .rotation3DEffect(
                        isClicked ?
                            .degrees(360) : .degrees(0),
                        axis: (x: 1.0, y: 1.0, z: 1.0))
                    .offset(x:0,y:isClicked ? geometry.size.height  - 300: geometry.size.height  - 100)
                    .animation(.linear(duration: 1.0))
            }).frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
        }
    }
    func animation(){
        self.isClicked.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
