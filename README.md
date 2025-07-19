# GroceryMart - Online Grocery Shopping App

A Flutter-based online grocery shopping app featuring modern architecture, persistent cart and favorites, and smooth onboarding and authentication experience.

## 🚀 Features Implemented

### ✅ Core Features

* **User Experience**

  * Splash screen
  * Onboarding flow
  * Login & Signup with form validation

* **Product Display**

  * Home screen with featured products
  * Product list by category
  * Product cards with image, name, and price

* **Shopping Cart**

  * Add and remove items from cart
  * View total and quantity of each item
  * Cart persistence using `SharedPreferences`

* **Favorites**

  * Add/remove products to favorites
  * View and manage your favorite products

## 🧠 Technical Stack

* **Architecture:** MVVM (Model-View-ViewModel)
* **State Management:** BLoC pattern (`flutter_bloc`)
* **Local Persistence:** `SharedPreferences` for cart and favorites
* **Network:** Simulated or mock data (can be extended to APIs)
* **Navigation:** Flutter `Navigator` with named routes

---

## 📱 Screenshots

*  Splash  | Onboarding | Signin | Login | Signup                        
![IMG-20250719-WA0022](https://github.com/user-attachments/assets/41c5ae10-c206-48bf-9b3c-7eb48ef2ee53)
![IMG-20250719-WA0025](https://github.com/user-attachments/assets/a5540d47-5869-4509-9198-abe156c3505f)
![IMG-20250719-WA0036](https://github.com/user-attachments/assets/8afce391-b886-4a25-855a-d065bc4a00ee)
![IMG-20250719-WA0027](https://github.com/user-attachments/assets/88e1e5d8-2064-4451-8aab-5ec71d432966)
![IMG-20250719-WA0023](https://github.com/user-attachments/assets/2503362b-dfee-4821-98dc-f9bc6eed4909)
![IMG-20250719-WA0037](https://github.com/user-attachments/assets/07ae7376-44d1-4e49-bb79-c5cafa0032bc)
![IMG-20250719-WA0020](https://github.com/user-attachments/assets/44b89b0b-7b9f-4ceb-9454-3e3cc4243619)


*  Home Screen | Products by Category

![IMG-20250719-WA0026](https://github.com/user-attachments/assets/1321bffe-0b6f-4e08-b63b-9c7c52c53681)


*  Home Screen | Products by Category

![IMG-20250719-WA0021](https://github.com/user-attachments/assets/baa71946-6873-47bc-8da7-cc75e17e5697)


*  Cart

![IMG-20250719-WA0038](https://github.com/user-attachments/assets/89ff2f67-11d0-48b9-ba39-a38d74dab707)


*  Favourites

![IMG-20250719-WA0019](https://github.com/user-attachments/assets/08218c2b-1d6a-421c-936c-70a5a554c9db)


## 🛠 Getting Started

### Prerequisites

* Flutter SDK (latest stable)
* Dart SDK
* Android Studio / VS Code with Flutter plugin

### Installation

# Clone the repository
git clone https://github.com/your-username/grocerymart.git

# Navigate to the project directory
cd grocerymart

# Install dependencies
flutter pub get

# Run the app
flutter run

## 📁 Project Structure

* lib/
* ├── config/
* │   ├── components/
* │   ├── routes/
* ├── models/
* │   ├── product_model/
* ├── utils/
* ├── services/
* │   ├── cart_services/
* │   ├── splash/
* ├── view/
* │   ├── home/
* │   ├── login/
* │   └── onboarding/
* │   ├── signin/
* │   ├── signup/
* │   └── splash/
* └── view_model/
    * ├── cart_bloc/
    * ├── home_bloc


## 📦 Dependencies Used

 *  google_fonts: ^6.2.1
 *  flutter_svg: ^2.2.0
 *  country_code_picker: ^3.3.0
 *  bloc: ^9.0.0
 *  flutter_bloc: ^9.1.1
 *  equatable: ^2.0.7
 *  freezed_annotation: ^3.0.0
 *  json_annotation: ^4.9.0
 *  freezed: ^3.0.6
 *  shared_preferences: ^2.5.3

* dev_dependencies:
  * json_serializable: ^6.9.5
  * build_runner: ^2.5.4
  * freezed: ^3.0.6


## ⚙️ Technical Decisions

* **BLoC State Management**
  Predictable and scalable for managing feature-based logic.

* **MVVM Architecture**
  Clear separation of concerns and reusable view models.

* **SharedPreferences**
  For lightweight and quick local storage.

* **Named Routes**
  Easier to manage navigation across multiple pages.


## 🧩 Challenges & Solutions

* **Cart Persistence**

  * **Problem**: Keep cart state even after app restart
  * **Solution**: Sync app state with `SharedPreferences` via BLoC

* **Complex State Handling**

  * **Problem**: Managing multiple UI + logic layers
  * **Solution**: Modular BLoC structure and clean MVVM separation

* **UI Reusability**

  * **Problem**: Maintain consistent UI across views
  * **Solution**: Built a custom shared widget library in `core/widgets`

---

## ⏳ Time Breakdown

| Task                                          | Time  |
| --------------------------------------------- | ----- |
| Setup + Auth Flow                             | Day 1 |
| Product Display + Category View               | Day 2 |
| Cart + Favorites + Persistence + Final Polish | Day 3 |


## 🔮 Future Improvements

* 🔍 Product Search
* 📄 Product Detail Page
* ➕ Quantity selector in Cart
* ✨ Animations & Transitions
* 🧪 Unit & Widget Testing
* 🔒 Role-based authentication (Admin vs User)


## 👤 Author

**Adnan**
📧 adnantech.dev@gmail.com


## 📄 License

This project is for assessment purposes only and not for commercial use.

