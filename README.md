# 👥 Çalışan Takip Uygulaması

Bu proje, SwiftUI ve MVVM mimarisi kullanılarak geliştirilmiş bir iOS çalışan yönetim uygulamasıdır. Uygulama, iOS geliştirme öğrenme sürecimin önemli bir basamağı olarak hazırlanmıştır.

## 📚 Öğrenme Süreci

Bu proje, SwiftUI ve iOS geliştirme konusundaki öğrenme yolculuğumun bir parçasıdır. Uygulama geliştirme sürecinde aşağıdaki konuları pratik ederek öğrendim:

- **SwiftUI Framework**: Modern iOS arayüz geliştirme
- **MVVM Mimarisi**: Model-View-ViewModel deseni ile kod organizasyonu
- **State Management**: `@State`, `@StateObject`, `@ObservedObject` kullanımı
- **Navigation**: NavigationStack ve NavigationLink ile sayfa geçişleri
- **Form ve List Yapıları**: Kullanıcı etkileşimli formlar ve liste görünümleri
- **Swift Temelleri**: Struct, Class, Protocol kullanımı

## ✨ Özellikler

### 🔍 Çalışan Listesi
- Tüm çalışanların listelenmesi
- Her çalışan için görsel avatar ikonu
- Çalışan adı ve pozisyon bilgilerinin gösterimi
- Swipe-to-edit özelliği ile hızlı düzenleme

### ➕ Yeni Çalışan Ekleme
- Form tabanlı yeni çalışan ekleme ekranı
- Ad, pozisyon ve yaş bilgilerinin girilmesi
- Validasyon ve veri kontrolü

### ✏️ Çalışan Düzenleme
- Mevcut çalışan bilgilerinin güncellenmesi
- Form üzerinden kolay düzenleme
- Değişikliklerin anında yansıması

### 📋 Çalışan Detay Sayfası
- Çalışan bilgilerinin detaylı görüntülenmesi
- Tab yapısı ile farklı bilgi kategorileri:
  - **Bilgiler**: Temel çalışan bilgileri
  - **Notlar**: Çalışan notları (gelecek özellik)
  - **Görevler**: Çalışan görevleri (gelecek özellik)
- Modern ve kullanıcı dostu arayüz tasarımı

## 🏗️ Proje Yapısı

```
CalisanTakipUygulamasi/
├── Models/
│   └── Employee.swift              # Çalışan veri modeli
├── ViewModels/
│   └── EmployeeListViewModel.swift # İş mantığı ve state yönetimi
├── Views/
│   ├── EmployeeListView.swift      # Ana liste görünümü
│   ├── AddEmployeeView.swift       # Yeni çalışan ekleme ekranı
│   ├── EditEmployeeView.swift      # Çalışan düzenleme ekranı
│   └── EmployeeDetailView.swift    # Çalışan detay ekranı
└── CalisanTakipUygulamasiApp.swift # Uygulama giriş noktası
```

## 🎯 Kullanılan Teknolojiler ve Kavramlar

### SwiftUI Bileşenleri
- `NavigationStack`: Sayfa navigasyonu
- `List`: Liste görünümü
- `Form`: Form yapıları
- `TextField`: Metin girişi
- `Button`: Buton etkileşimleri
- `Picker`: Tab seçimi
- `ScrollView`: Kaydırılabilir içerik

### State Management
- `@State`: Yerel view state'i
- `@StateObject`: ViewModel'in yaşam döngüsü yönetimi
- `@ObservedObject`: ViewModel'i dinleme
- `@Published`: Observable değişiklikler

### Mimari Desenler
- **MVVM (Model-View-ViewModel)**: Kod organizasyonu ve ayrımı
- **ObservableObject**: Reactive state yönetimi
- **Identifiable**: Liste öğelerinin benzersiz kimlikleri

## 💡 Öğrendiğim Önemli Noktalar

1. **MVVM Mimarisi**: İş mantığını ViewModel'de tutarak View'ları temiz ve sade tutmayı öğrendim.

2. **State Management**: SwiftUI'nin reactive yapısını anlayarak, state değişikliklerinin otomatik olarak UI'a yansımasını sağladım.

3. **Navigation**: NavigationStack ve NavigationLink kullanarak sayfa geçişlerini yönetmeyi öğrendim.

4. **Form Validasyonu**: Kullanıcı girdilerini kontrol etme ve hata yönetimi konusunda deneyim kazandım.

5. **SwiftUI Modifiers**: `.foregroundColor()`, `.font()`, `.padding()` gibi modifier'ları kullanarak UI tasarımını öğrendim.

6. **Codable Protocol**: Veri modelini Codable yaparak gelecekte veri kalıcılığı eklemeye hazır hale getirdim.

## 🚀 Gelecek Geliştirmeler

- [ ] Veri kalıcılığı (Core Data veya UserDefaults)
- [ ] Çalışan silme özelliği
- [ ] Arama ve filtreleme
- [ ] Notlar ve görevler özelliklerinin tamamlanması
- [ ] Çalışan fotoğrafı ekleme
- [ ] Dark mode desteği
- [ ] Animasyonlar ve geçiş efektleri

## 📱 Ekran Görüntüleri

*(Uygulama çalışırken ekran görüntüleri eklenecek)*

## 🛠️ Gereksinimler

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## 📝 Lisans

Bu proje öğrenme amaçlı geliştirilmiştir.

---

**Geliştirici**: Bengisu Demir  
**Tarih**: Kasım 2025  
**Öğrenme Süreci**: iOS ve SwiftUI geliştirme yolculuğu
