# 🎌 Anime App

https://github.com/user-attachments/assets/bbab3e1f-3ab5-4aee-b757-6aca2e38db3b
![WhatsApp Image 2025-09-25 at 14 47 05_49e287a3](https://github.com/user-attachments/assets/3094c529-14d9-4b61-8f10-f4a7a0265d15)
![WhatsApp Image 2025-09-25 at 14 47 05_62fafe36](https://github.com/user-attachments/assets/a43a9a34-383e-4e41-85d4-b64858dea98f)
![WhatsApp Image 2025-09-25 at 14 47 05_468bff23](https://github.com/user-attachments/assets/891b5fbf-6567-4ebc-bb50-d8f1f023d2e5)


https://github.com/user-attachments/assets/8c66292d-6742-4751-9e1c-d14e3f030f77


A beautiful and modern Flutter application for anime enthusiasts to discover, browse, and explore their favorite anime series and characters.

## ✨ Features

### 🏠 **Home Screen**
- **Beautiful gradient background** with custom animations
- **Tabbed interface** with categories:
  - All
  - Popular  
  - Trending
  - New Releases
  - Top Rated
  - Upcoming
- **Anime collection display** with ratings and genres
- **Top characters showcase** featuring popular anime characters

### 📱 **Navigation**
- **Persistent bottom navigation bar** with 5 main sections:
  - 🏠 Home
  - 📚 Library  
  - 🔍 Search
  - 🌐 Internet
  - ⚙️ Settings

### 🎬 **Anime Details**
- **Detailed anime information** with high-quality images
- **Genre tags** (Dark Fantasy, Action, Adventure)
- **Watch controls** with Preview and Watch Now buttons
- **Responsive design** with beautiful layouts

### 💎 **Premium Upgrade**
- **Subscription plans** (Monthly & Yearly)
- **Ad-free experience** promotion
- **Family sharing** included
- **Cost savings** with yearly subscription

## 🛠️ Tech Stack

### **Framework & Language**
- **Flutter** 3.9.2+ (Dart)
- **Material Design** with custom theming

### **Key Dependencies**
- `flutter_bloc: ^9.1.1` - State management
- `persistent_bottom_nav_bar: ^6.2.1` - Navigation
- `flutter_svg: ^2.2.1` - Vector graphics
- `flutter_screenutil: ^5.9.3` - Responsive design
- `equatable: ^2.0.7` - Value equality

### **Architecture**
- **Clean Architecture** with feature-based folder structure
- **Custom routing** with transition animations
- **Modular components** for reusability

## 📁 Project Structure

```
lib/
├── core/
│   ├── router/           # App routing & navigation
│   ├── utils/            # App colors, styles, images
│   └── widget/           # Reusable UI components
├── features/
│   ├── home/             # Home feature
│   │   ├── data/
│   │   │   └── models/   # Anime & character models
│   │   └── presentation/
│   │       ├── pages/    # Home, Details pages
│   │       └── widgets/  # Custom UI components
│   └── upgrade_plan/     # Premium subscription feature
└── main.dart             # App entry point
```

## 🎨 Design System

### **Color Palette**
- **Primary**: `#5436F8` (Purple)
- **Background**: `#F9F8FD` (Light Purple)
- **Gradient**: `#DEE3FF` → `#F9F8FD`
- **Text**: `#18153F` (Dark Blue)
- **Container**: `#2C1E51` (Dark Purple)

### **Typography**
- Custom text styles with consistent sizing
- Responsive font scaling
- Multiple weight variations (Regular, SemiBold, Bold)

### **Components**
- Custom elevated buttons
- Animated tab bars
- Card-based layouts
- Gradient backgrounds

## 🚀 Getting Started

### **Prerequisites**
- Flutter SDK 3.9.2 or higher
- Dart SDK
- Android Studio / VS Code
- Git

### **Installation**

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/anime_app.git
   cd anime_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   `
