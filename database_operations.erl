-module(database_operations). 
-export([start/0]). 

start() ->
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = UAT-AAT-SQL01;UID = CrmAutoNumberingLocker;PWD = CrmAxuat!", []), 
   io:fwrite("~p",[Ref]).