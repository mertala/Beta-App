//
//  emailsend.swift
//  todo
//
//  Created by Mert Ala on 28.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
import MessageUI
import SwiftUI
import UIKit



struct sendemai: View {
    var  body : some View {
        
      showMailComposer()
        
    }
}


 func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
            //Show alert informing the user
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["support@seanallen.co"])
        composer.setSubject("HELP!")
        composer.setMessageBody("I love your videos, but... help!", isHTML: false)
        
        present(composer, animated: true)
    }



extension ViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            //Show error alert
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true)
    }
}
