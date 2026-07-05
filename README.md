# Skor Bola — Paket Deploy Manual

Paket ini berisi semua yang dibutuhkan untuk menjalankan aplikasi Skor Bola di hosting/VPS Anda sendiri (yang mendukung Node.js).

## Isi paket

- `server/dist/` — server API yang sudah di-build (siap jalan, sudah termasuk semua library di dalamnya)
- `web/` — tampilan aplikasi (hasil export, file statis HTML/JS/CSS)
- `db/schema.sql` — perintah untuk membuat semua tabel database
- `db/seed-data.sql` — data contoh (liga, tim, pertandingan, berita) untuk mengisi database

## Deploy otomatis ke Render.com (paling gampang)

Paket ini sudah menyertakan file `render.yaml` yang membuat proses setup di Render.com jadi otomatis:

1. Upload semua isi folder ini ke sebuah repository GitHub (lihat langkah di bawah)
2. Di Render.com, klik **New → Blueprint**, lalu pilih repo GitHub Anda
3. Render otomatis membaca `render.yaml` dan menyiapkan web service-nya (nama `skor-bola`, start command, dan variabel `STATIC_DIR` sudah otomatis terisi)
4. Render akan minta Anda mengisi satu variabel: `DATABASE_URL` — isi dengan connection string database PostgreSQL Anda (misalnya dari Neon.tech)
5. Klik **Apply** — Render akan build & jalankan otomatis

Kalau tidak memakai Blueprint, Anda tetap bisa setup manual seperti dijelaskan di bagian bawah.

## Yang Anda butuhkan di server/VPS

1. **Node.js** versi 20 ke atas
2. **Database PostgreSQL** (bisa yang sudah disediakan hosting Anda, atau buat sendiri)

## Langkah-langkah instalasi

### 1. Siapkan database

Buat database PostgreSQL kosong, lalu jalankan:

```bash
psql "URL_DATABASE_ANDA" -f db/schema.sql
psql "URL_DATABASE_ANDA" -f db/seed-data.sql
```

Ganti `URL_DATABASE_ANDA` dengan connection string database Anda, contohnya:
`postgresql://user:password@host:5432/nama_database`

(`seed-data.sql` bersifat opsional — isinya data contoh liga BRI Liga 1, Premier League, dan LaLiga. Lewati langkah ini kalau Anda ingin mulai dari database kosong.)

### 2. Jalankan server

Server ini menjalankan API sekaligus menyajikan tampilan web dalam satu proses saja.

```bash
cd server
DATABASE_URL="URL_DATABASE_ANDA" PORT=3000 STATIC_DIR="../web" node dist/index.mjs
```

Penjelasan variabel:
- `DATABASE_URL` — connection string database PostgreSQL Anda (wajib)
- `PORT` — port yang akan dipakai server (boleh diganti sesuai aturan hosting Anda)
- `STATIC_DIR` — folder tampilan web (arahkan ke folder `web` yang ada di paket ini)

Setelah berjalan, buka `http://ip-server-anda:3000` (atau domain Anda) di browser — aplikasi akan langsung tampil, dan otomatis mengambil data dari API yang berjalan di proses yang sama.

### 3. Agar tetap berjalan terus (disarankan)

Gunakan process manager seperti `pm2` supaya server otomatis restart jika crash atau server reboot:

```bash
npm install -g pm2
cd server
DATABASE_URL="URL_DATABASE_ANDA" PORT=3000 STATIC_DIR="../web" pm2 start dist/index.mjs --name skor-bola
pm2 save
pm2 startup
```

### 4. (Opsional) Domain & HTTPS

Jika ingin memakai domain sendiri dengan HTTPS, pasang Nginx atau Caddy di depan aplikasi ini sebagai reverse proxy ke port yang dipakai (`PORT` di atas). Ini bisa diminta bantuan ke penyedia hosting Anda kalau tidak familiar dengan konfigurasi ini.

## Catatan penting

- Aplikasi ini adalah versi **web** dari Skor Bola (bisa dibuka lewat browser di HP atau komputer). Untuk membuat aplikasi native Android/iOS yang bisa diinstal dari Play Store/App Store, dibutuhkan proses build terpisah (di luar cakupan paket ini).
- Tidak ada fitur streaming video atau link ilegal di aplikasi ini — hanya skor, klasemen, statistik, dan berita.
- Jika muncul error terkait database saat server dijalankan, pastikan `DATABASE_URL` benar dan tabel sudah dibuat (langkah 1).
