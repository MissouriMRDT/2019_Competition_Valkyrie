#include "Adafruit_NeoPixel.h"
#include "LightingBoard_Software.h"
#include "RoveComm.h"

//Define Software Variables
uint8_t headlight_intensity = 0;
uint8_t previous = 0;
uint8_t r = 0;              //previous red value
uint8_t b = 0;              //previous blue value
uint8_t g = 0;              //previous green value
uint8_t workLight = 0;
uint8_t headLight = 0;
uint8_t patternNum = 0;
uint8_t prevColor = 0;


bool track = 0;
bool ledShow = 0;           //determines whether the chosen command runs the NP.show() function
uint8_t program = 0;        //switch case control variable 

/////////////////////////////////////////Adafruit_NeoPixel NeoPixel(LED_COUNT, LED_SPI_MODULE);
Adafruit_NeoPixel strip = Adafruit_NeoPixel(LED_COUNT, LED_SPI_MODULE, NEO_GRB);
uint8_t NeoPixelRGB[RC_LIGHTINGBOARD_SETRGB_DATACOUNT];

// Setup & Loop Funcitons //////////////////////////////////////////////////////////////////////////////

void lightingSetup()
{
  Serial.begin(9600);
  Serial.println("Lighting Setup Complete.");

  pinMode(HEADLIGHT_SIGNAL, OUTPUT);
 
  pinMode(LED_SPI_MODULE, OUTPUT);
  pinMode(White_Switch, INPUT);
  pinMode(Pattern_Switch, INPUT);
  pinMode(headlight_Switch, INPUT);

  analogWrite(HEADLIGHT_SIGNAL, 0);

  strip.begin();

  start_up();
}

  
void lightingLoop(rovecomm_packet packet, RoveCommEthernetUdp * RoveComm) 
{
  static uint32_t spectrum[7] = {strip.Color(255, 0, 0), strip.Color(255, 127, 0), strip.Color(255, 255, 0), strip.Color(0, 255, 0), strip.Color(0, 0, 255), strip.Color(39, 0, 51), strip.Color(139, 0, 255)};

  if(packet.data_id == 0)
  {
    if(previous == 1 )//rainbow
    {
      rainbow(spectrum);
    }
    else if(previous == 2)//bouncyboi
    {
      bouncyBoi(strip.Color(r,g,b));
    }
    else if(previous == 3)//Merica
    {
      Merica(strip.Color(r,g,b));
    }
    else
    {
      if((workLight%3) == 1)
      {
        solid(strip.Color(100,100,100));
      }
      else if((workLight%3) == 2)
      {
        solid(strip.Color(200,200,200));
      }
      else
      {
        solid(strip.Color(r,g,b));
      }
    }
  }

  if(packet.data_id != 0)     /////////////////////TELEMETRY
  {
    switch(packet.data_id)
    {
      case RC_LIGHTINGBOARD_SETLEDINTENS_DATAID:
      {
        if(packet.data[0] >= 40)
        {
          headlight_intensity = 100;
        }
        else
        {
          headlight_intensity = map(packet.data[0], 0, 100, 0, 255); //maps headlight intensity to 0-100 since 0-255 is jank apparently
        }
        analogWrite(HEADLIGHT_SIGNAL, headlight_intensity); //turn the intensity to sent the data
        break;
      }
      case RC_LIGHTINGBOARD_SETRGB_DATAID:
      {
        previous = 0;
        solid(strip.Color(packet.data[0], packet.data[1], packet.data[2]));       
        r = packet.data[0];
        g = packet.data[1];
        b = packet.data[2];
        break;
      }
      case RC_LIGHTINGBOARD_LEDCMND_DATAID:
      {
        program = packet.data[0];
        //prevColor = packet.data[1];
        break;
      }
    }
  }///////////////////////////////////////////////////////BUTTONS
  else if(digitalRead(White_Switch))      //work lights
  {
    workLight++;
    previous = 0;
    r = 0;    //done to prevent going back to previous pattern
    g = 0;
    b = 0;
  
    if((workLight % 3) == 1)         //Dim setting
    {
      patternNum = 0;
      r = 100;    //done to prevent going back to previous pattern
      g = 100;
      b = 100;
      work_light(100);
    }
    else if((workLight % 3) == 2)    //Full brightness
    {
      patternNum = 0;
      r = 100;    //done to prevent going back to previous pattern
      g = 100;
      b = 100;
      work_light(200);
    }
    else
    {
      patternNum = 0;
      work_light(0);
    }
  }
   else if(digitalRead(Pattern_Switch))       //patterns
  {
    patternNum++;
    r = 0;
    g = 0;
    b = 0;
    if((patternNum % 5) == 1)         //solid rover red
    {
      workLight = 0;
      solid(strip.Color(255, 0, 0));
      r = 255;
      g = 0;
      b = 0;
    }
    else if((patternNum % 5) == 2)    //rainbow
    {
      workLight = 0;
      rainbow(spectrum);
      previous = 1;
    }
    else if((patternNum % 5) == 3)    //bouncy boi
    {
      workLight = 0;
      bouncyBoi(strip.Color(255, 0, 0));
      r = 255;
      g = 0;
      b = 0;
      previous = 2;
    }
    else if((patternNum % 5) == 4)    //Merica
    {
      Merica(strip.Color(255, 0, 0));
      r = 255;
      g = 0;
      b = 0;
      workLight = 0;
      previous = 3;
    }
    else
    {
      workLight = 0;
      previous = 0;
    }
  }
  else if(digitalRead(headlight_Switch))
  {
    if((headLight % 2) == 0)
      analogWrite(HEADLIGHT_SIGNAL, 20);
    else  
      analogWrite(HEADLIGHT_SIGNAL, 0);  
    headLight++; 
  }

  switch (program)
  {
    case 0:
      break;
    case 1:
      rainbow(spectrum);
      previous = 1;
      program = 0;
      break;
    case 2:
      bouncyBoi(strip.Color(r, g, b));
      previous = 2;
      program = 0;
      break;
    case 3:
      Merica(strip.Color(r, g, b));
      previous = 3;
      program = 0;
      break;
    default:
      break;
  }  
}

static void chase(uint32_t c, uint32_t b, uint32_t a) 
{  
  for(uint16_t i=0; i<LED_COUNT; i++) {
      strip.setPixelColor(i  , c); 
      //strip.setPixelColor(LED_COUNT-(3*i), b); // Erase pixel a few steps back
      strip.setPixelColor(LED_COUNT-i, a); 
      strip.show();  
  }

}

void start_up()
{
  int speed = (104/2);
  for(int j = 0; j < 1; j++)
  {
    for(int k = 0; k < 104; k++)
    {
      strip.setPixelColor(k  , 255,0,0); 
      strip.setPixelColor(k-4  , 0,0,0);
      //strip.setPixelColor(LED_COUNT-(3*i), b); // Erase pixel a few steps back
      strip.setPixelColor(104 - k, 255,0,0); 
      strip.setPixelColor(104 - (k-4), 0,0,0);
      strip.show();

      if(k < (104/2))
      {
        speed--;
      }
      else
      {
        speed++;
      }
      delay(speed);
    }
  } 

  for(int i = 0; i < 104; i++)
  {
    strip.setPixelColor(i, 0,0,0);
    strip.show();
  }
}

void work_light(uint32_t brightness)
{
  for(uint16_t i=0; i<LED_COUNT; i++) 
  {
    strip.setPixelColor(i  , ((uint32_t)brightness << 16) | ((uint32_t)brightness <<  8) | brightness); 
    strip.show();
  }
}


void solid(uint32_t color)
{
  for(uint16_t i=0; i<LED_COUNT; i++) 
  {
    if(digitalRead(digitalRead(Pattern_Switch)))
      return;  
    strip.setPixelColor(i  , color); 
    strip.show();  
  }
}


void rainbow(uint32_t arr[])
{
  for(uint16_t i=0; i<LED_COUNT; i++) 
  {
    if(digitalRead(digitalRead(Pattern_Switch)))
      return;
    strip.setPixelColor(i  , arr[0]); 
    strip.setPixelColor(i-(LED_COUNT/7), arr[1]); 
    strip.setPixelColor(i-2*(LED_COUNT/7), arr[2]); 
    strip.setPixelColor(i-3*(LED_COUNT/7), arr[3]); 
    strip.setPixelColor(i-4*(LED_COUNT/7), arr[4]); 
    strip.setPixelColor(i-5*(LED_COUNT/7), arr[5]); 
    strip.setPixelColor(i-6*(LED_COUNT/7), arr[6]); 
    strip.show();
  }
}

void bouncyBoi(uint32_t color)
{
 uint32_t white = strip.Color(200,200,200);

 for(uint16_t i=0; i<LED_COUNT+10; i++) 
  {
    if(digitalRead(digitalRead(Pattern_Switch)))
      return;
    strip.setPixelColor(i  , color); 
    strip.setPixelColor(i-1*(LED_COUNT/5)  , white); 
    strip.show();  
  }

  for(uint16_t j=LED_COUNT; j>0; j--) 
  {
    if(digitalRead(digitalRead(Pattern_Switch)))
      return;
    strip.setPixelColor(j  , color); 
    strip.setPixelColor(j+1*(LED_COUNT/5)  , white); 
    strip.show(); 
  }
 
}

void Merica(uint32_t color)
{

  uint32_t white = strip.Color(200,200,200);
  uint32_t red = strip.Color(200,0,0);
  uint32_t blue = strip.Color(0,0,200);

  for(uint16_t i = 0; i < (2*104); i++) 
  {
    if(digitalRead(digitalRead(Pattern_Switch)))
      return;
    strip.setPixelColor(i  , blue); 
    strip.setPixelColor(i-((104/40)*2), white); 
    strip.setPixelColor(i-((104/40)*3), blue); 
    strip.setPixelColor(i-((104/40)*5), white); 
    strip.setPixelColor(i-((104/40)*6), blue); 
    strip.setPixelColor(i-((104/40)*8), white); 
    strip.setPixelColor(i-((104/40)*9), blue); 
    strip.setPixelColor(i-((104/40)*11), white); 
    strip.setPixelColor(i-((104/40)*12), blue); 
    strip.setPixelColor(i-((104/40)*14), red); 
    strip.setPixelColor(i-((104/40)*16), white); 
    strip.setPixelColor(i-((104/40)*18), red); 
    strip.setPixelColor(i-((104/40)*20), white); 
    strip.setPixelColor(i-((104/40)*22), red); 
    strip.setPixelColor(i-((104/40)*24), white); 
    strip.setPixelColor(i-((104/40)*26), red); 
    strip.setPixelColor(i-((104/40)*28), white); 
    strip.setPixelColor(i-((104/40)*30), red); 
    strip.setPixelColor(i-((104/40)*32), white); 
    strip.setPixelColor(i-((104/40)*34), red); 
    strip.setPixelColor(i-((104/40)*36), 0); 
    strip.show();  
    delay(13);
  }
}