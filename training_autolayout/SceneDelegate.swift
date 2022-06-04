//
//  SceneDelegate.swift
//  training_autolayout
//
//  Created by Айганым Оспан on 03.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window?.windowScene = windowScene
 
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let swipingVC = SwipingController(collectionViewLayout: layout)
        window?.rootViewController = swipingVC  
        
        window?.makeKeyAndVisible()
    }



}

