//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//
import Nuke
import Foundation


// TODO: Pt 1 - Create a Track model struct
struct Track{
    let movieName: String
    let descriptionText: String
    let artworkUrl100: URL
    //Detail Properties
    let ratingNumber:String
    let voteTotals:String
    let releaseDate:Date
    let dateFormatter = DateFormatter()
    
    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
static let dateFormatter: DateFormatter = {
       let formatter = DateFormatter()
       formatter.dateFormat = "yyyy-MM-dd"
       return formatter
   }()
}


// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
    
    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(movieName: "Blue Beetle",
              descriptionText: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMmY1ODUzZGItNDllOS00MDBhLTg4NmUtYjU4YjUxMGNlYmMwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg")!,
             ratingNumber: "7.1",
             voteTotals: "824",
              releaseDate: dateFormatter.date(from:"2023-08-16")!),
        Track(movieName: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
              descriptionText: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/I/81cmaM0hC6L.jpg")!,
              ratingNumber: "7.3",
              voteTotals: "601",
              releaseDate: dateFormatter.date(from:"2023-07-31")!),
        Track(movieName: "Meg 2: The Trench",
              descriptionText: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/I/91TdUbGlMyL._AC_UF1000,1000_QL80_.jpg")!,
              ratingNumber: "7",
              voteTotals: "1912",
              releaseDate: dateFormatter.date(from:"2023-08-02")!),
        Track(movieName: "Talk to Me",
              descriptionText: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BYzY4M2YxYmUtZGU1Mi00MTA0LWI4YzctYWMxZWM2YWE2MDVlXkEyXkFqcGdeQXVyMTE0MzQwMjgz._V1_.jpg")!,
              ratingNumber: "7.2",
              voteTotals: "826",
              releaseDate: dateFormatter.date(from:"2023-07-26")!),
        
        Track(movieName: "Barbie",
              descriptionText: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              artworkUrl100: URL(string: "https://i.ebayimg.com/images/g/7QAAAOSwmsRklUez/s-l1200.webp")!,
              ratingNumber: "7.3",
              voteTotals: "4963",
              releaseDate: dateFormatter.date(from:"2023-07-19")!),
        
        Track(movieName: "The Nun II",
              descriptionText: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BY2RkZGUzNmUtM2JlYi00ZDVhLWE2NTEtMzZjYWE2YjNmMzIwXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg")!,
              ratingNumber: "6.6",
              voteTotals: "300",
              releaseDate: dateFormatter.date(from:"2023-09-06")!),
        
        Track(movieName: "Oppenheimer",
              descriptionText: "The story of J. Robert Oppenheimer role in the development of the atomic bomb during World War II.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/I/71xDtUSyAKL._AC_UF894,1000_QL80_.jpg")!,
              ratingNumber: "8.3",
              voteTotals: "3696",
              releaseDate: dateFormatter.date(from:"2023-07-19")!)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
