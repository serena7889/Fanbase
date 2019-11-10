//
//  DataService.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let genres: [Genre] = [.altRock, .singerSongwriter, .popPunk]
    
    private let bands = [
                
        Band(name: "Manchester Orchestra", genre: .altRock, albums: [
            Album(title: "Like a Virgin Losing a Child", year: "2006", imageName: nil),
            Album(title: "Mean Everything to Nothing", year: "2009", imageName: nil),
            Album(title: "Simple Math", year: "2011", imageName: nil),
            Album(title: "Cope", year: "2014", imageName: nil),
            Album(title: "Black Mile to the Surface", year: "2017", imageName: nil)
        ]),
        
        Band(name: "Paramore", genre: .altRock, albums: [
            Album(title: "All We Know is Falling", year: "2005", imageName: nil),
            Album(title: "Riot", year: "2007", imageName: nil),
            Album(title: "Brand New Eyes", year: "2009", imageName: nil),
            Album(title: "Paramore", year: "2013", imageName: nil),
            Album(title: "After Laughter", year: "2017", imageName: nil)
        ]),
        
        Band(name: "Julien Baker", genre: .singerSongwriter, albums: [
            Album(title: "Sprained Ankle", year: "2015", imageName: nil),
            Album(title: "Turn Out The Lights", year: "2017", imageName: nil)
        ]),
        
        Band(name: "Phoebe Bridgers", genre: .singerSongwriter, albums: [
            Album(title: "Stranger in the Alps", year: "2017", imageName: nil)
        ]),
        
        Band(name: "The Swellers", genre: .popPunk, albums: [
            Album(title: "My Everest", year: "2007", imageName: nil),
            Album(title: "Ups and Downsizing", year: "2009", imageName: nil),
            Album(title: "Good For Me", year: "2011", imageName: nil),
            Album(title: "The Light Under Closed Doors", year: "2013", imageName: nil),
        ])
        
    ]
    
    func getGenres() -> [Genre] {
        return genres
    }
    
    func getBands(forGenre genre: Genre) -> [Band] {
        return bands.filter { (band) -> Bool in
            band.genre == genre
        }
    }
    
    func getAllBands() -> [Band] {
        return bands
    }
    
    func getGenreName(forGenre genre: Genre) -> String {
        switch genre {
        case .altRock:
            return "Alt Rock"
        case .popPunk:
            return "Pop Punk"
        case .singerSongwriter:
            return "Singer Songwriter"
        default:
            return "Unknown"
        }
    }
    
    
}
