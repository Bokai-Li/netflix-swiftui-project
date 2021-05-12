//
//  SearchBar.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/12/21.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text: String = ""
    
    var body: some View {
        ZStack(alignment:.leading) {
            Color.graySearchBackground
                .frame(width: 295, height:36)
                .cornerRadius(8)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -6)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                Button(action: {
                    // Clear Text
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.graySearchText)
                        .frame(width:35, height:35)
                })
                .padding(.trailing, 18)
                
                Button(action: {
                    // clear text, hide both buttons, give up first-responder
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing, 10)
            }
        }
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBar()
                .padding()
        }
    }
}
