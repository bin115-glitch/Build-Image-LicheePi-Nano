# Lichee Pi Nano Kernel Build

## 📦 Toolchain

* GCC: **Linaro 6.3.1 (2017.05)**
* Target: `arm-linux-gnueabi`
* ARCH: `arm`

---

## 🧰 Dependencies

Cài đầy đủ các thư viện cần thiết:

```bash
sudo apt update
sudo apt install build-essential bc bison flex libssl-dev libncurses-dev
```

### 📌 Giải thích nhanh

* `build-essential` → gcc, make
* `bc` → cần cho kernel build
* `bison`, `flex` → parser (Kconfig)
* `libssl-dev` → crypto
* `libncurses-dev` → menuconfig (nếu dùng)

---

## ⚙️ Build Instructions

```bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-

make sunxi_defconfig
make -j$(nproc)
```

---

## 📁 Output

Sau khi build thành công:

```
arch/arm/boot/zImage
arch/arm/boot/dts/*.dtb
```

---

## 📸 Build Result

### 🔹 Build Success

<img width="1728" height="1000" alt="3" src="https://github.com/user-attachments/assets/42a4d2c8-fe89-4323-baed-5ccfb6e5e826" />


### 🔹 zImage Generated

<img width="962" height="146" alt="2" src="https://github.com/user-attachments/assets/0f98b169-b4a8-49a9-9014-1b82092df2d4" />

---

## 📌 Notes

* Build thành công trên Kali Linux
* Bắt buộc dùng **GCC 6.x** (GCC mới sẽ lỗi)
* Repo này chỉ chứa:

  * `output/`
  * `.config`
    → để chứng minh build thành công

---
