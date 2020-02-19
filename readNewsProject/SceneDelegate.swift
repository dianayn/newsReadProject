//
//  SceneDelegate.swift
//  readNewsProject
//
//  Created by Diana Duan on 19/2/20.
//  Copyright © 2020 diana. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        self.window = UIWindow(windowScene: windowScene)
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}
