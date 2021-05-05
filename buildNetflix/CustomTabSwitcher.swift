//
//  CustomTabSwitcher.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/5/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs:[CustomTab]
    
    func widthForTab(tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(tabs, id: \.self){ tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab: tab), height:6)
                            Button(action: {
                                
                            }){
                                Text(tab.rawValue)
                                    .font(.system(size:16, weight: .bold))
                            }
                            .buttonStyle(PlainButtonStyle())

                        }
                        
                    }
                }
            }
            
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
