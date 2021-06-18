//
//  ComingSoonVM.swift
//  buildNetflix
//
//  Created by Bokai Li on 6/18/21.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
