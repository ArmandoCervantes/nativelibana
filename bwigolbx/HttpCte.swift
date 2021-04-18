//
//  HttpCte.swift
//  bwigolbx
//
//  Created by Armando Cervantes on 17/04/21.
//

import Foundation

final class HttpCte {
    
    
    func postReq(urli: String,params: String) -> Void {
        guard let url = URL(string: urli) else{
            fatalError("errorxxx")
        }
        let payload = params
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = payload.data(using: String.Encoding.utf8)
        let session = URLSession.shared
        session.dataTask(with: request){(data, response, error) in
            if let data = data {
                        
                    do{
                        
                        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                            if let status = json["message"] {
                                print(status)
                            }else{
                                print("xxx...\(json)")
                            }
                        }else{
                            print("no existe")
                        }
                    }catch{
                        print("error....\(error)")
                    }
                    
//                }
            }else {
                print(error ?? "Error xxxx")
            }
        }.resume()
    }
    func getReq(){
        guard let url = URL(string:"https://bwigo.com/anago/class.api.php?key=123/*test") else{
            fatalError("Error generated....XXX")
            
        }
        let session = URLSession.shared
        session.dataTask(with: url) {(data,response,error) in
            if let data = data {
                do{
                    
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        if let status = json["message"] {
                            print(status)
                        }else{
                            print("xxx...\(json)")
                        }
                    }
                   /* if let dict = json as? [String : Any] {
                        ////FOR SINGLE VALUES
                        if let value = dict["status"] as? String{
                                print("json::::\(value)")
                            
                        }else{
                            print("no hay datos\(json)")
                        }
                        
                    }*/
                }catch{
                    print("error__\(error)")
                }

            }
        }.resume()
     
    }
    
}
