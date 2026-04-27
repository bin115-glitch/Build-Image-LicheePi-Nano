# Lichee Pi Nano Kernel Build

## 📌 Overview

* Built on Kali Linux
* Requires **GCC 6.x** (newer GCC may fail with legacy kernel)
* This repository contains only:

  * `output/`
  * `.config`

👉 Build artifacts generated from: https://github.com/robot9706/lichee-pi-nano-linux

---

## 📦 Toolchain

* GCC: **Linaro 6.3.1 (2017.05)**
* Target: `arm-linux-gnueabi`
* ARCH: `arm`

---

## 🧰 Dependencies

```bash
sudo apt update
sudo apt install build-essential bc bison flex libssl-dev libncurses-dev
```

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

After a successful build:

```
arch/arm/boot/zImage
arch/arm/boot/dts/*.dtb
```

---

## 📸 Build Result

### 🔹 Build Success

<img width="1728" height="1000" alt="3" src="https://github.com/user-attachments/assets/0de8f2ed-e196-4d4b-b8d6-d590d69114b2" />

### 🔹 zImage Generated

<img width="962" height="146" alt="2" src="https://github.com/user-attachments/assets/57f5e281-ef73-4509-85cf-6eeb3e892958" />

---

## 📌 Notes

* Kernel built successfully using GCC 6.x toolchain
* Output files are extracted and stored in `output/`
* Suitable for Lichee Pi Nano (Allwinner V3s)

---
