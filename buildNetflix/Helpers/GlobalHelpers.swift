//
//  GlobalHelpers.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/2/21.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://temp.media/video/?height=90&width=160&length=10&text=")!
let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL{
    return [exampleImageURL, exampleImageURL2, exampleImageURL].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 2 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "Season 2 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "Season 2 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name:"Dark",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3000")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name:"Travelers",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3001")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name:"Community",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3002")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name:"Alone",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3003")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name:"Hannibal",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3004")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name:"After Life",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3005")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name:"Star Wars",
    thumbnailURL:URL(string: "https://picsum.photos/2000/3006")!,
    categories: ["Dystopian", "Suspenseful", "Sci-Fi TV"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
//https://demonslayer-anime.com/risshihen/assets/img/top/img_main_pc.jpg
let exampleMovie8 = Movie(
    id: UUID().uuidString,
    name:"Demon Slayer: Kimetsu no Yaiba the Movie: Mugen Train",
    thumbnailURL:URL(string: "https://m.media-amazon.com/images/M/MV5BZjZjNzI5MDctY2Y4YS00NmM4LTljMmItZTFkOTExNGI3ODRhXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg")!,
    categories: ["Action", "Adventure", "Animation"],
    year:2019,
    rating:"TV-14",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Haruo Sotozaki, Hikaru Kondo, Akifumi Fujio, Masanori Miyake, Yūma Takahashi",
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono",
    moreLikeThisMovies: [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7],
    promotionHeadline: "New movie coming soon!",
    trailers: exampleTrailers)

var exampleMovies: [Movie] { return [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7,exampleMovie8].shuffled() }

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Cruelty", description: "After selling charcoal in town, Tanjiro returns home to find his whole family dead. Only his sister Nezuko has survived -- but she’s changed.", season: 1, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
