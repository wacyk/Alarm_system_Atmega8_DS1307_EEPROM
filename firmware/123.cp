#line 1 "D:/prjcts/zvonilka/123.c"
#line 21 "D:/prjcts/zvonilka/123.c"
char zvonki_minuts[32],zvonki_hours[32],zvonki_on_flags[32],day_s[7];
union IntByteUnionType
{
int i;
unsigned char byt[2];
};
union IntByteUnionType iu;
char curr_item=0, min_item=0,max_item=1;
char hours=0, seconds=0,minutes=0,mounth=1,day=1,year=1,day_of_week=1;
char temp=0, temp2=0;
char addrtmp, index, indextmp;
char max_n, as_long_as_sec, as_long_as_counter,
next_index, next_hour,next_minutes, found, mode;
char txt1[] = "DATA i Vremya\n";
char txt2[] = "zvonit'po dnyam\n";
char txt4[] = "kolwo zvonkow\n";
char txt3[] = "dlitel'nost'\n";
char txt5[] = "ust. raspisan.\n";
char txt6[] = "rezhim raboty\n";
char txt7[] = "SU\n";
char txt8[] = "MO\n";
char txt9[] = "TU\n";
char txt10[] = "WE\n";
char txt11[] = "TH\n";
char txt12[] = "FR\n";
char txt13[] = "SA\n";
char txt14[] = "saving...\n";
char txt15[]= "dlit.zvonkow\n";
char txt16[]= " CEK.\n";
char txt17[]= "ENTER\n";
char txt18[]= "ZV.\n";
char txt19[]= " On\n";
char txt20[]= "Off\n";
char txt21[]= "--\n";
char txt22[]= "avtomat\n";
char txt23[]= "ruchnoj\n";
char txt24[]= "SL\n";
char txt25[]= "--:--\n";
char txt26[]= "zvonok...\n";
void send_cmd_lcd(char cmd){
 PORTB.F3  = 0;
 PORTD.F1  = 1;
 PORTB.F2 =(cmd & (1<<0)) ? 1 : 0 ;
 PORTD.F2 =(cmd & (1<<1)) ? 1 : 0 ;
 PORTB.F0 =(cmd & (1<<2)) ? 1 : 0 ;
 PORTD.F3 =(cmd & (1<<3)) ? 1 : 0 ;
 PORTD.F7 =(cmd & (1<<4)) ? 1 : 0 ;
 PORTD.F4 =(cmd & (1<<5)) ? 1 : 0 ;
 PORTD.F6 =(cmd & (1<<6)) ? 1 : 0 ;
 PORTD.F5 =(cmd & (1<<7)) ? 1 : 0 ;
delay_us(250);
 PORTD.F1  = 0;
delay_us(250);
}

void send_data_lcd(char cmd){
 PORTB.F3  = 1;
 PORTD.F1  = 1;
 PORTB.F2 =(cmd & (1<<0)) ? 1 : 0 ;
 PORTD.F2 =(cmd & (1<<1)) ? 1 : 0 ;
 PORTB.F0 =(cmd & (1<<2)) ? 1 : 0 ;
 PORTD.F3 =(cmd & (1<<3)) ? 1 : 0 ;
 PORTD.F7 =(cmd & (1<<4)) ? 1 : 0 ;
 PORTD.F4 =(cmd & (1<<5)) ? 1 : 0 ;
 PORTD.F6 =(cmd & (1<<6)) ? 1 : 0 ;
 PORTD.F5 =(cmd & (1<<7)) ? 1 : 0 ;
delay_us(250);
 PORTD.F1  = 0;
delay_us(250);
}

void wt_lcd_init(){

send_cmd_lcd(0b00111000);
delay_ms(10);
send_cmd_lcd(0b00111000);
delay_ms(10);
send_cmd_lcd(0b00111000);
delay_ms(10);
send_cmd_lcd(0b00111000);
delay_ms(10);
send_cmd_lcd(0b0001000);
delay_ms(10);
send_cmd_lcd(0b00000001);
delay_ms(10);
send_cmd_lcd(0b00000110);
delay_ms(10);
send_cmd_lcd(0b00001100);
delay_ms(10);

}

void init(){
DDRB=0b11001111;
DDRC=0b11110000;
DDRD=0b11111111;
PORTB=0b00110000;
PORTC=0b00001111;
PORTD=0b00000000;
wt_lcd_init();
TWI_Init(100000);
}



EEP_write(char adr, char dat){
while (EEWE_bit==1) asm nop;
SREG_I_bit=0;
 iu.i =adr;
 EEARL = iu.byt[0];
 EEARH = iu.byt[1];
 EEDR = dat;
 EEMWE_bit =1;
 EEWE_bit =1;
 SREG_I_bit =1;
}

char EEP_read(char adr){
char dat;
while (EEWE_bit==1) asm nop;
SREG_I_bit=0;
 iu.i =adr;
 EEARL = iu.byt[0];
 EEARH = iu.byt[1];
 EERE_bit =1;
 dat = EEDR ;
 SREG_I_bit =1;
 return dat;
}

void send_twi_data(char addr,char dat1){

 TWI_Start();
 TWI_Write(11010000);
 TWI_Write(addr);
 TWI_Write(dat1);
 TWI_Stop();

}

char get_twi_data(char addr){
char dat1;
 TWI_Start();
 TWI_Write(11010000);
 TWI_Write(addr);
 TWI_Start();
 TWI_Write(11010001);
 dat1 = TWI_Read(0);
 TWI_Stop();
 return dat1;
}

char get_i2c(char param){
char tmp=0;
tmp= get_twi_data (param);
return (((tmp & 0xF0) >> 4)*10)+(tmp & 0x0F);
}
void put_i2c(char param,char dat){
send_twi_data (param, ((dat/10) << 4)|(dat%10));
}

void lcd_2gig_out(char dat){if(dat<99){
send_data_lcd(dat/10+48);send_data_lcd(dat%10+48);}
else{send_data_lcd('-');send_data_lcd('-'); }
}

void string_puter(char *mas){
char itm;
for (itm=0;mas[itm]!='\n';itm++) send_data_lcd (mas[itm]);
}

void text_shower(char index){
switch(index){
case 1: string_puter (txt1); break;
case 2: string_puter (txt2); break;
case 3: string_puter (txt3); break;
case 4: string_puter (txt4); break;
case 5: string_puter (txt5); break;
case 6: string_puter (txt6); break;
}
}

void show_day_week(char day ){
switch (day){
case 1: string_puter (txt7); break;
case 2: string_puter (txt8); break;
case 3: string_puter (txt9); break;
case 4: string_puter (txt10); break;
case 5: string_puter (txt11); break;
case 6: string_puter (txt12); break;
case 7: string_puter (txt13); break;
}
}

void show_time(){
 lcd_2gig_out ( get_i2c(2));
 send_data_lcd (':');
 lcd_2gig_out ( get_i2c(1));
 send_data_lcd (':');
 lcd_2gig_out ( get_i2c(0));
}
void show_date(){
 lcd_2gig_out ( get_i2c(4));
 send_data_lcd ('/');
 lcd_2gig_out ( get_i2c(5));
 send_data_lcd ('/');
 send_data_lcd ('2');
 send_data_lcd ('0');
 lcd_2gig_out ( get_i2c(6));
 send_data_lcd ('/');
 day_of_week = get_twi_data (3);
 show_day_week (day_of_week );
}





char item_plus(char curr_item, char min_item, char max_item){
 curr_item++;
 if(curr_item > max_item) curr_item = min_item;
 return curr_item ;
 }

char item_minus(char curr_item, char min_item,char max_item){
 if( curr_item==min_item) curr_item = max_item; else curr_item --;
 return curr_item ;
 }

void butt_delay(){char i;
 for( i=0;i<30; i++)Delay_8ms();
 }

void get_alarms_from_EEP(){
 for(temp2=0;temp2<max_n ;temp2++){
 zvonki_minuts[temp2]=EEP_read((temp2+1)*3-1+100);
 zvonki_hours[temp2]=EEP_read((temp2+1)*3-2+100);
 zvonki_on_flags[temp2]=EEP_read((temp2+1)*3+100);
 }
}

void vars_updater_func(){
max_n=EEP_read (60);
as_long_as_sec=EEP_read (55);
mode=EEP_read (48);
for(index=0;index<7;index++) day_s[index]=EEP_read(21+index);
}

char next_finder(char *mas_hours, char *mas_minutes, char *on_flags, char curr_hours, char curr_minutes){
int curr_compare, index_compare,min_compare=4096;
char index_min=-1;
curr_compare=curr_hours*100+curr_minutes;

for(index=0; index<max_n; index ++ ){
index_compare=mas_hours[index]*100+mas_minutes[index];
if ((on_flags[index]==1) && (index_compare> curr_compare) )
 {
 if( index_compare < min_compare )
 {index_min=index;
 min_compare=index_compare;
 }

 }
}
if (index_min <0) return 0; else return index_min+1;
}


select_item_core(char itm,char min, char max ){
if( ~PINC2_bit )
 { while( ~PINC2_bit ) asm nop;
 itm=item_plus(itm,min,max);
 butt_delay ();
 vars_updater_func();
 send_cmd_lcd ( 0b00000001 );
 }
if( ~PINB5_bit )
 { while( ~PINB5_bit )asm nop;
 itm=item_minus(itm,min,max);
 butt_delay ();
 vars_updater_func();
 send_cmd_lcd ( 0b00000001 );
 }
 return itm;
}

change_item_core(){
if( ~PINC0_bit )
 {curr_item=item_minus(curr_item ,min_item,max_item);
 EEP_write (addrtmp,curr_item);
 butt_delay ();
 }
if( ~PINC1_bit )
 {curr_item=item_plus(curr_item ,min_item,max_item);
 EEP_write (addrtmp,curr_item);
 butt_delay ();
 }

}

void set_time_date_func(){
temp2=1;
send_cmd_lcd ( 0b00000001 );
while(! ~PINB4_bit ){
temp2=select_item_core(temp2,1,7);
switch(temp2){
case 1:min_item=0;max_item=23; addrtmp=2;send_cmd_lcd ( 191+  2);send_data_lcd ('^');break;
case 2:min_item=0;max_item=59; addrtmp=1;send_cmd_lcd ( 191+  5);send_data_lcd ('^');break;
case 3:min_item=0;max_item=0; addrtmp=0;send_cmd_lcd ( 191+  8);send_data_lcd ('^');break;
case 4:min_item=1;max_item=31; addrtmp=4;send_cmd_lcd ( 191+  2);send_data_lcd ('^');break;
case 5:min_item=1;max_item=12; addrtmp=5;send_cmd_lcd ( 191+  5);send_data_lcd ('^');break;
case 6:min_item=0;max_item=99; addrtmp=6;send_cmd_lcd ( 191+  10);send_data_lcd ('^');break;
case 7:min_item=1;max_item=7; addrtmp=3;send_cmd_lcd ( 191+  13);send_data_lcd ('^');break;
}
curr_item =get_i2c(addrtmp);
if( ~PINC0_bit )
 {curr_item=item_minus(curr_item ,min_item,max_item);
 put_i2c (addrtmp,curr_item);
 butt_delay ();
 }
if( ~PINC1_bit )
 {curr_item=item_plus(curr_item ,min_item,max_item);
 put_i2c (addrtmp,curr_item);
 butt_delay ();
 }
send_cmd_lcd ( 127+  1);
if (temp2<4)show_time(); else show_date();
}
while( ~PINB4_bit ) butt_delay ();;
send_cmd_lcd ( 0b00000001 );
}

void days_of_week(){
send_cmd_lcd( 0b00000001 );
butt_delay ();
while(! ~PINB4_bit ){
temp2=select_item_core(temp2,1,7);
switch(temp2){
case 1:min_item=0;max_item=1 ; addrtmp=21;send_cmd_lcd ( 191+  1);send_data_lcd ('^');break;
case 2:min_item=0;max_item=1 ; addrtmp=22;send_cmd_lcd ( 191+  3);send_data_lcd ('^');break;
case 3:min_item=0;max_item=1 ; addrtmp=23;send_cmd_lcd ( 191+  5);send_data_lcd ('^');break;
case 4:min_item=0;max_item=1 ; addrtmp=24;send_cmd_lcd ( 191+  7);send_data_lcd ('^');break;
case 5:min_item=0;max_item=1 ; addrtmp=25;send_cmd_lcd ( 191+  9);send_data_lcd ('^');break;
case 6:min_item=0;max_item=1 ; addrtmp=26;send_cmd_lcd ( 191+  11);send_data_lcd ('^');break;
case 7:min_item=0;max_item=1 ; addrtmp=27;send_cmd_lcd ( 191+  13);send_data_lcd ('^');break;
}
curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
change_item_core();
send_cmd_lcd ( 127+  1);
for(index=0; index<7;index++){ if(EEP_read(21+index)!=0 ) show_day_week(1+index); else string_puter(txt21);}

}
while( ~PINB4_bit ) butt_delay ();
vars_updater_func();
}

void set_list(){
temp2=1;
send_cmd_lcd ( 0b00000001 );
while(! ~PINB4_bit ){
temp2=select_item_core(temp2,1,4);
switch(temp2){
case 1:min_item=1;max_item=max_n ; addrtmp=20;send_cmd_lcd ( 191+  5);send_data_lcd ('^');break;
case 2:min_item=0;max_item=23; addrtmp=EEP_read(20)*3-2+100;send_cmd_lcd ( 191+  10);send_data_lcd ('^');break;
case 3:min_item=0;max_item=59; addrtmp=EEP_read(20)*3-1+100;send_cmd_lcd ( 191+  13);send_data_lcd ('^');break;
case 4:min_item=0;max_item=1; addrtmp=EEP_read(20)*3+100; send_cmd_lcd ( 127+  16);send_data_lcd ('v');break;
}
curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
change_item_core();
send_cmd_lcd( 127+  1); string_puter(txt18); lcd_2gig_out(EEP_read(20));
 send_data_lcd(':');send_data_lcd(' '); send_data_lcd(' ');
lcd_2gig_out(EEP_read(addrtmp=EEP_read(20)*3-2+100));send_data_lcd(':');
lcd_2gig_out(EEP_read( addrtmp=EEP_read(20)*3-1+100));send_cmd_lcd( 191+  14);
if(EEP_read(addrtmp=EEP_read(20)*3+100)==1)string_puter(txt19); else string_puter(txt20);
}
while( ~PINB4_bit ) butt_delay ();
send_cmd_lcd ( 0b00000001 );
get_alarms_from_EEP();
}

void next(){
day_of_week=get_i2c(3);
if ((day_s[day_of_week-1]!=0)&&(mode!=0)&& found==0){
hours=get_i2c(2);
minutes=get_i2c(1);
next_index = next_finder (zvonki_hours , zvonki_minuts ,zvonki_on_flags, hours, minutes);
if (next_index!=0){
found=1;
next_hour = zvonki_hours[next_index-1];
next_minutes =zvonki_minuts[next_index-1];
}
}

}

void main_menu(){
temp=1;
send_cmd_lcd ( 0b00000001 );
while(! ~PINB4_bit ){
temp=select_item_core(temp,1,6);
 switch(temp){
 case 1:addrtmp=47;send_cmd_lcd ( 191+  11);string_puter(txt17); if ( ~PINC3_bit ) set_time_date_func(); break;
 case 2:addrtmp=47;send_cmd_lcd ( 191+  11);string_puter(txt17); if ( ~PINC3_bit ) days_of_week(); break;

 case 3:min_item=1;max_item=55; addrtmp=55;send_cmd_lcd ( 127+  16);send_data_lcd ('^');
 send_cmd_lcd ( 191+  16);send_data_lcd ('v'); send_cmd_lcd ( 191+  1);lcd_2gig_out(curr_item);string_puter(txt16); break;

 case 4:min_item=1;max_item=32; addrtmp=60;send_cmd_lcd ( 127+  16);send_data_lcd ('^');
 send_cmd_lcd ( 191+  16);send_data_lcd ('v'); send_cmd_lcd ( 191+  1); lcd_2gig_out(curr_item); break;
 case 5: addrtmp=47;send_cmd_lcd ( 191+  11);string_puter(txt17); if ( ~PINC3_bit ) set_list(); break;
 case 6: min_item=0;max_item=1; addrtmp=48; send_cmd_lcd ( 127+  16);send_data_lcd ('^');
 send_cmd_lcd ( 191+  1); if(EEP_read(48)==0)string_puter(txt23);else string_puter(txt22);
 send_cmd_lcd ( 191+  16);send_data_lcd ('v'); break;
 }
 curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
send_cmd_lcd ( 127+  1); text_shower(temp);
change_item_core();
}
send_cmd_lcd ( 0b00000001 );
vars_updater_func();

while( ~PINB4_bit ) butt_delay ();
}

void main (){
init();
vars_updater_func();
get_alarms_from_EEP();
found=0;
while(1==1){
if( ~PINC3_bit ) { while( ~PINC3_bit ){butt_delay();}
 butt_delay();

 main_menu();
 }
if( ~PINC0_bit || ~PINC1_bit || ~PINB5_bit || ~PINC2_bit ) { while( ~PINC0_bit || ~PINC1_bit || ~PINB5_bit || ~PINC2_bit ){ PORTD.F0 =1;}
  PORTD.F0 =0;
 }

if (found==1){
hours=get_i2c(2);
minutes=get_i2c(1);
if (next_hour==hours&&next_minutes ==minutes ){
found=0;
 PORTD.F0 =1;
send_cmd_lcd ( 0b00000001 );
send_cmd_lcd ( 127+  1);
send_cmd_lcd ( 127+  1);
send_cmd_lcd ( 127+  1);
string_puter(txt26);
for(temp=0; temp<as_long_as_sec ; temp++) Delay_1sec();
send_cmd_lcd ( 0b00000001 );
  PORTD.F0 =0;
}}

next();




if ((day_s[day_of_week-1]!=0)&&(mode!=0)){
send_cmd_lcd ( 191+  10);
string_puter(txt24);
if (next_index!=0){lcd_2gig_out(next_hour);send_data_lcd(':');
lcd_2gig_out(next_minutes);}else string_puter(txt25);
}
else
{
send_cmd_lcd ( 191+  10);
if (mode==0) string_puter(txt23);
}


send_cmd_lcd ( 191+  1);
show_time ();
send_cmd_lcd ( 127+  1);
show_date ();

}}
