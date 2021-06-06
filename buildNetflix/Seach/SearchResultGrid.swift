//
//  SearchResultGrid.swift
//  buildNetflix
//
//  Created by Bokai Li on 6/6/21.
//

import SwiftUI

struct SearchResultGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing:10){
            ForEach(movies, id:\.id) { movie in
                StandardHomeMovie(movie: movie)
                    .frame(height: 160)
                    .onTapGesture {
                        movieDetailToShow = movie
                    }
            }
        }
    }
}

struct SearchResultGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
