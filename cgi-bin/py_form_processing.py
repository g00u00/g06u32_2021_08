import os,sys
import time, datetime
import cgi, cgitb
import pymysql
#cgitb.enable()
#sys.stderr = sys.stdout

'''
При создании нового обработчика данных:
- в базе создать  страницу с формой  описания задачи и для передачи данных
    и выполнить начальное редактирование формы (page_id, file_name)     
- в базе создать еще одну страницу для внешнего интерфейса обработчика
    в том числе соответствующий  page_id и другое описание    

- копирование создать новый файл со скриптом обработчика изменив
    название функции (py_form_processing_new....)

- модифицировать движок сайта 
    import py_form_processing, 
    py_form_processing_new.py_form_processing_new(), 
    if (int(page_id) == 2)...

- выполнить начальное тестирование

- выполнить окончательное модифицирование py_form_processing_new..
'''

def py_form_processing(db,cur):
    form = cgi.FieldStorage()
    print ("\n<p>ключи(form.keys):",form.keys(), sep = '\n<br>', end="</p>\n")

    #списки названий ключей и их значений
    form_keys=list() 
    form_value=list()

    print  ("\n<p><br>Названия ключей   и их значения (как есть)", end="</p>\n")
    i=0
    for key in form.keys():
        variable = key
        value = form.getvalue(variable)
        print  ("<br>", i,  ": ", variable," = ", value)
        form_keys.append(variable) #формируем список ключей длф будущей сортировки
        i+=1

    # сортируем список ключей (что-бы не сбоили поля при выводе в файл)
    form_keys.sort() 
    print  ("\n<p><br>","Ключи  и их значения(после сортировки)", sep = '', end="</p>\n")
    i=0
    for form_key in form_keys:
        value = form.getvalue(form_key)
        print  ("<br>", i,  ": ", form_key," = ", value)
        i+=1

    datetime_now = str(datetime.datetime.now()).split(' ')    

    file_name='../tmp/'+form["file_name"].value #получаем по значению указанного ключа   
    file_name_json='../tmp/'+form["file_name"].value+'.json'   
    if (form.getvalue("qs_type") == "drop"):# очищаем файлы и удаляем таблицу из базы
        app_to_file = open(file_name, mode='w', encoding="utf-8", errors=None, newline=None, closefd=True, opener=None)
        app_to_file.close()
        app_to_file = open(file_name_json, mode='w', encoding="utf-8", errors=None, newline=None, closefd=True, opener=None)
        app_to_file.close()
        cur.execute("""DROP TABLE IF EXISTS `form_processing`""")
    
    else:# дозаписывем в файлы и в базу
        print("\n<p><br>Записываем в файл",file_name,  end="</p>\n")
        app_to_file = open(file_name, mode='a', encoding="utf-8", errors=None, newline=None, closefd=True, opener=None)
        app_to_file.write("IP;%s;datetime;%s;" % (os.environ[ "REMOTE_ADDR" ], str(datetime.datetime.now()) ))
        for form_key in form_keys:
            value = form.getvalue(form_key)
            app_to_file.write("%s;%s;" % (str(form_key), str(value)))
        app_to_file.write("\n")
        app_to_file.close()
        print("\nКонтрольное отображение последней записи из файла",end="\n" )
        word_list=list()
        with open(file_name, mode='r', encoding="utf-8") as f_read:
            for line in f_read.readlines():
                word_list = line.split(";")
            print ("\n<br>Последняя строка:\n", line, end="")
            print ("\n<br>Слова в строке:\n", word_list, end="")
        print('\n<br><a href="',file_name, '" target="blank" >','Содержание файла с записями</a></p>', sep='', end="\n")

        print("\n<p><br>Записываем в файл\n<br>",file_name_json,  end="</p>\n")
        with open(file_name_json, mode='a', encoding="utf-8", errors=None, newline=None, closefd=True, opener=None) as app_to_file:
            app_to_file.write('{"%s":' %  (datetime_now[0]))
            app_to_file.write('{"%s":' %  (os.environ[ "REMOTE_ADDR" ]))
            app_to_file.write('{"IP": "%s",' % (os.environ[ "REMOTE_ADDR" ]))
            app_to_file.write('"date": "%s", "time": "%s"' %  (datetime_now[0], datetime_now[1] ))
            for form_key in form_keys:
                value = form.getvalue(form_key)
                app_to_file.write(',"%s": "%s"' % (str(form_key), str(value)))
            app_to_file.write("}}},\n")
        print('<a href="',file_name_json, '" target="blank" >','Содержание файла с записями</a>\n<br>', sep='', end="\n")
        
        print("\n<p><br>Пишем в базу и считываем из базы",  end="\n<br>")
        cur.execute("""CREATE TABLE IF NOT EXISTS `form_processing` (
          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
          `qs_file_name` varchar(255) NOT NULL,
          `qs_file_price` decimal(10,0)  NOT NULL,
          `qs_file_amount` int(10) unsigned NOT NULL,
          `qs_file_type` varchar(255) NOT NULL,
          `qs_file_date` date NOT NULL,
          `qs_file_time` time NOT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;""")
        db.commit()#транзакция (дожидаемся завершения операции модификации таблицы)
        
        cur.execute("""INSERT INTO `form_processing` ( `qs_file_name`, `qs_file_price`, `qs_file_amount`, `qs_file_type`, `qs_file_date`, `qs_file_time`) 
            VALUES ('%s', '%s', '%s', '%s', '%s', '%s')""" % 
            (form["qs_name"].value, form["qs_price"].value ,form["qs_amount"].value, form["qs_type"].value , time.strftime('%Y-%m-%d'), time.strftime('%H:%M:%S')))
        db.commit()

        print("\n\n<br>Контрольное считывание последней записи")
        cur.execute("""SELECT * FROM `form_processing` ORDER BY `id` DESC LIMIT 0 , 1;""")
        result_one  =  cur.fetchone()
        print("\n<br>result_one:\n<br>", result_one)
        print("\n<br>Значения полей:\n<br>")
        for value in result_one:
            print (value)
            
        print("\n\n<p>Поля в таблице:")
        cur.execute("""SHOW COLUMNS FROM `form_processing`;""")
        result_all  =  cur.fetchall()
        print("\n<br>result_one:", result_all)
        print("\n<br>Только названия полей: \n<br>")
        for value in result_all:
            print (value[0])
        print("</p>")
            
        print("\n\n<p>Оценка данных из таблицы: ")

        print("\n\n<p>Содержание всей таблицы: ")
        cur.execute("""SELECT * FROM `form_processing`;""")
        result_all  =  cur.fetchall()
        print("\n<br>result_all:\n<br>", result_all)
        print("\n<br>Значения всех полей и записей: ",end="")
        for result_one in result_all:
            print("\n<br>",end="")
            for value in result_one:
                print (value, end=";")
        print("\n</p>")
                
                
        print("\n<p>Данные из таблицы в агрегированном и отсортированном виде: ")
        cur.execute("""SELECT `qs_file_type`, COUNT(`qs_file_type`), SUM( qs_file_price * qs_file_amount ) AS `gr_sum` FROM `form_processing` GROUP BY `qs_file_type` ORDER BY `gr_sum` DESC;""")
        result_all  =  cur.fetchall()
        print("\n<br>result_all:\n<br>", result_all)
        print("\n<br>Значения полей и записей: ",end="")
        for result_one in result_all:
            print("\n<br>",end="")
            for value in result_one:
                print (value, end=";")            
        print("\n</p>")
        
        
        print("\n<p>Накопленные:")
        cur.execute("""SELECT sum( qs_file_price * qs_file_amount )
            FROM `form_processing`  WHERE `qs_file_type` LIKE 'Доходы';""")
        result_one  =  cur.fetchone()
        revenue=result_one[0]
        cur.execute("""SELECT sum( qs_file_price * qs_file_amount )
            FROM `form_processing`  WHERE `qs_file_type` LIKE 'Расходы';""")
        result_one  =  cur.fetchone()
        expenses=result_one[0]
        profit=revenue-expenses
        print("<br>Доходы: ",revenue)
        print ("<br>Расходы: ", expenses)
        profit=revenue-expenses
        print ("<br>Прибыль: ", profit)
        print("\n</p>")

    print("</p>")
    