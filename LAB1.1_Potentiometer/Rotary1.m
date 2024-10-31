figure
xlabel('Rotational Travel (%)'), ylabel('V ratio (%)')

title('Graph Between Rotational and V ratio of Potentiometer Audio Taper') % ชื่อกราฟ
hold on % ต้องใช้เพราะต้อง plot หลายตัวแปรในกราฟเดียวกัน
plot(R1,((3.3-V_R1)/3.3)*100,'Red')  % ค่าที่วัดได้(Rotational travel, Output Voltage)
grid on
plot(rotary_x,rotary_y,'--y') % กราฟที่ถูกต้องจาก Datasheet
errorbar(rotary_x,rotary_y,0.2*rotary_y) % Error Bar (x,y,percent errory) ค่าจาก Datasheet