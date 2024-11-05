import Foundation
import LinkKit

@objc(LinkUIModule)
class LinkUIModule: NSObject {
  private var handler: Handler?

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }

  @objc
  func show(_ token: String, callback: @escaping RCTResponseSenderBlock) {
    let vc = RCTPresentedViewController()
    self.handler = Handler(linkToken: token) { (code: LinkResultCode, errMsg: String?) in
      callback([ code.rawValue, errMsg as Any ])
    }

    self.handler?.present(from: vc!)
  }
}
