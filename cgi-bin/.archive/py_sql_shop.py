import os,sys
import time, datetime
import cgi, cgitb
cgitb.enable()
import pymysql

def py_sql_shop(cur, qr_string):
    if not(qr_string.keys().__contains__("shop_lev_2")):
        qr_shop_lev_2="Аппараты_защиты" #устанавливаем по-умолчанию
    else:
        qr_shop_lev_2 = str(qr_string.getvalue("shop_lev_2")) #берем из строки запроса
    print('<form  action="./py_sql_pages.py"    method="get">')
    print('<div class="img_txt">\n', end = '')
    cur.execute("""SELECT `shop_lev_1` FROM `shop`""")
    shop_lev_1 = cur.fetchone()[0]
    #print (shop_lev_1)
    cur.execute("""SELECT `shop_lev_2` FROM `shop`  WHERE `shop_lev_1` = shop_lev_1  GROUP BY `shop_lev_2` ORDER BY `shop`.`shop_price` DESC""")
    result_all  =  cur.fetchall()
    #print ("result_all:", result_all)
    for result in result_all:
        to_qs_result=result[0].replace(" ","_")
        #print("\nresult[0]:", result[0], "  to_qs_result:", to_qs_result)
        if (qr_shop_lev_2 == to_qs_result):
            print ('<a href="../cgi-bin/py_sql_pages.py?function=page&page_id=6&shop_lev_2=',str(to_qs_result),'" class = "active">', str(result[0]),"</a>",sep="")
        else:
            print ('<a href="../cgi-bin/py_sql_pages.py?function=page&page_id=6&shop_lev_2=',str(to_qs_result),'">', str(result[0]),"</a>",sep="")
            
    
    cur.execute("""SELECT * FROM `shop`  WHERE `shop_lev_2` = %s ORDER BY `shop`.`shop_price` DESC""", (qr_shop_lev_2.replace("_"," ")))
    #cur.execute("""SELECT `page_id`,`page_prior_navig`,`page_title`, `page_keywords`, `page_content` FROM `sql_pages`  WHERE `page_id`  =  %s""",(page_id))
    #cur.execute("""SELECT * FROM `shop`  WHERE `shop_lev_2` = 'щиты распределительные' ORDER BY `shop`.`shop_price` DESC""")
    #cur.execute("""SELECT `page_id`,`page_prior_navig`,`page_title`, `page_keywords`, `page_content` FROM `sql_pages` ORDER BY `sql_pages`.`page_prior_navig` DESC """)
    result_all  =  cur.fetchall()
    #print ("\n\nresult_all:\n", result_all)

    print("\n<ul>")
    i=0
    for result in result_all:
        #print("\n", type(result), result)
        print ("\n<li>")
        print ("<img src=\"../img/", result[5],"\"><br>",sep="", end = "\n")
        print (result[3],sep="", end = "; ")
        print (result[6],sep="", end = "руб. ")
        #name_of = 'id-'+str(result[0])+'-'+str(result[1])+'-'+str(result[2])+'-'+str(result[3])+'-'+str(result[6])
        print('\n<input type="hidden" name="',i,'_a_qs_group" value="',str(result[2]),'">', sep='', end='')
        print('\n<input type="hidden" name="',i,'_b_qs_name" value="',str(result[3]),'">', sep='', end='')
        print('\n<input type="hidden" name="',i,'_c_qs_price" value="',str(result[6]),'">', sep='', end='')
        print('\nЗаказать:')
        print('<input type="text" name="',i,'_d_qs_amount" value="0" size="3">', sep='', end='')
        print('\n<input type="hidden" name="',i,'_z_endofline" value="\\n">', sep='', end='')
        print ("\n</li>", end="")
        i+=1
    print("\n<ul>\n</div>\n")
    print('''
    <!--Нижерасположенные фрагменты перемещать нельзя, редактировать можно-->
    <p>
    <input type="Hidden" name="function" value="page">
    <input type="Hidden" name="page_id" value="7">
    </p>

    <p>
    <input type="reset"  name="reset" value="Очистить">
    <input type="submit" name="submit" value="Отправить в корзину">
    </p> 
    ''')
