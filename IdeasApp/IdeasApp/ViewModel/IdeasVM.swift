//
//  IdeasVM.swift
//  IdeasApp
//
//  Created by Wiktor Witkowski on 15/03/2024.
//

import Foundation
import Alamofire

class IdeasVM : ObservableObject{
    
    @Published var jokes = [Value]()
    
    init(){
        getIdeas(count: 1)
    }
    
    func getIdeas(count: Int) {
        
        AF.request("http://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result{
                
            case  .success(let datas):
                let joke = datas.value
                self.jokes += joke
            case .failure(let error):
                print(error)
                
            }
        }
        
        
    }
}
