//
//  DataService.swift
//  StudentAdmissionSQLiteApp
//
//  Created by IshaGhevariya on 16/07/21.
//

import Foundation

class DataService {
    
    static func getDocDir() -> URL {
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print("doc dir : \(paths[0])")
        return paths[0]
    }
}
