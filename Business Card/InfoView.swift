//
//  InfoView.swift
//  Business Card
//
//  Created by Md. Rakib Hossain Khan on 24/3/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(Color.white)
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Phone Number", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
