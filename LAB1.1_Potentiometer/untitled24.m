figure
xlabel('Time (s)'), ylabel('Volt (v)')

title('Schmitt-Trigger') % ชื่อกราฟ
hold on % ต้องใช้เพราะต้อง plot หลายตัวแปรในกราฟเดียวกัน
plot(time_d,d,'r')  % ค่าที่วัดได้(เวลา, Output Voltage)
grid on
plot(time_d,Schmitt,'b') % ค่าที่วัดได้(เวลา, Output Voltage)