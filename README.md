# 🐾 PetFinder App

## 🎯 Overview
**PetFinder** is a Flutter-based mobile application that allows users to explore and learn more about different cat breeds using **The Cat API**.  
In this version, the app focuses on **displaying a list of cats (Home Page)** and **showing detailed information** for each selected pet.

---
## 📽️ Demo
### 📱 Mobile Version:
[🔗 Click here to watch the demo video]()

---

## 🚀 Features Implemented
✅ **View Pets** – Display a list of cat breeds fetched from *The Cat API*.  
✅ **View Details** – View detailed information about each breed (name, description, weight, life span, origin, etc.).  
✅ **Clean Architecture (MVVM)** – Implemented using a clear separation between Model, View, and ViewModel (Cubit).  
✅ **Dio** – Used for handling HTTP requests efficiently.  
✅ **Unit & Widget Tests** – Implemented to ensure service logic, Cubit states, and UI rendering are all working correctly.  
✅ **GitHub Flow** – Followed a professional Git branching workflow (feature branches, pull requests, and clean commits).

---

## 🧠 What I Learned
Through building this project, I practiced and learned:
- Writing **Unit Tests** and **Widget Tests** in Flutter.  
- Applying **MVVM architecture** with Cubit for state management.  
- Using **Dio** for structured API integration.  
- Managing project workflow using **GitHub Flow** effectively.  

---

## 🧩 Technologies Used
- **Flutter** 🐦  
- **Dart** 💻  
- **Dio** 🌐  
- **Bloc / Cubit** ⚙️  
- **The Cat API** 🐱  
- **Git & GitHub Flow** 🌱  
- **Flutter Test Framework** 🧪  

---

## 📸 Preview
> _In this version, the Home and Details screens are implemented._  
_(You can add screenshots or GIFs of your app here)_

---

## 🏗️ Project Structure (MVVM)
```bash

lib/
│
├── features/
│ └── home/
│ ├── data/
│ │ └── service/ # API and Dio service files
│ ├── domain/
│ │ └── models/ # Models (CatBreedModel, WeightModel)
│ ├── presentation/
│ │ ├── manager/ # Cubit + States
│ │ ├── screens/ # UI Screens (Home, Details)
│ │ └── widgets/ # Reusable UI components
│
├── core/ # Constants, Styles, Utils, etc.
└── main.dart
ظظ
