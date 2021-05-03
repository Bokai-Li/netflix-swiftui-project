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
    
    public func getMovie(forCat cat:String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
    }
}
