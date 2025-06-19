# 🚗 GCP Car App

The **GCP Car App** is a car buying and selling mobile application built using **Flutter**.  
This project is created **only for study purposes** to help understand Flutter development, Firebase Firestore integration, responsive UI design, and third-party package usage.

---

## 📖 Project Description

This application allows an **Admin** to add car details including images, model names, and pricing.  
**Users** can then browse these car listings, mark them as favorites, and simulate a buying action.

The **future vision** is to allow **any user** to attach basic car information and images, and the app will automatically generate a **beautiful and budget-friendly listing** using data processing.  
All data is stored permanently using **Firebase Firestore**.

---

## ✨ Features

- 🧑‍💼 Admin can add new cars with images and information
- 👥 Users can view, favorite, and "buy" cars
- 🖼️ Pick car images from device using `image_picker`
- 🖲️ Carousel-style image display using `carousel_slider`
- 🔥 Fully **responsive UI** using `flutter_screenutil`
- 📬 Feedback via toasts using `toastification`
- ↔️ Swipe-to-action using `flutter_slidable`
- 📦 Firestore used for real-time & permanent data storage
- 🚀 Designed to support future auto-generated listings

---

## 📱 Technologies & Packages Used

### ⚙️ Core Technologies:
- Flutter SDK
- Dart Programming Language
- Firebase (Firestore)

### 📦 Flutter Packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^5.9.0           # For responsive UI
  image_picker: ^1.1.0                 # For selecting images from gallery/camera
  carousel_slider: ^4.2.1              # For displaying car images in a carousel
  toastification: ^1.2.0               # For toast notifications
  flutter_slidable: ^3.0.0             # For swipe-to-delete or action options

```

---

MIT License

Copyright (c) 2025 [Taksh Malaviya]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

