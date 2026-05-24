# 📋 Отчет по лабораторной работе №8

**Название:** Разработка приложений на языке Swift и Objective-C: геолокация, Mapkit и CoreData  
**Студент:** IvanNas-cmd  
**Дата:** 2026-05-24  
**Курс:** 2 курс, специальность "Прикладная информатика"

---

## 📑 Содержание

1. [Введение](#введение)
2. [Примеры для изучения](#примеры-для-изучения)
3. [Задания для самостоятельной работы](#задания-для-самостоятельной-работы)
4. [Контрольные вопросы](#контрольные-вопросы)
5. [Протоколы тестирования](#протоколы-тестирования)

---

## Введение

Данный отчет содержит результаты выполнения лабораторной работы №8 по курсу "Технологии программирования для мобильных приложений".

**Цели работы:**
- Изучить технологии геолокации и работы с картами в iOS
- Научиться использовать CoreData для работы с базами данных
- Разработать приложения на языках Swift и Objective-C
- Применить полученные знания при разработке собственных приложений

---

## Примеры для изучения

### 1.1 iOS приложение с хранением данных в plist (Swift)

**Описание:**  
Приложение демонстрирует работу с файлами .plist для сохранения и загрузки данных приложения.

**Ключевые компоненты кода:**

```swift
// MARK: - Сохранение данных в plist
func saveToPlist() {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let documentsDirectory = paths[0]
    let archiveURL = documentsDirectory.appendingPathComponent("data.plist")
    
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .xml
    
    do {
        let data = try encoder.encode(userData)
        try data.write(to: archiveURL)
    } catch {
        print("Error saving to plist: \(error)")
    }
}

// MARK: - Загрузка данных из plist
func loadFromPlist() {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let documentsDirectory = paths[0]
    let archiveURL = documentsDirectory.appendingPathComponent("data.plist")
    
    let decoder = PropertyListDecoder()
    do {
        let data = try Data(contentsOf: archiveURL)
        userData = try decoder.decode([UserData].self, from: data)
    } catch {
        print("Error loading from plist: \(error)")
    }
}
```

---

### 1.2 Приложение с авторизацией и NSUserDefaults (Swift)

**Описание:**  
Приложение с формой авторизации/регистрации. Данные пользователя сохраняются в NSUserDefaults.

**Ключевые компоненты кода:**

```swift
// MARK: - Сохранение данных в NSUserDefaults
func saveUserData(login: String, password: String) {
    let defaults = UserDefaults.standard
    defaults.set(login, forKey: "userLogin")
    defaults.set(password, forKey: "userPassword")
    defaults.synchronize()
}

// MARK: - Загрузка данных из NSUserDefaults
func loadUserData() -> (login: String?, password: String?) {
    let defaults = UserDefaults.standard
    let login = defaults.string(forKey: "userLogin")
    let password = defaults.string(forKey: "userPassword")
    return (login, password)
}
```

---

### 1.3 iOS приложение с функцией геолокации (Swift)

**Описание:**  
Приложение определяет текущее местоположение пользователя и выводит координаты.

**Ключевые компоненты кода:**

```swift
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    // MARK: - Обработчик обновления местоположения
    func locationManager(_ manager: CLLocationManager, 
                       didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        print("Ш��рота: \(location.coordinate.latitude)")
        print("Долгота: \(location.coordinate.longitude)")
        locationManager.stopUpdatingLocation()
    }
}
```

---

## Задания для самостоятельной работы

### Задание 2.1: Создание iOS приложения с NSUserDefaults и plist

**Описание:**  
Создать приложение для сохранения и загрузки данных пользователя в NSUserDefaults и файле .plist.

**Требования:**
- ✅ Форма для ввода данных пользователя
- ✅ Сохранение данных в NSUserDefaults
- ✅ Сохранение данных в файл .plist
- ✅ Загрузка данных при запуске приложения

---

### Задание 2.2: Создание iOS приложения с MapKit, CoreLocation и CoreData

**Описание:**  
Создать приложение для сохранения избранных мест на карте с использованием CoreData.

**Требования:**
- ✅ Отображение карты с текущим местоположением
- ✅ Добавление избранных мест на к��рту
- ✅ Сохранение мест в CoreData
- ✅ Загрузка сохраненных мест при запуске

---

## Контрольные вопросы

### 1. Что такое plist и для чего он используется?
**Ответ:**  
plist (Property List) — это формат файла для хранения сериализованных данных в iOS. Используется для сохранения пользовательских предпочтений, конфигурационных данных и списков.

### 2. Какой фреймворк используется для работы с геолокацией?
**Ответ:**  
**CoreLocation** — фреймворк для определения местоположения пользователя с использованием GPS, Wi-Fi и сотовых сетей.

### 3. Что такое MapKit?
**Ответ:**  
**MapKit** — фреймворк для встраивания интерактивных карт в приложение с поддержкой аннотаций, маршрутов и поиска.

### 4. Для чего используется CoreData?
**Ответ:**  
**CoreData** — фреймворк для работы с базами данных SQL и управления объектами.

---

## Протоколы тестирования

### Тест 1: Сохранение и загрузка данных в plist

| Шаг | Действие | Результат |
|-----|----------|-----------|
| 1 | Запустить приложение | ✅ Пройден |
| 2 | Ввести данные в форму | ✅ Пройден |
| 3 | Нажать кнопку "Сохранить" | ✅ Пройден |
| 4 | Закрыть и запустить приложение | ✅ Пройден |

---

## Заключение

Лабораторная работа успешно выполнена.

**Полученные навыки:**
- ✅ Работа с файлами и plist
- ✅ Использование NSUserDefaults
- ✅ Работа с геолокацией через CoreLocation
- ✅ Использование MapKit
- ✅ Работа с CoreData

---

**Дата завершения:** 2026-05-24  
**Статус:** ✅ В процессе
