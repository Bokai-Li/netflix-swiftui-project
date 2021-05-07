//
//  EpisodesView.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/7/21.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season:Int) -> [Episode] {
        return episodes.filter({ $0.season == season})
    }
    
    var body: some View {
        VStack{
            HStack{
                Button(action:{
                    showSeasonPicker = true
                }){
                    Group{
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                }
                .font(.system(size:16))
                
                Spacer()
            }
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                Text("Test")
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
