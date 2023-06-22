import Foundation


class NetworkService {
    private var session = URLSession.shared
    
    func getData(handler: @escaping ([TownModel]) -> Void) {
        let url: URL? = URL(string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords")
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let towns = try JSONDecoder().decode([TownModel].self, from: data)
                handler(towns)
                print(towns)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func getError(errorCode: Int) {
        let url: URL? = URL(string: "https://http.cat/" + String(errorCode))
        
        session.dataTask(with: url!) { (data, _, error) in
            print(data)
        }.resume()
    }
    
    func getNews() {
        let url: URL? = URL(string: "https://kudago.com/public-api/v1.4/news/?fields=publication_date,title,body_text&text_format=text&actual_only=true")
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {return}
            do {
                let news = try JSONDecoder().decode(NewsModel.self, from: data)
                print(news)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func getPlaces() {
        let url: URL? = URL(string: "https://kudago.com/public-api/v1.2/places/")
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {return}
            do {
                let plases = try JSONDecoder().decode(PlacesModel.self, from: data)
                print(plases)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func getMovies() {
        let url: URL? = URL(string: "https://kudago.com/public-api/v1.4/movies/?fields=site_url,title,body_text,country,year,imdb_rating&text_format=text")
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {return}
            do {
                let movies = try JSONDecoder().decode(MoviesModel.self, from: data)
                print(movies)
            } catch {
                print(error)
            }
        }.resume()
    }
}
