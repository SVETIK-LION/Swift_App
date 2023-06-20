import Foundation


struct MoviesModel: Codable {
    var results: [Movie]
}

struct Movie: Codable {
    var siteURL: String
    var title: String
    var bodyText: String
    var country: String
    var year: Int
    var imdbRating: Double
    
    enum CodingKeys: String, CodingKey {
        case siteURL = "site_url"
        case title
        case bodyText = "body_text"
        case country
        case year
        case imdbRating = "imdb_rating"
    }
}
