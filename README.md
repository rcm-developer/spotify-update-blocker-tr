# spotify-update-blocker-tr

<div align="center">
  <h1>🎵 Spotify Update Manager</h1>
  <p><b>Spotify'ın otomatik güncellemelerini tek tıkla, güvenli ve kesin bir şekilde kontrol edin.</b></p>
  <img src="https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows" alt="Windows">
  <img src="https://img.shields.io/badge/Language-Batch-orange?style=for-the-badge&logo=gnu-bash" alt="Batch">
</div>

---

## 🚀 Proje Hakkında

Spotify'ın haberiniz olmadan kendini güncellemesinden ve alıştığınız arayüzü veya özellikleri değiştirmesinden sıkıldınız mı? Modlanmış veya eski bir sürümde kalmak istiyor ama otomatik güncellemeleri durduramıyor musunuz? 

**Spotify Update Manager**, arka planda çalışan hiçbir gereksiz servise ihtiyaç duymadan, bu sorunu saniyeler içinde çözen hafif ve güçlü bir Batch betiğidir.

## ✨ Öne Çıkan Özellikler

* **🛡️ Akıllı UAC (Yönetici İzni):** Çift tıkladığınızda yönetici haklarını otomatik olarak talep eder. [cite_start]Sağ tıklayıp "Yönetici olarak çalıştır" demeyi unutma derdine son[cite: 1]!
* **⚡ Ultra Hafif:** RAM veya CPU tüketen arka plan işlemleri yoktur. Sadece çalıştırın, ayarınızı yapın ve kapatın.
* [cite_start]**🔒 Sistem Seviyesinde Engelleme:** Basit bir ayar değişikliği yerine, Windows'un yerleşik `icacls` komutunu kullanarak `%localappdata%\Spotify\Update` klasörüne olan NTFS dosya izinlerini kısıtlar[cite: 9]. Spotify istese de bu klasöre güncelleme dosyası yazamaz.
* **⏪ %100 Geri Alınabilir:** Fikrinizi değiştirirseniz telaş yapmanıza gerek yok. 2. [cite_start]seçeneği kullanarak uyguladığınız tüm kısıtlamaları kaldırabilir ve Spotify'ın tekrar güncelleme almasını sağlayabilirsiniz[cite: 12, 13].

## ⚙️ Kurulum ve Kullanım

Çok basit bir şekilde, sadece iki adımda güncellemeleri durdurabilirsiniz:

1. Bu repodaki `spotify-oto-guncelleme-ayar.bat` dosyasını bilgisayarınıza indirin.
2. Dosyaya çift tıklayarak çalıştırın (Çıkan Yönetici (UAC) iznine **Evet** deyin).
3. Karşınıza çıkan şık menüden yapmak istediğiniz işlemi seçin:
   * [cite_start]**[1] Spotify Güncellemelerini Kapat (Block):** Güncellemeleri tamamen engeller[cite: 7]. [cite_start]Artık Spotify otomatik olarak güncelleme almayacak[cite: 11].
   * [cite_start]**[2] Spotify Güncellemelerini Aç (Unblock):** Sistemi orijinal haline döndürür[cite: 7].
   * [cite_start]**[3] Çıkış:** İşlemi iptal edip çıkmanızı sağlar[cite: 7].

## 📸 Ekran Görüntüsü
*(İpucu: Buraya GitHub reponuza yüklediğiniz bat dosyasının çalışırken çekilmiş havalı ASCII ekranının bir fotoğrafını ekleyebilirsiniz: `![Ekran Görüntüsü](resim-linki.png)`)*

## ⚠️ Uyarı ve Sorumluluk Reddi

Bu araç işletim sisteminizin kritik dosyalarına müdahale etmez, sadece Spotify'ın kendi güncelleme klasörünün yerel izinlerini düzenler. Yine de kullanımı tamamen sizin sorumluluğunuzdadır.

---
<div align="center">
  [cite_start]<i>Created by <a href="https://recepc.com">Recep</a></i> [cite: 6]
</div>
