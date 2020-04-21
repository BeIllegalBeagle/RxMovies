//
//  MovieViewModel.swift
//  MovieRx
//
//  Created by Peter Ajayi on 17/04/20.
//  Copyright © 2020 Peter Ajayi. All rights reserved.
//

import UIKit


struct MovieViewModel {

    private var movie: Movie

    private static let dateFormatter: DateFormatter = {
        $0.dateStyle = .medium
        $0.timeStyle = .none
        return $0
    }(DateFormatter())

    init(newMovie: Movie) {
        self.movie = newMovie
    }

    var title: String{
        return self.movie.title
    }

    var overView: String{
        return self.movie.overview
    }

    var posterUrl: URL{
        return self.movie.posterURL
    }

    var relaseDate: String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"

        let dateFormatterSet = DateFormatter()
        dateFormatterSet.dateFormat = "dd MMM, yyyy"

        if let date = dateFormatterGet.date(from: self.movie.releaseDate) {
            return dateFormatterSet.string(from: date)
        }
        else {
            return ""
        }
    }

    var rating: String {
        let rating = Int(self.movie.voteAverage)
        return (0..<rating).reduce("") { (acc,_) -> String in
            return acc + "⭐️"
        }
    }

}
