//
//  URLSession+NotificationsDemo.swift
//  NotificationsDemo
//
//  Created by Will Ellis on 6/17/16.
//  Copyright © 2016 Will Ellis. All rights reserved.
//

import Foundation

extension URLSession {
    
    class func getImage(atURL url: URL, withCompletionHandler completionHandler: (Data?, NSError?) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            completionHandler(data, error)
        }
        dataTask.resume()

    }
}
