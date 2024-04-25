//
//  SceneDelegate.swift
//  Fetch Rewards
//
//  Created by Victor Huang on 4/19/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UINavigationController(rootViewController: MealViewController())
        self.window = window
        self.window?.makeKeyAndVisible()
    }
    
    // Scene is released
    func sceneDidDisconnect(_ scene: UIScene) {
    }
    
    // Scene transitions from inactive to active
    func sceneDidBecomeActive(_ scene: UIScene) {
    }
    
    // Scene transitions from inactive to active
    func sceneWillResignActive(_ scene: UIScene) {
    }

    // Scene transitions from background to foreground
    func sceneWillEnterForeground(_ scene: UIScene) {
    }
    
    // Scene transitions from foreground to background
    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

