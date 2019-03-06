//
//  PhotosParser.swift
//  VirtualTourist
//
//  Created by Eyad Shokry on 2/27/19.
//  Copyright © 2019 Eyad Shokry. All rights reserved.
//

import Foundation

struct PhotosParser: Codable {
    let photos: Photos
}

struct Photos: Codable {
    let pages: Int
    let photo: [PhotoParser]
}

struct PhotoParser: Codable {
    
    let url: String?
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case url = "url_n"
        case title
    }
}

