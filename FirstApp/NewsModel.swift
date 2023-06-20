import Foundation


struct NewsModel: Codable {
    var results: [News]
}

struct News: Codable {
    var publicationDate: Int
    var title: String
    var bodyText: String
    
    enum CodingKeys: String, CodingKey {
        case publicationDate = "publication_date"
        case title
        case bodyText = "body_text"
    }
}
