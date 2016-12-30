//
//  TwitterAPICalls.swift
//  LittleHelper
//
//  Created by Jordan Dixon on 27/12/2016.
//  Copyright © 2016 Jordan.Dixon. All rights reserved.
//

import Foundation
import Accounts
import Social
import SwifteriOS
import UserNotifications

final class twitterApi: NSObject, UNUserNotificationCenterDelegate {
  static let sharedInstance = twitterApi()
  
  var swifter = Swifter(consumerKey: "1A7q9yIorr990kuL0VEZMxUEz", consumerSecret: "xf3n6c7cwkjlrLJ7uSyKVBhAV4wpDFtcrg7S0mcDGNUSkS34tY")
  
  // Default to using the iOS account framework for handling twitter auth
  let useACAccount = true
  
  @objc func performAction() {
    
    if useACAccount {
      let accountStore = ACAccountStore()
      let accountType = accountStore.accountType(withAccountTypeIdentifier: ACAccountTypeIdentifierTwitter)
      
      // Prompt the user for permission to their twitter account stored in the phone's settings
      accountStore.requestAccessToAccounts(with: accountType, options: nil) { granted, error in
        guard granted else {
          return
        }
        
        let twitterAccounts = accountStore.accounts(with: accountType)!
        
        if twitterAccounts.isEmpty {
        } else {
          let twitterAccount = twitterAccounts[0] as! ACAccount
          self.swifter = Swifter(account: twitterAccount)
          self.postTweet()
        }
      }
    }
  }

  func postTweet() {
    let tweet = Sentence().tweet()
    if tweet.characters.count <= 140 {
      swifter.postTweet(status: tweet, success: { status in
        print("posted '\(tweet)")
        let date = NSDate()
        UserDefaults.standard.set(date, forKey: "TWEETDATE")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NEW_DATE"), object: nil)
      })
    } else {
      postTweet()
    }
    DispatchQueue.main.async {
      Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(self.performAction), userInfo: nil, repeats: false)
    }
  }
}
