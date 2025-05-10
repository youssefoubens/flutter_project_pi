
# 📱 SmartLegal Maroc

SmartLegal Maroc is a **Flutter-based mobile application** built to assist Moroccan citizens by simplifying access to legal information and generating essential administrative documents. Powered by AI and designed with user accessibility in mind, it offers a secure, multilingual, and intuitive experience.

---

## 📌 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Developer Info](#developer-info)
- [Technical Details](#technical-details)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)

---

## 📄 Project Overview

SmartLegal Maroc empowers Moroccan citizens by providing:

- 🧠 **AI-powered legal assistant** for quick legal advice  
- 📃 **Document generation** via guided, step-by-step forms  
- 📚 **Access to legal FAQs and resources** in Arabic, French, and English  

---

## 🛠️ Features

### 🔐 Authentication
Secure login and registration system with validation and user-friendly UI.  
<p align="center">
  <img src="images/image1.png" width="250"/> <img src="images/image4.png" width="250"/> <img src="images/image5.png" width="250"/>
</p>

---

### 🏠 Dashboard
Simplified navigation to all core features: Legal Assistant, Documents, FAQ, and Profile.  
<p align="center"><img src="images/image6.png" width="250"/></p>

---

### 🌙 Dark Mode & Language Switch
Supports both light/dark themes and seamless switching between **Arabic**, **French**, and **English**.  
<p align="center">
  <img src="images/image7.png" width="250"/> <img src="images/image8.png" width="250"/>
</p>

---

### 🤖 AI Legal Assistant
Chatbot interface using natural language to answer legal questions in real-time.  
<p align="center"><img src="images/image3.png" width="250"/></p>

---

### 📝 Document Generator
Generate legal documents like rental contracts, passport applications, and police complaints.  
<p align="center">
  <img src="images/image11.png" width="250"/> <img src="images/image12.png" width="250"/> <img src="images/image13.png" width="250"/>
</p>

---

### 📚 Legal FAQs
Easily accessible FAQ section organized by legal categories.  
<p align="center">
  <img src="images/image9.png" width="250"/> <img src="images/image10.png" width="250"/>
</p>

---

### 👤 User Profile
Profile management with theme and language preferences.  
<p align="center"><img src="images/image6.png" width="250"/></p>

---

## 👨‍💻 Developer Info

- **Name**: Youssef Ouben Said  
- **School**: ENSET Mohammedia  
- **Program**: GLSID2 (Génie Logiciel des Systèmes d'Information Distribués)

---

## 🔧 Technical Details

### Architecture
- Clean architecture principles with feature-based organization
- State management using Provider or Riverpod

### Multilingual Support
- Arabic, French, and English
- RTL layout support for Arabic

### Theming
- Light and dark mode with Material 3

---

## 📱 Screenshots

<table>
  <tr>
    <td><img src="images/image1.png" width="200"/></td>
    <td><img src="images/image2.png" width="200"/></td>
    <td><img src="images/image3.png" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image4.png" width="200"/></td>
    <td><img src="images/image5.png" width="200"/></td>
    <td><img src="images/image6.png" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image7.png" width="200"/></td>
    <td><img src="images/image8.png" width="200"/></td>
    <td><img src="images/image9.png" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image10.png" width="200"/></td>
    <td><img src="images/image11.png" width="200"/></td>
    <td><img src="images/image12.png" width="200"/></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><img src="images/image13.png" width="200"/></td>
  </tr>
</table>

---

## 🚀 Getting Started

### Prerequisites
- Flutter 3.19 or higher
- Dart 3.0 or higher

### Installation
1. Clone the repository
```bash
git clone https://github.com/yourusername/smartlegal-maroc.git
```

---

## 📁 Project Structure

```
lib/
├── app/
│   ├── app.dart
│   ├── app_settings_provider.dart  
│   ├── localization.dart
│   └── theme.dart
├── features/
│   ├── auth/
│   ├── chatbot/
│   ├── dashboard/
│   ├── documents/
│   ├── faqs/
│   └── profile/
├── shared/
│   ├── models/
│   ├── services/
│   └── widgets/
└── main.dart
```
