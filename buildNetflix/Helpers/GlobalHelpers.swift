//
//  GlobalHelpers.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/2/21.
//

import Foundation
import SwiftUI

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
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono")
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
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono")
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
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono")
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
    promotionHeadline: "Best Rated Show")
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
    promotionHeadline: "New episodes coming soon")
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
    promotionHeadline: "Watch Season 6 Now")
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
    cast: "Natsuki Hanae, Akari Kito, Hiro Shimono")
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
    promotionHeadline: "New movie coming soon!")

let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7,exampleMovie8]

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
