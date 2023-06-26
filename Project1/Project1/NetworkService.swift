import Foundation


final class NetworkService {
    private var session = URLSession.shared
    
    func getData(token: String) {
        let url: URL? = URL(string: "https://api.vk.com/method/messages.getConversations?user_ids=" + userID + "&access_token=" + token1 + "&v=5.130")
        print(url)
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {return}
            do {
                let conversation = try JSONDecoder().decode(conversation.self, from: data)
                print(conversation)
            } catch {
                print(error)
            }
        }.resume()
            
        }
    }
}
