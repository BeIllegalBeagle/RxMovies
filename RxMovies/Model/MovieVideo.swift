//
//  MovieVideo.swift
//  MovieRx
//
//  Created by Peter Ajayi on 17/04/20.
//  Copyright © 2020 Peter Ajayi. All rights reserved.
//

import UIKit


public struct MovieVideoResponse: Codable {
    public let results: [MovieVideo]
}

public struct MovieVideo: Codable {
    public let id: String
    public let key: String
    public let name: String
    public let site: String
    public let size: Int
    public let type: String

    public var youtubeURL: URL? {
        guard site == "YouTube" else {
            return nil
        }
        return URL(string: "https://www.youtube.com/watch?v=\(key)")
    }
}

