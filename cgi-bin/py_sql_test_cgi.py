def py_sql_test_cgi():
    import os, sys, time
    import cgi, cgitb
    cgi.test()
    print("\n\n",os.environ[ "REMOTE_ADDR" ])
    print(cgi.FieldStorage())
    qr_string = cgi.FieldStorage()
    print(qr_string) 
    #print("\n\nСтрока обработана cgi.parse_qs(query): ", cgi.parse_qs(qr_string))
    print ("\n\nqr_string.keys:",qr_string.keys())
    i=0
    for key in qr_string.keys():
       var_name = str(key)
       var_value = str(qr_string.getvalue(var_name))
       print  (str(i) +  ":" + var_name +"="+ var_value)
       i+=1
    print ("\n\n")
    print ("\nfunc_value=", qr_string.getvalue("func"))
    return()