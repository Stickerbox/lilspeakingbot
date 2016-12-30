//
//  AuthViewController.swift
//

import UIKit
import Accounts
import UserNotifications

class AuthViewController: UIViewController {
  
  @IBOutlet weak var tweetHour: UILabel!
  @IBOutlet weak var tweetMinute: UILabel!
  @IBOutlet weak var status: UILabel!

  override func viewDidLoad() {

    let center = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound]
    
    center.requestAuthorization(options: options) {
      (granted, error) in
      if !granted {
        print("Something went wrong")
      }
    }
    
    updateView()
    NotificationCenter.default.addObserver(self, selector: #selector(updateView), name: NSNotification.Name(rawValue: "NEW_DATE"), object: nil)
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    updateView()
    status.text = "@littlespeakingbot"
  }

  func updateView() {
    guard let date = UserDefaults.standard.object(forKey: "TWEETDATE") as! NSDate? else { return }
    
    var hour = String(Calendar.current.component(.hour, from: date as Date))
    var minute = String(Calendar.current.component(.minute, from: date as Date))
    
    if hour.characters.count == 1 {
      hour = "0\(hour)"
    }
    
    if minute.characters.count == 1 {
      minute = "0\(minute)"
    }
    
    tweetHour.text = "\(hour)"
    tweetMinute.text = "\(minute)"
    
    status.text = "success"
  }
  
  @IBAction func didTouchUpInsideLoginButton(_ sender: AnyObject) {
    twitterApi.sharedInstance.performAction()
  }
  
}
