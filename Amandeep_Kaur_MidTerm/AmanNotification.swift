//
//  AmanNotification.swift
//  Amandeep_Kaur_MidTerm
//
//  Created by Amandeep Kaur on 2023-02-09.
//

import Foundation
import UserNotifications

class AmanNotification {
    
    static func generaterNotification(title : String, body description : String) {
            requestAuthorization()


            let content = UNMutableNotificationContent()
            content.title = title
            content.body = description
          
            
            let trigger2 = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            
            // Create the request
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString,
                        content: content, trigger: trigger2)

            // Schedule the request with the system.
            let notificationCenter = UNUserNotificationCenter.current()
            notificationCenter.add(request) { (error) in
               if error != nil {
                  // Handle any errors.
               }
            }
            
        }
        static func requestAuthorization(){
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if let error = error {
                    //Handle the error here
                    print ("Error requesting authorization \(error)")
                }

                //Enable or disable feature based on the authorization.
            }
        }
    
}
