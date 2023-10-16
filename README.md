# math3s-theoremc

Теоремный конспект по 3-му семестру математического анализа на КТ.

## Содержимое

[Объединенный конспект всех недель](full_conspect.pdf)

[Объединенный конспект всех недель с рисунками](full_conspect_screen.pdf)

## Запуск скриптов на Ubuntu

### Установка пакетов

Для компиляции LaTeX'а
```
sudo apt-get install -y texlive-latex-base
sudo apt-get install -y texlive-fonts-recommended
sudo apt-get install -y texlive-fonts-extra 
sudo apt-get install -y texlive-latex-extra
```

Для объединения pdf-файлов (pdfunite)
```
sudo apt-get install -y poppler-utils
```

Для сжатия pdf-файлов (gs)
```
sudo apt-get install -y ghostscript
```

Для редактирования pdf-файлов (удаление пустых страниц)
```
sudo apt-get install -y qpdf
```

### Применение скриптов

Компиляция конспекта одной недели
```
./gen_pdf.sh [номер недели]
```

Финальная компиляция конспекта одной недели с объединением с другими файлами
```
./gen_full_pdf.sh [номер недели]
```

Сжатие рисунков одной недели
```
./compress_screen.sh [номер недели]
```

Удаление пустых страниц в конце файлов рисунков
```
./crop_screen.sh [номер недели] [номер рисунка] [номер последней непустой страницы]
```
