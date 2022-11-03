//----------------------Skeleton Code--------------------//
#include <WiFi.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>

//    Can be client or even host   //
#ifndef STASSID
#define STASSID "sravan" // Add your network credentials
#define STAPSK  "12345678"
#endif

const char* ssid = STASSID;
const char* password = STAPSK;


void OTAsetup() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    delay(5000);
    ESP.restart();
  }
  ArduinoOTA.begin();
}

void OTAloop() {
  ArduinoOTA.handle();
}

//-------------------------------------------------------//
int A=0,B=0,C=0;
int X,Y;
void setup(){
  OTAsetup();
pinMode(18, OUTPUT); 
pinMode(2, INPUT);
pinMode(3, INPUT);
pinMode(4, INPUT);


  //-------------------//
  // Custom setup code //
  //-------------------//
}

void loop() {
  OTAloop();
  delay(10);  // If no custom loop code ensure to have a delay in loop
  //-------------------//
  // Custom loop code  //
  //-------------------//
C = digitalRead(4);//LSB
B = digitalRead(3);
A = digitalRead(2);;//MSB
X= A&&(B|| C);
Y=(A&&B)||(A && C);
if(X==Y) 
{
digitalWrite(18,1);
}
else
{
digitalWrite(18,0);
}

}
