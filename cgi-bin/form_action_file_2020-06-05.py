#!/usr/bin/env python3.4
import os,sys
import cgi, cgitb
import form_action_functions_file


cgitb.enable()
sys.stderr = sys.stdout
form = cgi.FieldStorage()

def form_action_file(form):
    print("\n<pre>") 
    form_action_functions_file.form_dictionary(form) #Анализируем строку запроса
    form_action_functions_file.print_form_file(form) #Создаем форму и отправляем данные на сервер
    form_action_functions_file.file_list(form) #Записываем в файл и оцениваем содержание файла 
    print("\n</pre>") 


if __name__=='__main__':
    print('''\
Content-type:text/html\r\n
<html>
<head>\n<title>Отладка, в файл, из файла, обработка </title>\n</head>
<body><h3>Отладка, в файл, из файла, обработка</h3><pre>
    ''')
    form_action_file (form)

