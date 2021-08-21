#!/usr/bin/env python3.4
import os,sys
import cgi, cgitb
import pymysql
form = cgi.FieldStorage()
cgitb.enable()

def db_report(form, db, cur):
    #https://dev.mysql.com/doc/refman/8.0/en/tutorial.html
    #https://dev.mysql.com/doc/refman/8.0/en/examples.html
    #https://dev.mysql.com/doc/refman/8.0/en/example-maximum-column.html
    #https://dev.mysql.com/doc/refman/8.0/en/functions.html
    (var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10) = ['1', '2', '3', '4', '5', '1', '2', '3', '4', '6']
    print (var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10)
    print(form)
    if "v_01" in form:
        print('\n\n Пример списка из строки запроса (v_01): ', form.getvalue('v_01'))
        strv_01s = form.getvalue('v_01')
        print("strv_01s: ", strv_01s)
        intv_01s = list()
        for item in strv_01s: intv_01s.append(int(item))
        print("intv_01s: ", intv_01s, "   sum(intv_01s): ", sum(intv_01s), "\n") 

    print("\nПишем в базу и считываем из базы")
    #cur.execute("""DROP TABLE IF EXISTS `db_report`""")
    #db.commit()
    cur.execute("""\
    CREATE TABLE IF NOT EXISTS `db_report` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `var_1` int(10) NOT NULL DEFAULT 0,
    `var_2` int(10) NOT NULL DEFAULT 0,
    `var_3` int(10) NOT NULL DEFAULT 0,
    `var_4` int(10) NOT NULL DEFAULT 0,
    `var_5` int(10) NOT NULL DEFAULT 0,
    `var_6` int(10) NOT NULL DEFAULT 0,
    `var_7` int(10) NOT NULL DEFAULT 0,
    `var_8` int(10) NOT NULL DEFAULT 0,
    `var_9` int(10) NOT NULL DEFAULT 0,
    `var_10` int(10) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    """)
    db.commit()

    cur.execute("""\
        INSERT INTO `db_report` (`var_1`, `var_2`, `var_3`, `var_4`, `var_5`, `var_6`, `var_7`, `var_8`, `var_9`, `var_10`) 
        VALUES ( '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')""" % (var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10))
    db.commit()

    cur.execute("""SELECT* FROM `db_report`;""")
    result_all  =  cur.fetchall()
    print("\n<p>Содержание всей таблицы (список в списке) (cur.fetchall()): ")
    print(result_all)
    print("\n<br>Представление содержание таблицы по полям и записям  ")
    for result_one in result_all:
        for value in result_one:
            print (value, end=";")
        print("")

    print("\n<br>Представление содержание таблицы по полям и c суммой по  записям  ")
    cur.execute("""SELECT  (var_1+var_2+var_3+var_4+var_5+var_6+var_7+var_8+var_9+var_10) AS Сумма, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 FROM `db_report`;""")
    result_all  =  cur.fetchall()
    for result_one in result_all:
        for value in result_one:
            print (value, end=";")
        print("")


if __name__=='__main__':
    print('''\
Content-type:text/html\r\n
<html>
<head>\n<title>В базу, из базы, обработка</title>\n</head>
<body><h3>В базу, из базы, обработка</h3><pre>
    ''')
    #соединяемся с базой данных
    db  =  pymysql.connect(host = "127.0.0.1", user = "g06u29", passwd = "mysql16", db = "g06u29", charset = "utf8",use_unicode = True) # Open database connection
    cur  =  db.cursor() # prepare a cur object using cursor() method
    cur.execute('SET NAMES utf8') # execute SQL query using execute() method
    db_report(form, db, cur)