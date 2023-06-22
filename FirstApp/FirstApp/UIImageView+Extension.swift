import UIKit


extension UIImageView {
    func getImage() {
        let url = URL(string: "https://random.dog/woof.json")
        
        var session = URLSession.shared
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let image = try JSONDecoder().decode(ImageModel.self, from: data)
                guard let imageURL = URL(string: image.url) else {
                    return
                }
                session.dataTask(with: imageURL) { (data, _, error) in
                    guard let data = data, let img = UIImage(data: data) else {
                        return
                    }
                    DispatchQueue.main.async {
                        self.image = img
                    }
                }.resume()
                print(image)
            } catch {
                print(error)
            }
        }.resume()
    }
}
