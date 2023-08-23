//
//  SceneDelegate.swift
//  Injections
//
//  Created by Мария on 22.08.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // настройка тапбара (внизу). У меня 3 кнопки: сегодня, история, настройки
    // первое, что будет показываться - "сегодня"

    func createTodayNavigationController() -> UINavigationController {
        let todayViewController = UINavigationController(rootViewController: TodayViewController())
        todayViewController.tabBarItem = UITabBarItem(title: "Сегодня", image: UIImage(systemName: "cross.circle"), tag: 0)

       let appearanceToday = UINavigationBarAppearance()
        appearanceToday.configureWithDefaultBackground()
        todayViewController.navigationBar.standardAppearance = appearanceToday
        todayViewController.navigationBar.scrollEdgeAppearance = appearanceToday
        todayViewController.navigationBar.prefersLargeTitles = true
        todayViewController.navigationBar.backgroundColor = .white

        return todayViewController
    }

    // добавляем кнопку "настройки"

    func createSettingsNavigationController() -> UINavigationController {
        let settingsViewController = UINavigationController(rootViewController: SettingsViewController())
        settingsViewController.tabBarItem = UITabBarItem(title: "Настройки", image: UIImage(systemName: "gearshape"), tag: 0)

       let appearanceSettings = UINavigationBarAppearance()
        appearanceSettings.configureWithDefaultBackground()
        settingsViewController.navigationBar.standardAppearance = appearanceSettings
        settingsViewController.navigationBar.scrollEdgeAppearance = appearanceSettings
        settingsViewController.navigationBar.prefersLargeTitles = true
        settingsViewController.navigationBar.backgroundColor = .white

        return settingsViewController
    }

    // добавляем кнопку "история"

    func createHistoryNavigationController() -> UINavigationController {
        let historyViewController = UINavigationController(rootViewController: HistoryViewController())
        historyViewController.tabBarItem = UITabBarItem(title: "История", image: UIImage(systemName: "chart.bar.doc.horizontal"), tag: 0)

       let appearanceHistory = UINavigationBarAppearance()
        appearanceHistory.configureWithDefaultBackground()
        historyViewController.navigationBar.standardAppearance = appearanceHistory
        historyViewController.navigationBar.scrollEdgeAppearance = appearanceHistory
        historyViewController.navigationBar.prefersLargeTitles = true
        historyViewController.navigationBar.backgroundColor = .white

        return historyViewController
    }

    func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = .white
        tabBarController.tabBar.standardAppearance = tabBarAppearance
        tabBarController.tabBar.scrollEdgeAppearance = tabBarAppearance

//        цвет выбранной кнопки вместо синего по умолчанию
//        tabBarController.tabBar.tintColor = UIColor(red: 0.90, green: 0.47, blue: 0.05, alpha: 1.00)

        tabBarController.tabBar.tintColor = UIColor.black
        tabBarController.viewControllers = [createTodayNavigationController(), createSettingsNavigationController(), createHistoryNavigationController()]

        return tabBarController
    }
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let winScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: winScene)
        window.rootViewController = createTabBarController()
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

