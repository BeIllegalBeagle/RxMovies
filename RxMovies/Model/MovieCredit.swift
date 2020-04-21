//
//  MovieCredit.swift
//  MovieRx
//
//  Created by Peter Ajayi on 17/04/20.
//  Copyright © 2020 Peter Ajayi. All rights reserved.
//

import UIKit

public struct MovieCreditResponse: Codable {
    public let cast: [MovieCast]
    public let crew: [MovieCrew]
}

public struct MovieCast: Codable {
    public let character: String
    public let name: String
}

public struct MovieCrew: Codable {
    public let id: Int
    public let department: String
    public let job: String
    public let name: String
}
