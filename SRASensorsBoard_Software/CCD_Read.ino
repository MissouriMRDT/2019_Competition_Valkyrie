int count = 0;
int16_t data[10000];

void setup() {
  pinMode(A4, INPUT);
  Serial.begin(115200);
  pinMode(PE_0, INPUT);

}

void loop() {
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    Serial.println('a');
  }
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000000))
  {
    Serial.println('b');
  }
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    data[count] = analogRead(A4);
    count++;
  }
  Serial.println(count);
  for(int i = 0; i<count; i++)
  {
    Serial.print(i);
    Serial.print(",");
    Serial.println(data[i]);
  }
  Serial.println("---------------------------");
 count = 0;
}
