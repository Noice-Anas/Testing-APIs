//
//  NetworkingManger.swift
//  Noice_Crypto
//
//  Created by Noice_anas on 04/04/2022.
//

import Foundation
import Combine
class NetworkingManger {
    
    private init() { }
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
                
            case .badURLResponse(url: let url):
                return "[⚠️] ERROR: bad response from the URL: \(url) "
            case .unknown:
                return "[⚠️] ERROR: unknown error occured while networking"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .tryMap({ try handleURLResponse(output: $0, url: url) })
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
           switch completion {
           case .finished:
               break
           case .failure(let error):
               print("[⚠️] \(error.localizedDescription) ||| handle completion did not work")
               return
           }
    }
}
