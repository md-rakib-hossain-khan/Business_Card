//
//  ContentView.swift
//  Business Card
//
//  Created by Md. Rakib Hossain Khan on 24/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 0.75).edgesIgnoringSafeArea(.all)
            VStack {
                Image("Rakib")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Text("Md. Rakib Hossain Khan")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Senior Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                
                Divider()
                
                InfoView(text: "01833372121", imageName: "phone.fill")
                
                InfoView(text: "md.rakib.hossain.khan@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
