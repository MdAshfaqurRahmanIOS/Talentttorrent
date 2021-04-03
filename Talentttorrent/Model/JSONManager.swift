//
//  JSONManager.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//

import UIKit

protocol DataTakenProtocol {
    func containDataFromAPI(jsonModel: JSONModel)
}


struct JSONManager {
//    later use
    var delegate: DataTakenProtocol?
    let appConnect = "https://talenttorrent.com/api/v1/"
    
    func addFullURL (lastPart: String){
        let addcityConcat = "\(appConnect)\(lastPart)"
        print(addcityConcat)
        receiveDataFormApi(data1: addcityConcat)
    }
 
    
    func receiveDataFormApi (data1: String) {

        if let url = URL(string: data1) {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in

                if error != nil {
                    print(error!)
                    print("my+error")
                    return
                }
                if let collectData = data {
                      let convertdata = String(data: collectData, encoding: .utf8)
                    print("my+query1")
                     print(collectData)
                    print("my+query2")
                     print(convertdata!)


                    if let finalData = self.perseJSON(decodin: collectData) {
                        print("customer mirror")
                        
                        print(finalData.data.customMirror)
//                        later use
                        delegate?.containDataFromAPI(jsonModel: finalData)
                    }
                }
            }
            task.resume()
        }
    }
    
    
    
    func perseJSON(decodin: Data) -> JSONModel? {
        let jsonDecoder = JSONDecoder()

        do {
            let storeDecoder = try jsonDecoder.decode(JSONData.self, from: decodin)

            let data = storeDecoder.data

//            var array = [UIImage]()
//            for articles in articles {
//
//                if let imageUrlString = articles.urlToImage {
//
//                    if let imageURL = URL(string: imageUrlString) {
//                        DispatchQueue.global().async {
//                            let data = try? Data(contentsOf: imageURL)
//                            if let data = data {
//                                let image = UIImage(data: data)
//                                DispatchQueue.main.async {
//                                    array.append(image!)
//                                }
//                            }
//                        }
//                    }
//                }
//                print(articles.urlToImage ?? "")
//            }


            let jsonModel = JSONModel(data: data)
            return jsonModel

        } catch {
            print(error)
            return nil
        }
    }
    
    
    
}
