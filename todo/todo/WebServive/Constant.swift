import Foundation



//https://api.nasa.gov/planetary/apod?api_key=S6cvRPvethRKozQgxRynZGmA41wfWq6Gad8tTlE6


class Constant {
    static  var apiKey: String {
      return "S6cvRPvethRKozQgxRynZGmA41wfWq6Gad8tTlE6"
    }
    static var baseUrlString: String {
        return "https://api.nasa.gov/planetary/apod?"
    }
    
    static var url:URL {
        guard let url = URL(string: "\(baseUrlString)api_key=\(apiKey)&count=10") else {
            fatalError()
        }
        return url
    }
    static var session: URLSession {
        let session = URLSession(configuration: .default)
        return session
    }
    static var request: URLRequest {
        let req = URLRequest(url: url)
        return req
    }
    static var  decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
        
    }
}
