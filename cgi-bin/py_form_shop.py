import os,sys
import time, datetime
import cgi, cgitb
import pymysql
cgitb.enable()
sys.stderr = sys.stdout


def py_form_shop(db,cur):
    print("<pre>")
    form = cgi.FieldStorage()
    print ("\n<p>ключи(form.keys):",form.keys(), sep = '\n<br>', end="</p>\n")
    # сортируем список ключей (что-бы не сбоили поля при выводе в файл)
    form_keys = list()
    for form_key in form.keys():
        form_keys.append(form_key)
    form_keys.sort()
    form_keys.sort() 
    print  ("\n<p><br>","Ключи  и их значения(после сортировки)", sep = '', end="</p>\n")
    for form_key in form_keys:
        print  (form_key," = ", form.getvalue(form_key))

    datetime_now = str(datetime.datetime.now()).split(' ')    
    file_name = ("../tmp/"+"%s_%s_%s.txt" % (os.environ[ "REMOTE_ADDR" ], datetime_now[0], str(datetime_now[1][0:5])))
    print("\n<p><br>Записываем в файл",file_name,  end="</p>\n")
    with open(file_name, mode='a', encoding="utf-8", errors=None, newline=None, closefd=True, opener=None) as app_to_file:
        #app_to_file.write("IP: %s; date: %s; time: %s; " % (os.environ[ "REMOTE_ADDR" ], datetime_now[0], datetime_now[1] ))
        for form_key in form_keys:
            value = form.getvalue(form_key)
            app_to_file.write("%s%s: %s;" % ("\n",str(form_key), str(value)))
        app_to_file.write("\nIP: %s; date:%s; time; %s;" % (os.environ[ "REMOTE_ADDR" ], datetime_now[0], str(datetime_now[1][0:5]) ))
        app_to_file.write("\n")
        print('\n<br><a href="',file_name, '" target="blank" >','Содержание файла с записями</a></p>', sep='', end="\n")
    print("</p>")
    print("</pre>")
    