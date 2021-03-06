//
//  PlayButton.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/4/21.
//

import SwiftUI

struct PlayButton: View {
    
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Spacer()
                
                Image(systemName: imageName)
                
                Text(text)
                    .bold()
                    .font(.system(size:16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            PlayButton(text: "Play", imageName: "play.fill"){
                
            }
        }
    }
}
