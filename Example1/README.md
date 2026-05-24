# Пример 1.1: iOS приложение с хранением данных в plist (Swift)

## Описание
Это приложение демонстрирует работу с файлами .plist для сохранения и загрузки данных приложения.

## Функциональность
- ✅ Сохранение данных в файл .plist
- ✅ Загрузка данных из файла .plist
- ✅ Отображение сохраненных данных
- ✅ Очистка данных

## Использованные фреймворки
- Foundation
- UIKit

## Ключевые компоненты

### 1. Model (UserData)
```swift
struct UserData: Codable {
    var name: String
    var email: String
    var phone: String
}
```

### 2. Сохранение данных
```swift
let encoder = PropertyListEncoder()
encoder.outputFormat = .xml
let data = try encoder.encode(userData)
try data.write(to: archiveURL)
```

### 3. Загрузка данных
```swift
let decoder = PropertyListDecoder()
let data = try Data(contentsOf: archiveURL)
userData = try decoder.decode(UserData.self, from: data)
```

## Ф��йлы проекта
- `ViewController.swift` - основной контроллер
- `userData.plist` - файл с сохраненными данными

## Протоколы тестирования

| Тест | Действие | Результат |
|------|----------|----------|
| 1 | Введить данные и нажать Save | Данные сохранены в plist |
| 2 | Закрыть приложение | Приложение закрывается |
| 3 | Открыть приложение | Данные загружены автоматически |
| 4 | Нажать Load | Данные загружены из plist |
| 5 | Нажать Clear | Все поля очищены |

## Ресурсы
- [PropertyListEncoder Documentation](https://developer.apple.com/documentation/foundation/propertylistencoder)
- [Codable Protocol](https://developer.apple.com/documentation/swift/codable)
