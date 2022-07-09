#!/bin/bash
 source "sMupdf.sh"
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[30;47m";}
#
 HEAD()
{
 for (( a=2; a<=40; a++ ))
          do
              TPUT $a 1
                        $E "\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m";
          done
              TPUT  1 1;$E "\033[0m\033[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m"
              TPUT  3 3;$E "\e[1;36m *** mupdf ***\e[0m";
              TPUT  4 3;$E "\e[2m MuPDF — это легкая программа для просмотра PDF, написанная на переносимом C\e[0m";
              TPUT  5 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 13 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 14 3;$E "\e[36m Oпции                                                               Options\e[0m";
              TPUT 15 3;$E "\e[2m Описание каждого из поддерживаемых вариантов приведено ниже:\e[0m";
              TPUT 24 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 25 3;$E "\e[36m Поведение мыши                                               Mouse Behavior\e[0m";
              TPUT 33 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 35 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 37 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 38 3;$E "\e[2m Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter\e[0m";
}
 FOOT(){ MARK;TPUT 41 1;$E "\033[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  6 3; $e " Установка                                                          \e[32m Install \e[0m";}
  M1(){ TPUT  7 3; $e " Kраткий обзор                                                     \e[32m Synopsis \e[0m";}
  M2(){ TPUT  8 3; $e " Описание                                                       \e[32m Description \e[0m";}
  M3(){ TPUT  9 3; $e " Авторы                                                            \e[32m1 Authors \e[0m";}
  M4(){ TPUT 10 3; $e " Смотрите также                                                    \e[32m See Also \e[0m";}
  M5(){ TPUT 11 3; $e " Окружающая среда                                               \e[32m Environment \e[0m";}
  M6(){ TPUT 12 3; $e " Сигналы                                                            \e[32m Signals \e[0m";}
#
  M7(){ TPUT 16 3; $e " Использует заданный пароль для открытия зашифрованного PDFфайла\e[32m -p password \e[0m";}
  M8(){ TPUT 17 3; $e " Изменяет начальный уровень масштабирования, указанный в dpi  \e[32m -r resolution \e[0m";}
  M9(){ TPUT 18 3; $e " Изменяет качество сглаживания, определяемое числом битов от 0 до 8 \e[32m -A bits \e[0m";}
 M10(){ TPUT 19 3; $e " Задает оттенок всей страницы шестнадцатеричным синтаксисом цвета \e[32m -C RRGGBB \e[0m";}
 M11(){ TPUT 20 3; $e " Ширина страницы в пунктах для макета EPUB                         \e[32m -W width \e[0m";}
 M12(){ TPUT 21 3; $e " Высота страницы в пунктах для макета EPUB                        \e[32m -H height \e[0m";}
 M13(){ TPUT 22 3; $e " Размер шрифта в пунктах для макета EPUB                            \e[32m -S size \e[0m";}
 M14(){ TPUT 23 3; $e " Пользовательская таблица стилей для макета EPUB                \e[32m -U CSS-file \e[0m";}
#
 M15(){ TPUT 26 3; $e " Щелчок левой кнопкой мыши                          \e[32m Left mouse button click \e[0m";}
 M16(){ TPUT 27 3; $e " Щелкните правой кнопкой мыши                      \e[32m Right mouse button click \e[0m";}
 M17(){ TPUT 28 3; $e " Перетаскивание левой кнопкой мыши                   \e[32m Left mouse button drag \e[0m";}
 M18(){ TPUT 29 3; $e " Перетаскивание правой кнопкой мыши                 \e[32m Right mouse button drag \e[0m";}
 M19(){ TPUT 30 3; $e " Колесо прокрутки                                              \e[32m Scroll wheel \e[0m";}
 M20(){ TPUT 31 3; $e " Shift + колесо прокрутки                              \e[32m Shift + Scroll wheel \e[0m";}
 M21(){ TPUT 32 3; $e " Управление + колесо прокрутки                       \e[32m Control + Scroll wheel \e[0m";}
#
 M22(){ TPUT 34 3; $e " Привязки клавиш                                               \e[36m Key Bindings \e[0m";}
#
 M23(){ TPUT 36 3; $e " Grannik Git                                                                 ";}
#
 M24(){ TPUT 39 3; $e " Exit                                                                        ";}
LM=24
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
# Функция возвращения в меню
     ES(){ MARK;$e " ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 sudo apt update
 sudo apt -y install mupdf
 \e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m mupdf [options] file[page_number]\e[0m
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
 MuPDF — это программа для просмотра документов, которая может отображать PDF, XPS,
 EPUB, XHTML, CBZ и различные форматы изображений, такие как PNG, JPEG, GIF и TIFF.
 MuPDF также поставляется с некоторыми инструментами (в пакете «MuPDF-tools»),
 которые позволяют конвертировать PDF-файл в серию изображений (pdfdraw), восста-
 навливать документы, расшифровывать и распаковывать PDF-файлы (pdfclean), а также
 некоторые инструменты отладки, которые позволяет извлекать источники из файлов
 PDF, отображать информацию о внутренних объектах и ​​т. д.
 (pdfshow, pdfextract и PDFInfo).
\e[32m \e[0m";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 MuPDF защищен авторскими правами Artifex Software, Inc., 2006–2021 гг.
 MuPdf Com:\e[36m https://mupdf.com/\e[0m
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m mutool\e[0m
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m BROWSER\e[0m Когда mupdf открывает ссылку, он сначала использует БРАУЗЕР для просмотра
 ссылки и возвращается к \e[32mxdg-open\e[0m, если БРАУЗЕР не определен.
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m SIGHUP\e[0m Отправка сигнала SIGHUP процессу mupdf также приведет к автоматической пе-
 резагрузке просматриваемого файла для использования, например, в строить скрипты.
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Использует заданный пароль для открытия зашифрованного PDF-файла.
 Пароль проверяется как пароль пользователя, так и пароль владельца.
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Изменяет начальный уровень масштабирования, указанный как разрешение в dpi.
 Значение по умолчанию — 72.
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Изменяет качество сглаживания, определяемое числом битов от 0 (отключено) до 8
 (наилучшее). Значение по умолчанию — 8.
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
 Задает оттенок всей страницы с использованием шестнадцатеричного синтаксиса цвета:
\e[32m mupdf -C 0A1B2C bescheid.pdf\e[0m
 Значение по умолчанию — FFFAF0.
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Ширина страницы в пунктах для макета EPUB
\e[32m \e[0m";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
 Щелчок левой кнопкой мыши по гиперссылке следует за ссылкой.
 В режиме презентации переход на следующую страницу.
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
 В режиме презентации возвращает на предыдущую страницу.
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Переместите страницу. Панорамирование за пределы нижнего или верхнего края
 приведет к переходу на следующую или предыдущую страницу.
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Выберите текст в области. В X11 выделенный текст можно вставить в другое приложе-
 ние средним щелчком мыши. Нажмите Ctrl+C, чтобы скопировать выделенный текст в
 буфер обмена. В Windows выделенный текст будет автоматически скопирован в буфер.
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 Перелистывание страницы вверх или вниз.
 Не меняет страницу при достижении нижнего или верхнего края.
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
 Панорамирование страницы влево или вправо
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "
 Увеличение или уменьшение масштаба
";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;./lMupdf.sh;ES;fi;;
#
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Sa 09 Jul 2022

 mMupdf описание утилиты mupdf.
 mupdf — это легкая программа для просмотра PDF, написанная на переносимом C
 MuPDF также поставляется с некоторыми инструментами (в пакете «MuPDF-tools»).

 Asciinema:   \e[36m https://asciinema.org/a/507396\e[0m
 Github:      \e[36m https://github.com/GrannikOleg/mMupdf\e[0m
 Gitlab:      \e[36m https://gitlab.com/grannik/mmupdf\e[0m
 Sourceforge: \e[36m https://sourceforge.net/projects/mmupdf/files/\e[0m
 Notabug:     \e[36m https://notabug.org/Grannikoleg/mMupdf\e[0m
 Codeberg:    \e[36m https://codeberg.org/Grannik/mMupdf\e[0m
 Bitbucket:   \e[36m \e[0m
 Framagit:    \e[36m https://framagit.org/GrannikOleg/mmupdf\e[0m
 Gitea:       \e[36m https://try.gitea.io/Grannik/mMupdf\e[0m
 \e[36m \e[0m
 \e[36m \e[0m
 \e[36m \e[0m
 \e[36m \e[0m

 s - source      file источник
 m - menu        file меню
 n - simple menu file простое меню
 l - bash list   file лист
 t - text        file текстовый файл
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;clear;ls -l;exit 0;fi;;
 esac;POS;done
