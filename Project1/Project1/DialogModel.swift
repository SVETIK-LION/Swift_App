import Foundation


struct DialogModel: Codable {
    var clientID: Int
    var redirectURI: String
    var scope: Int
    var display: String
    
    
    enum CodingKeys: String, CodingKey {
        case clientID = "client_id"
        case redirectURI = "redirect_uri"
        case scope
        case display
    }
}
