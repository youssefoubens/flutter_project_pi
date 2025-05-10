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

![Authentication Screenshot](images/image1.png)
#### validate form
![Login form with Email and Password fields, featuring Se connecter (Login) button and Pas de compte? Créer un compte (No account? Create an account) link below in a clean white interface on mobile device](images/image1.png)
![Login form with Email and Password fields in French (Mot de passe), a blue Se connecter (Login) button, and Pas de compte? Créer un compte (No account? Create an account) link below, displayed on a smartphone with a clean white interface](images/image1.png)
### 🏠 Dashboard
Centralized navigation hub with intuitive access to all app features.

![Mobile app dashboard showing four navigation icons at bottom: Assistant juridique (Legal Assistant), Documents, FAQ, and Profil (Profile). The Profil icon is highlighted in blue indicating the current section](images/image6.png)
### dark mode
![Profile screen in dark mode showing user information with profile picture icon, personal information section displaying Mohamed Amine as username and contact@example.com email, parameters section with Dark Mode toggle switched on and language set to FR with dropdown, and a Déconnexion (Logout) button at bottom](images/image7.png)
### switch to arabic language
![Profile screen in dark mode with Arabic interface showing الملف الشخصي (Personal Profile) header, user icon, المعلومات الشخصية (Personal Information) section with Mohamed Amine as username, contact@example.com email, الإعدادات (Settings) section with الوضع المظلم (Dark Mode) toggle enabled, and language selector set to AR with globe icon](images/image8.png)

### 🤖 AI Legal Assistant
Interactive chatbot interface for legal consultations.

![Legal assistant chatbot interface showing a conversation in French with grey message bubbles. The assistant says Bonjour, je suis votre assistant juridique. Comment puis-je vous aider aujourd'hui? (Hello, I am your legal assistant. How can I help you today?). The user responds with hello. The assistant then replies with Pour ce type de problème, vous devez contacter le tribunal de première instance de votre ville. Apportez votre CIN et tous les documents relatifs à votre cas (For this type of problem, you must contact the first instance court of your city. Bring your ID card and all documents related to your case). A message input field appears at bottom with text Tapez votre message... (Type your message...) with a microphone icon and navigation buttons below.](images/image3.png)

### 📝 Document Generator
Multi-step forms to generate legal documents customized to user needs.

![Mobile app document generator screen showing three document options: Contrat de Location (Generate a rental contract compliant with Moroccan law), Demande de Passeport (Moroccan passport application form), and Plainte (Template for filing a complaint at police station). Each option has a right arrow indicator and appropriate icons. Navigation bar at bottom displays Assistant Juridique, Documents, FAQ, and Profil options](images/image11.png)
![Rental contract form interface showing a three-step process with step 1 highlighted. The form displays Personal Information fields including Nom Complet (Full Name), CIN (National ID), and Adresse (Address) input boxes. At the bottom are blue Continuer (Continue) and grey Annuler (Cancel) buttons. Steps 2 and 3 labeled Détails du Document (Document Details) and Confirmation are shown below but not yet active.](images/image12.png)
![Document preview screen showing a rental contract form with empty fields including Nom (Name), CIN (National ID), Adresse (Address), Date, Lieu (Place), and Adresse du Bien (Property Address). Below the preview is a note stating Ce document est un aperçu. Le document final sera généré au format PDF (This document is a preview. The final document will be generated in PDF format) and a blue Générer le Document (Generate Document) button at the bottom.](images/image13.png)

### 📚 Legal FAQs
Comprehensive database of frequently asked legal questions organized by category.

![FAQ Juridique interface showing expandable legal categories with Droit de la Famille (Family Law) and Quel est le délai de préavis pour un licenciement? (What is the notice period for dismissal?) questions. The Droit du Travail (Labor Law) category is currently expanded. Navigation bar at bottom displays Assistant Juridique, Documents, FAQ (highlighted), and Profil options](images/image9.png)
![FAQ Juridique screen showing expandable legal question sections. Family Law section displays Quelles sont les conditions pour divorcer au Maroc? (What are the conditions for divorce in Morocco?) with partial answer Le divorce au Maroc est régi par le Code de la famille... Another section shows Comment faire une demande de pension alimentaire? (How to request alimony?) with partial answer La demande de pension alimentaire se fait auprès du tribunal... Navigation bar at bottom with Assistant Juridique, Documents, FAQ (highlighted), and Profil options](images/image10.png)

### 👤 User Profile
User profile management with theme and language preferences.

![Profile screen showing user information with light blue avatar icon at top. Personal Information section displays Mohamed Amine as username with Utilisateur label underneath, and contact@example.com email address. Parameters section includes Dark Mode toggle switch (currently off) and Language dropdown set to FR. Déconnexion (Logout) button at bottom. Navigation bar shows four icons with Profile tab currently active.](images/image6.png)

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
    <td><img src="images/image1.png" alt="Login Screen" width="200"/></td>
    <td><img src="images/image2.png" alt="Registration Screen" width="200"/></td>
    <td><img src="images/image3.png" alt="Legal Assistant" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image4.png" alt="Dashboard View" width="200"/></td>
    <td><img src="images/image5.png" alt="Profile Light Mode" width="200"/></td>
    <td><img src="images/image6.png" alt="User Dashboard" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image7.png" alt="Profile Dark Mode" width="200"/></td>
    <td><img src="images/image8.png" alt="Arabic Interface" width="200"/></td>
    <td><img src="images/image9.png" alt="FAQ Categories" width="200"/></td>
  </tr>
  <tr>
    <td><img src="images/image10.png" alt="FAQ Expanded View" width="200"/></td>
    <td><img src="images/image11.png" alt="Document Generator" width="200"/></td>
    <td><img src="images/image12.png" alt="Document Form" width="200"/></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><img src="images/image13.png" alt="Document Preview" width="200"/></td>
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
