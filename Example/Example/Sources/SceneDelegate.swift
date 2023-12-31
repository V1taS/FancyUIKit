//
//  SceneDelegate.swift
//  NotificationsExample
//
//  Created by Vitalii Sosin on 08.07.2022.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return }
    let window = UIWindow(windowScene: scene)
    let rootViewController = CellsScreenAssembly()
      .createModule(keyboardService: DefaultKeyboardService())
    window.overrideUserInterfaceStyle = .light
    window.makeKeyAndVisible()
    window.rootViewController = UINavigationController(rootViewController: rootViewController)
    self.window = window
  }
}
