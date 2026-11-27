# resized-photo

**Batch-resize every JPG, JPEG, and PNG image in a folder to 50% with ImageMagick, without touching the originals.**

![Shell: Bash](https://img.shields.io/badge/shell-Bash-4EAA25?logo=gnubash&logoColor=white)
![Requires: ImageMagick](https://img.shields.io/badge/requires-ImageMagick-0055A4)
![License: Apache 2.0](https://img.shields.io/badge/license-Apache%202.0-blue)

[English](#english) | [العربية](#arabic)

---

<a id="english"></a>

## English

### Overview

`resize.sh` scales down all JPG, JPEG, and PNG images in the current folder to 50% of their original dimensions using ImageMagick. The resized copies are saved under the same file names in a `resized` subfolder; the original images are left unchanged.

### What it does

1. **Checks for ImageMagick.** If the `convert` command is not available, it prints `ImageMagick (convert) is not installed` and exits.
2. **Finds the images.** It collects every `*.jpg`, `*.jpeg`, and `*.png` file in the current folder (case-insensitive, so `.JPG` and `.PNG` are included too; subfolders are not searched). If there are none, it prints `No images found in this folder` and exits.
3. **Creates the output folder** `./resized` (no error if it already exists).
4. **Resizes each image** to 50% with `convert "$file" -resize 50% "resized/$file"`.
5. **Saves the result** as `resized/<original name>`. Re-running the script overwrites earlier copies in `resized`.

### Requirements

- Bash
- [ImageMagick](https://imagemagick.org/) (the script uses the `convert` command)

On Debian/Ubuntu, for example:

```bash
sudo apt install imagemagick
```

### Installation

```bash
git clone https://github.com/fahad4x4/resized-photo.git
cd resized-photo
chmod +x resize.sh
```

### Usage

Run the script from inside the folder that holds your images (no `sudo` needed):

```bash
cd /path/to/your/photos
/path/to/resized-photo/resize.sh
```

Or copy `resize.sh` into that folder and run:

```bash
./resize.sh
```

The resized images appear in `./resized`.

### Project structure

```
resized-photo/
├── resize.sh    # The resize script
├── README.md    # This file
└── LICENSE      # Apache License 2.0
```

### License

This project is licensed under the [Apache License 2.0](LICENSE).

### Author

**Fahad ALGhathbar**, GitHub: [@fahad4x4](https://github.com/fahad4x4)

---

<a id="arabic"></a>

## العربية

<div dir="rtl">

### نظرة عامة

يقوم السكربت `resize.sh` بتصغير جميع الصور بصيغ JPG وJPEG وPNG الموجودة في المجلد الحالي إلى 50% من أبعادها الأصلية باستخدام ImageMagick. تُحفَظ النسخ المصغّرة بالأسماء نفسها داخل مجلد فرعي باسم `resized`، وتبقى الصور الأصلية دون تغيير.

### ماذا يفعل

1. **التحقق من وجود ImageMagick:** إذا لم يكن الأمر `convert` متاحًا، يطبع رسالة بذلك ثم يخرج.
2. **البحث عن الصور:** يجمع كل ملفات `*.jpg` و`*.jpeg` و`*.png` في المجلد الحالي (دون تمييز بين الأحرف الكبيرة والصغيرة، فتُشمل ملفات `.JPG` و`.PNG` أيضًا، ولا يبحث في المجلدات الفرعية). إذا لم يجد أي صورة، يطبع رسالة بذلك ثم يخرج.
3. **إنشاء مجلد الإخراج** `./resized` (دون خطأ إذا كان موجودًا مسبقًا).
4. **تصغير كل صورة** إلى 50% باستخدام الأمر `convert "$file" -resize 50% "resized/$file"`.
5. **حفظ النتيجة** باسم `resized/<الاسم الأصلي>`. إعادة تشغيل السكربت تستبدل النسخ السابقة في `resized`.

### المتطلبات

- Bash
- [ImageMagick](https://imagemagick.org/) (يستخدم السكربت الأمر `convert`)

على Debian أو Ubuntu مثلًا:

```bash
sudo apt install imagemagick
```

### التثبيت

```bash
git clone https://github.com/fahad4x4/resized-photo.git
cd resized-photo
chmod +x resize.sh
```

### الاستخدام

شغّل السكربت من داخل المجلد الذي يحتوي على الصور (لا حاجة إلى `sudo`):

```bash
cd /path/to/your/photos
/path/to/resized-photo/resize.sh
```

أو انسخ `resize.sh` إلى ذلك المجلد ثم شغّله:

```bash
./resize.sh
```

ستجد الصور المصغّرة في المجلد `./resized`.

### هيكل المشروع

```
resized-photo/
├── resize.sh    # سكربت التصغير
├── README.md    # هذا الملف
└── LICENSE      # رخصة Apache 2.0
```

### الرخصة

هذا المشروع مرخّص بموجب [رخصة Apache 2.0](LICENSE).

### المؤلف

**فهد الغثبر (Fahad ALGhathbar)**، على GitHub: [@fahad4x4](https://github.com/fahad4x4)

</div>
