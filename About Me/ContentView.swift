//
//  ContentView.swift
//  About Me
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFactText = "Tap to reveal facts"
    private var funFacts = ["I love reading while listening to music",  "I can speak spanish", "I love nights, but I am scared of the dark", "My favorite color is red"]
    @State private var index = 0
    var body: some View {
        
        ZStack{
            Color(.systemBrown)
                .ignoresSafeArea()
            VStack {
                Text("Hi, my name is Marina!")
                    .font(.largeTitle)
                    .padding()
                    .border(.white, width: 1)
                    .shadow(color: .white, radius: 10, x:2 , y: 2)
                   
                //Spacer()
                Image("images-2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .white, radius: 10, x:2 , y: 2)
                    .border(.black, width: 2)
                    .padding()
                //Spacer()
                Text(funFactText)
                    .padding()
                Button("Tap Me"){
                    funFactText = funFacts[index % funFacts.count]
                    index += 1
                }
                .padding()
                .buttonStyle(.bordered)
                .tint(.white)
                
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
