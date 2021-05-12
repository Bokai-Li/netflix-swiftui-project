//
//  HomeViewModel.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/2/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    // string == catagory
    @Published var movies: [String:[Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Anime, .Comedy, .Thriller]
    
    public func getMovie(forCat cat:String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie]{
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShows:
            return (movies[cat] ?? []).filter({($0.movieType == .tvShow) && ($0.genre == genre)})
        case .myList:
            return movies[cat] ?? []
            // TODO incomplete
        }
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
