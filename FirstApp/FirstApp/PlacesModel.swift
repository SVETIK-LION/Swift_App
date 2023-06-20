import Foundation


struct PlacesModel: Codable {
    var results: [Place]
}

struct Place: Codable {
    var id: Int
    var title: String
    var slug: String
    var address: String
    var phone: String
    var siteURL: String
    var subway: String
    var isClosed: Bool
    var location: String
    var hasParkingLot: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case slug
        case address
        case phone
        case siteURL = "site_url"
        case subway
        case isClosed = "is_closed"
        case location
        case hasParkingLot = "has_parking_lot"
    }
}
