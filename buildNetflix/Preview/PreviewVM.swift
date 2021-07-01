//
//  PreviewVM.swift
//  buildNetflix
//
//  Created by Bokai Li on 7/1/21.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}

