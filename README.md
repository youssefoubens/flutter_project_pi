# SmartLegal Maroc

A Flutter mobile application designed to provide legal assistance and document generation services to Moroccan citizens.

![App Logo](assets/images/logo.png)

## 📄 Project Overview

SmartLegal Maroc helps Moroccan citizens with:
- Answering legal questions through an AI-powered chatbot interface
- Generating common administrative documents through guided form interfaces
- Providing access to legal resources and frequently asked questions

## 👨‍💻 Developer Information
- **Name**: Youssef Ouben Said
- **School**: ENSET Mohammedia
- **Program**: GLSID2 (Génie Logiciel des Systèmes d'Information Distribués)

## 🛠️ Features

### 🔐 Authentication
Secure login and registration system to personalize user experience.

![Authentication Screenshot](screenshots/auth_screen.png)

### 🏠 Dashboard
Centralized navigation hub with intuitive access to all app features.

![Dashboard Screenshot](screenshots/dashboard.png)

### 🤖 AI Legal Assistant
Interactive chatbot interface for legal consultations.

![Chatbot Screenshot](screenshots/chatbot.png)

### 📝 Document Generator
Multi-step forms to generate legal documents customized to user needs.

![Document Generator Screenshot](screenshots/document_generator.png)

### 📚 Legal FAQs
Comprehensive database of frequently asked legal questions organized by category.

![FAQs Screenshot](screenshots/faqs.png)

### 👤 User Profile
User profile management with theme and language preferences.

![Profile Screenshot](screenshots/profile.png)

## 🔧 Technical Details

### Architecture
- Clean architecture principles with feature-based organization
- State management using Provider/Riverpod

### Multilingual Support
- Arabic, French, and English language options
- Right-to-left (RTL) layout support for Arabic

### Theming
- Light and dark mode support
- Material 3 design language implementation

## 📱 Screenshots

<table>
  <tr>
    <td><img src="screenshots/screen1.png" alt="Screenshot 1" width="200"/></td>
    <td><img src="screenshots/screen2.png" alt="Screenshot 2" width="200"/></td>
    <td><img src="screenshots/screen3.png" alt="Screenshot 3" width="200"/></td>
  </tr>
  <tr>
    <td><img src="screenshots/screen4.png" alt="Screenshot 4" width="200"/></td>
    <td><img src="screenshots/screen5.png" alt="Screenshot 5" width="200"/></td>
    <td><img src="screenshots/screen6.png" alt="Screenshot 6" width="200"/></td>
  </tr>
</table>

## 🚀 Getting Started

### Prerequisites
- Flutter 3.19 or higher
- Dart 3.0 or higher

### Installation
1. Clone the repository
```bash
git clone https://github.com/yourusername/smartlegal-maroc.git
```

### Project Structure
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
