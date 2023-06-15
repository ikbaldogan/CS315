%option main
digit [0-9]
booleanV true|false
integerV [+-]?{digit}+
doubleV {integerV}(\.){digit}+
alphanumeric ([A-Za-z]|{digit})
stringV \"[^\"]*\"
comment \#[^\#]*\#
identifier [A-Za-z]({alphanumeric}|_)*
%%
main printf("MAIN ");
\>\= printf("GREAT_EQ ");
\<\= printf("LESS_EQ ");
\=\= printf("EQ_OP ");
\= printf("ASSIGN_OPERATOR ");
for printf("FOR ");
while printf("WHILE ");
reach printf("REACH ");
null printf("NULL ");
\/ printf("DIVISION_OP ");
print\: printf("PRINT_LINE ");
function printf("FUNCTION ");
\, printf("COMMA ");
\+  printf("PLUS_OP ");
\- printf("MINUS_OP ");
\* printf("MULT_OP ");
\> printf("GREATER_OP ");
\< printf("LESSER_OP ");
\!\= printf("NOT_EQ_OP ");
\{ printf("LB ");
\}  printf("RB ");
\(  printf("LP ");
\)  printf("RP ");
\n  printf("NL\n");
_  printf("UNDERSCORE ");
\# printf("HASHTAG ");
if printf("IF ");
else  printf("ELSE ");
return  printf("RETURN ");
\; printf("SEMICOLON ");
connect printf("CONNECT ");
switch1 printf("SWITCH1 ");
switch2 printf("SWITCH2 ");
switch3 printf("SWITCH3 ");
switch4 printf("SWITCH4 ");
switch5 printf("SWITCH5 ");
switch6 printf("SWITCH6 ");
switch7 printf("SWITCH7 ");
switch8 printf("SWITCH8 ");
switch9 printf("SWITCH9 ");
switch10 printf("SWITCH10 ");
CONNECT_INTERNET printf("CONNECT_INTERNET ");
READ_TEMPERATURE printf("READ_TEMPERATURE ");
READ_HUMIDITY printf("READ_HUMIDITY ");
READ_AIRPRESSURE printf("READ_AIRPRESSURE ");
READ_AIRQUALITY printf("READ_AIRQUALITY ");
READ_LIGHT printf("READ_LIGHT ");
READ_SOUNDLEVEL printf("READ_SOUNDLEVEL ");
CONNECT_TO printf("CONNECT_TO ");
SEND_INT printf("SEND_INT ");
RECEIVE_INT printf("RECEIVE_INT ");
ELAPSED_TIME printf("ELAPSED_TIME ");
GET_TIME printf("GET_TIME ");
int printf("INT_TYPE ");
char printf("CHAR_TYPE ");
String printf("STRING_TYPE ");
double printf("DOUBLE_TYPE ");
boolean printf("BOOLEAN_TYPE ");
void printf("VOID_TYPE ");
connection printf("CONNECTION_TYPE");
sensor printf("SENSOR_TYPE ");
{booleanV} printf("boolean ");
{integerV}  printf("integer ");
{doubleV}  printf("double ");
{stringV}  printf("string ");
{comment} printf("comment ");
{identifier}  printf("IDENTIFIER ");
\&\&  printf("AND ");
\|\| printf("OR ");
. ;
