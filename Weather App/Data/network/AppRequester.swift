//
//  AppRequester.swift
//  Weather App
//
//  Created by Ahmed Tawfiq on 08/12/2021.
//

import Foundation


final class AppRequester<T: Codable>{
    
    func request(for url: URL,
                 completion:@escaping(Result<T,NetworkError>)->Void){
        
        URLSession.shared.dataTask(with: url){
            (data,response,error) in
            
            guard error == nil else {
                completion(Result.failure(NetworkError.error(value: error?.localizedDescription ?? "Error")))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse , httpResponse.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do{
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            }catch let err{
                print(err)
                completion(.failure(.decodingError(value: err.localizedDescription)))
            }
            
        }.resume()
    }
}

enum NetworkError : Error{
    case invalidResponse
    case invalidData
    case decodingError(value:String)
    case error(value: String)
}
