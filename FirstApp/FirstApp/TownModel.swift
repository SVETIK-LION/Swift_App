import Foundation


struct TownModel: Codable {
    var name: String
    var timezone: String
    var coords: Coords
    var currency: String
}

struct Coords: Codable {
    var lat: Double
    var lon: Double
}
