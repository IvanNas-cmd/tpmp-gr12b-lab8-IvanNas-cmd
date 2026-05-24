//
// MARK: - Пример 1.1: iOS приложение с хранением данных в plist (Swift)
// File: ViewController.swift
// Description: Контроллер для работы с plist файлами
// Author: IvanNas-cmd
// Date: 2026-05-24
//

import UIKit

// MARK: - User Data Model
struct UserData: Codable {
    var name: String
    var email: String
    var phone: String
}

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    // MARK: - Properties
    var userData: UserData?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Загружаем данные при загрузке ViewController
        loadFromPlist()
        updateUI()
    }
    
    // MARK: - IBActions
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // Сохраняем данные в plist
        guard let name = nameTextField.text, !name.isEmpty else {
            showAlert("Ошибка", "Введите имя")
            return
        }
        
        guard let email = emailTextField.text, !email.isEmpty else {
            showAlert("Ошибка", "Введите email")
            return
        }
        
        guard let phone = phoneTextField.text, !phone.isEmpty else {
            showAlert("Ошибка", "Введите телефон")
            return
        }
        
        userData = UserData(name: name, email: email, phone: phone)
        saveToPlist()
        showAlert("Успех", "Данные сохранены в plist")
    }
    
    @IBAction func loadButtonTapped(_ sender: UIButton) {
        // Загружаем данные из plist
        loadFromPlist()
        updateUI()
        showAlert("Успех", "Данные загружены из plist")
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        // Очищаем все поля
        nameTextField.text = ""
        emailTextField.text = ""
        phoneTextField.text = ""
        userData = nil
        statusLabel.text = "Нет данных"
    }
    
    // MARK: - Private Methods
    
    /// Сохранение данных в plist файл
    private func saveToPlist() {
        guard let userData = userData else { return }
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        let archiveURL = documentsDirectory.appendingPathComponent("userData.plist")
        
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        
        do {
            let data = try encoder.encode(userData)
            try data.write(to: archiveURL)
            print("✅ Данные успешно сохранены в: \(archiveURL.path)")
        } catch {
            print("❌ Ошибка сохранения: \(error)")
        }
    }
    
    /// Загрузка данных из plist файла
    private func loadFromPlist() {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        let archiveURL = documentsDirectory.appendingPathComponent("userData.plist")
        
        let decoder = PropertyListDecoder()
        
        do {
            let data = try Data(contentsOf: archiveURL)
            userData = try decoder.decode(UserData.self, from: data)
            print("✅ Данные успешно загружены из plist")
        } catch {
            print("❌ Ошибка загрузки: \(error)")
            userData = nil
        }
    }
    
    /// Обновление интерфейса
    private func updateUI() {
        if let userData = userData {
            nameTextField.text = userData.name
            emailTextField.text = userData.email
            phoneTextField.text = userData.phone
            statusLabel.text = "✅ Данные загружены"
        } else {
            statusLabel.text = "❌ Нет данных"
        }
    }
    
    /// Вывод уведомления
    private func showAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
