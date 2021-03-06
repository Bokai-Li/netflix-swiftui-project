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
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                }
                .font(.system(size:16))
                
                Spacer()
            }
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack (alignment: .leading){
                            Text("\(episode.episodeNumber). \(episode.name)")
                            Text("\(episode.length)m")
                        }
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
                
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 10)
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
