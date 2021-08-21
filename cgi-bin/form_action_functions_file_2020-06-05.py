import os,sys

def form_dictionary(form):
    print ("Анализируем строку запроса")
    print ("ключи(form.keys):",form.keys())
    form_keys_list=list()
    form_values_list=list() 
    form_values_dict=dict() 
    print  ("Названия ключей  и их значения (как есть)")
    i=0
    for form_key in form.keys():
        print  (i,  ": ", form_key," = ", form.getvalue(form_key))
        form_keys_list.append(form_key)
        form_values_list.append(form.getvalue(form_key))
        form_values_dict.update({form_key: form.getvalue(form_key)})
        i+=1
    print('\nВ виде словаря (form_values_dict):\n', form_values_dict)
    # сортируем список ключей (что-бы поля не сбоили при выводе в файл)
    print  ("\n","Ключи  и их значения после сортировки ")
    form_keys_list.sort()
    i=0
    for form_key in form_keys_list:
        print  (i,  ": ", form_key," = ", form.getvalue(form_key))
        i+=1
    print("form_keys_list: ", form_keys_list)
    
    if "experience" in form:
        print('\n\n Пример списка из строки запроса (experience): ', form.getvalue('experience'))
        strExperiences = form.getvalue('experience')
        print("strExperiences: ", strExperiences)
        intExperiences = list()
        for item in strExperiences: intExperiences.append(int(item))
        print("intExperiences: ", intExperiences, "   sum(intExperiences): ", sum(intExperiences), "\n")  

def print_form_file(form):
    print("\nСоздаем форму и отправляем данные на сервер")
    #print('<form  action="./form_action_file.py" target="_self" method="get">')
    print('<form  action="./py_sql_pages.py" target="_self" method="get">')
    print('''\
Первая переменная:<input type="Техт" name="variable_1" value="1" >
Вторая переменная:<input type="Техт" name="variable_2" value="2" >
Третья переменная:<input type="Техт" name="variable_3" value="3" >
<!--Нижерасположенное удалять нельзя, редактировать можно-->
Название файла: <input type="Техт" name="000_file_name" value="g06u32.txt" >
Тип записи в файл:<select name="010_mode">
<OPTION value="a">a - дозаписать в файл(таблицу базы)</OPTION> 
    <OPTION value="w">w - очистить файл(таблицу базы) и записать </OPTION> 
    </select>
<input type="hidden" name="function" value="page">
<input type="hidden" name="page_id" value="8">
<input type="submit" name="submit" value="Отправить">
</form>
    ''')

def file_list(form):
    if "000_file_name" in form:
        file = "../tmp/" + form["000_file_name"].value
        print ("\nЗаписываем в:", file)
        if(form["010_mode"].value=='w'):#0 - очищаем файл 
            file_stream = open(file, mode='w', encoding="utf-8", errors=None)
            file_stream.close()
        file_stream = open(file, mode='a', encoding="utf-8", errors=None)
        form_keys_list=list()
        for form_key in form.keys():
            form_keys_list.append(form_key)
        form_keys_list.sort()
        for form_key in form_keys_list:
            form_value = form.getvalue(form_key)
            file_stream.write("%1s;%1s;" % (form_key, form_value ))
            sys.stdout.write("%1s;%1s;" % (form_key, form_value ))
        file_stream.write("\n")
        file_stream.close()

        listB = list() #для формирования списка из столбца файла
        r_stream = open(file, mode='r', encoding="utf-8")
        print ("\n\nПострочно считываем строки из ", file, "и разбираем на слова")
        for line in r_stream.readlines():
            print (line,end='')
            words = line.split(";")
            print(words)
            listB.append(words[15])
        print("\nlistB(Список из 16-го столбца файла):", listB)
        print("listB.__len__():", listB.__len__())