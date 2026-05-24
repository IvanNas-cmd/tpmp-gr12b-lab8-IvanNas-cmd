# Лабораторная работа №8: Разработка приложений на Swift и Objective-C

**Дисциплина:** Технологии программирования для мобильных приложений  
**Курс:** 2 курс  
**Специальность:** Прикладная информатика  
**Студент:** IvanNas-cmd

---

## 📑 Содержание

1. [Описание](#описание)
2. [Структура репозитория](#структура-репозитория)
3. [Примеры для изучения](#примеры-для-изучения)
4. [Задания для самостоятельной работы](#задания-для-самостоятельной-работы)
5. [Отчет](#отчет)
6. [Статус выполнения](#статус-выполнения)

---

## Описание

Данная лабораторная работа посвящена разработке iOS приложений с использованием:
- **Геолокации и MapKit** для определения местоположения
- **CoreData** для работы с базами данных
- **NSUserDefaults и plist** для хранения данных
- Языки программирования: **Swift** и **Objective-C**

---

## 📁 Структура репозитория

```
├── main                          # Основная ветка с описанием и ссылками
├── example-task1                 # Пример 1.1: Хранение данных в plist (Swift)
├── example-task2                 # Пример 1.2: NSUserDefaults и авторизация (Swift)
├── example-task3                 # Пример 1.3: Геолокация (Swift)
├── example-task4                 # Пример 1.4: MapKit и CoreLocation (Swift)
├── example-task5                 # Пример 1.5: Система бронирования билетов (Objective-C)
├── example-task6                 # Пример 1.6: CoreData (Swift)
├── example-task7                 # Пример 1.7: Прогноз погоды (Swift)
├── feature-task2-1               # Задание 2.1: NSUserDefaults + plist
├── feature-task2-2               # Задание 2.2: MapKit + CoreLocation + CoreData
└── docs/                          # Папка с отчетом и документацией
    └── REPORT.md                 # Отчет по лабораторной работе
```

---

## 📚 Примеры для изучения

### 1.1 iOS приложение с хранением данных в plist (Swift)
- **Ветка:** `example-task1`
- **Описание:** Изучение работы с файлами .plist для сохранения данных
- **Видео:** [YouTube](https://www.youtube.com/watch?v=Xn0ZO5eXSvY)

### 1.2 Приложение с авторизацией и NSUserDefaults (Swift)
- **Ветка:** `example-task2`
- **Описание:** Создание формы авторизации с сохранением данных в NSUserDefaults
- **Компоненты:** UITextField, UIButton, UISwitch, Segmented Control

### 1.3 iOS приложение с функцией геолокации (Swift)
- **Ветка:** `example-task3`
- **Описание:** Определение местоположения пользователя с использованием CoreLocation
- **Видео:** [YouTube](https://www.youtube.com/watch?v=eFf4MWBbEZQ)

### 1.4 iOS приложение с MapKit и CoreLocation (Swift)
- **Ветка:** `example-task4`
- **Описание:** Отображение карты и определение местоположения по координатам
- **Фреймворки:** MapKit, CoreLocation

### 1.5 Система бронирования билетов (Objective-C)
- **Ветка:** `example-task5`
- **Описание:** Приложение для бронирования авиабилетов с использованием CoreData
- **Компоненты:** MapKit, CoreLocation, CoreData, SQLite база данных

### 1.6 iOS приложение с CoreData (Swift)
- **Ветка:** `example-task6`
- **Описание:** Приложение для управления списком студентов с сохранением в CoreData
- **Функциональность:** Добавление, удаление, сохранение данных

### 1.7 iOS приложение прогноза погоды (Swift)
- **Ветка:** `example-task7`
- **Описание:** Приложение для получения и отображения прогноза погоды
- **API:** Интеграция с погодным API

---

## 🎯 Задания для самостоятельной работы

### Задание 2.1: NSUserDefaults + plist
- **Ветка:** `feature-task2-1`
- **Описание:** Создание iOS приложения с хранением данных в NSUserDefaults и файле .plist
- **Требования:** 
  - Форма для ввода и сохранения данных
  - Загрузка данных при запуске приложения
  - Экспорт/импорт данных в/из plist файла

### Задание 2.2: MapKit + CoreLocation + CoreData
- **Ветка:** `feature-task2-2`
- **Описание:** Создание iOS приложения с использованием MapKit, CoreLocation и CoreData
- **Требования:**
  - Отображение карты с текущим местоположением
  - Сохранение избранных мест в CoreData
  - Работа с геолокацией

---

## 📄 Отчет

**Ссылка на полный отчет:** [docs/REPORT.md](docs/REPORT.md)

Отчет содержит:
- ✅ Описание каждого примера и задания
- ✅ Ключевые фрагменты кода
- ✅ Скриншоты приложений в симуляторе
- ✅ Ответы на контрольные вопросы
- ✅ Протоколы тестирования

---

## 📊 Ста��ус выполнения

| Компонент | Статус | Ветка |
|-----------|--------|-------|
| Пример 1.1 | 🔄 В процессе | `example-task1` |
| Пример 1.2 | ⏳ Не начато | `example-task2` |
| Пример 1.3 | ⏳ Не начато | `example-task3` |
| Пример 1.4 | ⏳ Не начато | `example-task4` |
| Пример 1.5 | ⏳ Не начато | `example-task5` |
| Пример 1.6 | ⏳ Не начато | `example-task6` |
| Пример 1.7 | ⏳ Не начато | `example-task7` |
| Задание 2.1 | ⏳ Не начато | `feature-task2-1` |
| Задание 2.2 | ⏳ Не начато | `feature-task2-2` |

---

## 📋 Требования к оформлению

- ✅ Исходный код содержит комментарии в стиле Markdown
- ✅ Используются PRAGMA комментарии
- ✅ Код оформлен согласно руководству стиля:
  - **Swift:** [RMR Swift Style Guide](https://github.com/RedMadRobot/RMR-swift-style-guide)
  - **Objective-C:** [Objective-C Style Guide](https://github.com/DigDes/objective-c-style-guide)

---

## 🔗 Ссылки на ресурсы

### Документация
- [CoreLocation Documentation](https://developer.apple.com/documentation/corelocation/)
- [MapKit Documentation](https://developer.apple.com/documentation/mapkit/)
- [CoreData Documentation](https://developer.apple.com/documentation/coredata/)

### Стиль кода
- [Swift Style Guide](http://ilya2606.ru/?p=1846)
- [Objective-C Style Guide](https://github.com/raywenderlich/objective-c-style-guide)

---

**Последнее обновление:** 2026-05-24
