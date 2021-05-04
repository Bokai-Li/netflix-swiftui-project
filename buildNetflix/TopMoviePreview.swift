//
//  TopMoviePreview.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/3/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie:Movie
    func isCategoryLast(cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat){
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories, id:\.self){ category in
                        HStack {
                            Text(category)
                            if !isCategoryLast(cat: category){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size:3))
                            }
                        }
                        
                    }
                }
                Text("Row of buttons")
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
