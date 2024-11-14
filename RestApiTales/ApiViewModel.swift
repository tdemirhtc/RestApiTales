//
//  ApiViewModel.swift
//  RestApiTales
//
//  Created by Hatice Taşdemir on 8.11.2024.
//

import Foundation
import Alamofire

class ApiViewModel : ObservableObject{
    @Published var jokes = [Value]()
    
    func getTales(count: Int = 6) {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json\(count)",method: .get).responseDecodable(of:Welcome.self) { response in
            switch response.result{
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    
    
    
}
