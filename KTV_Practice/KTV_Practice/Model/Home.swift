//
//  Home.swift
//  KTV_Practice
//
//  Created by 조호근 on 5/6/24.
//

import Foundation

struct Home: Decodable {
    let videos: [Video]
    let rankings: [Ranking]
    let recents: [Recent]
    let recommends: [Recommend]
}

extension Home {
    
    struct Video: Decodable {
        let videoId: Int
        let channel: String
        let subtitle: String
        let isHot: Bool
        let title: String
        let channelThumbnailURL: URL
        let imageUrl: URL
        let channelDescription: String
    }
    
    struct Recent: Decodable {
        let timeStamp: Double
        let title: String
        let imageUrl: URL
        let channel: String
    }
    
    struct Ranking: Decodable {
        let thumbnailImageUrl: URL
        let videoId: Int
        
        enum CodingKeys: String, CodingKey {
            case thumbnailImageUrl = "imageUrl"
            case videoId
        }
    }
    
    struct Recommend: Decodable {
        let imageUrl: URL
        let title: String
        let playtime: Double
        let channel: String
        let videoId: Int
    }
}
