# 🤖 Wily Bot — WhatsApp Self-Bot

> Base Script: **Bang Dika Ardnt** | Recode by: **Bang Wilykun**
> WhatsApp: `6289688206739` | Telegram: [@Wilykun1994](https://t.me/Wilykun1994)

**Script ini GRATIS, tidak untuk diperjualbelikan!**

---

## ✨ Fitur Utama

- ✅ Auto Read Story & Auto React Story
- ✅ Anti-Delete Pesan (teks, gambar, video, audio, stiker, dokumen)
- ✅ Auto Typing / Recording indicator
- ✅ Download TikTok, Instagram, Facebook
- ✅ Save View Once otomatis
- ✅ Jadibot (multi-session)
- ✅ Auto Online
- ✅ Memory Monitor & Auto Cleaner
- ✅ Crash Guard (bot tidak mudah mati)

---

## 🚀 Deploy ke Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template?template=https://github.com/YOURUSERNAME/YOURREPO)

> **Ganti** `YOURUSERNAME/YOURREPO` dengan username dan nama repo GitHub kamu sebelum push.

---

## 📋 Cara Deploy Manual di Railway

### 1. Fork / Upload ke GitHub
- Upload semua file project ini ke repository GitHub kamu

### 2. Buat Project Baru di Railway
- Buka [railway.com](https://railway.com) → **New Project**
- Pilih **Deploy from GitHub repo**
- Pilih repository kamu

### 3. Set Environment Variables
Di Railway dashboard → tab **Variables**, tambahkan:

| Variable | Contoh | Keterangan |
|---|---|---|
| `BOT_SESSION_NAME` | `wily` | Nama folder session |
| `BOT_NUMBER_OWNER` | `628xxxxxxxxxx` | Nomor HP owner (dengan kode negara) |
| `BOT_MAX_RETRIES` | `5` | Maksimal reconnect |

### 4. Deploy
- Railway otomatis detect `Dockerfile` dan `railway.toml`
- Klik **Deploy** → tunggu proses build selesai
- Buka **Logs** untuk lihat QR Code atau Pairing Code
- Scan QR / masukkan pairing code dari WhatsApp

---

## ⚙️ Konfigurasi (`config.json`)

Edit file `config.json` untuk mengaktifkan/menonaktifkan fitur:

```json
{
  "autoOnline": true,
  "autoReadStory": true,
  "autoReactStory": false,
  "antiDelete": true,
  "autoTyping": false,
  "autoRecording": false
}
```

---

## 📁 Struktur Project

```
wily-bot/
├── index.js              # File utama
├── config.json           # Konfigurasi fitur
├── Dockerfile            # Docker build untuk Railway
├── railway.toml          # Konfigurasi Railway
├── sessions/
│   └── wily/             # Session WhatsApp (auto-generated)
├── src/
│   ├── handler/          # Handler pesan & event
│   ├── helper/           # Modul utilitas
│   └── db/               # Database JSON
└── tmp/                  # File sementara (auto-clean)
```

---

## ⚠️ Penting

- **Session** tersimpan di folder `sessions/wily/` — pastikan Railway Volume diaktifkan agar session tidak hilang saat restart
- Bot hanya bisa dipakai untuk **akun sendiri** (self-bot)
- Jangan share `creds.json` ke siapapun

---

## 📞 Support

- WhatsApp: [6289688206739](https://wa.me/6289688206739)
- Telegram: [@Wilykun1994](https://t.me/Wilykun1994)
