//
//  MovieDetail.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/4/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark")
                                .font(.system(size:28))
                        })
                    }.padding(.horizontal, 22)
                    
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                        VStack{
                            
                            StandardHomeMovie(movie:movie)
                                .frame(width: screen.width / 2.5)
                            
                            MovieInfoSubheadline(movie:movie)
                            
                            if movie.promotionHeadline != nil {
                                Text(movie.promotionHeadline!)
                                    .bold()
                                    .font(.headline)
                            }
                            
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                                //
                            }
                            
                            CurrentEpisodeInformation(movie:movie)
                            
                            CastInfo(movie:movie)
                            
                            HStack (spacing:80){
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn:  true){
                                    
                                }
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false){
                                    
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true){
                                    
                                }
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                            
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {
                    Group{
                        Color.black.opacity(0.9)
                        VStack (spacing: 40) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                Button(action: {
                                    self.selectedSeason = season + 1
                                    self.showSeasonPicker = false
                                }, label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                })
                                
                            }
                            
                            Spacer()
                            Button(action:{
                                self.showSeasonPicker = false
                            }){
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                            .padding(.bottom, 30)
                            
                        }
                    }
                    .ignoresSafeArea(.all)
                }
            }
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie8, movieDetailToShow: .constant(nil))
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 18) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HDView()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct HDView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.gray, lineWidth: 2)
                .foregroundColor(.black)
                .frame(width: 30, height: 20)
            
            Text("HD")
                .font(.system(size: 15))
                .bold()
        }
        .frame(width:35, height:20)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size:12))
                .bold()
        }
        .frame(width:CGFloat(rating.count)*10, height:20)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                
                Spacer()
            }
            .padding(.vertical, 4)
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}
