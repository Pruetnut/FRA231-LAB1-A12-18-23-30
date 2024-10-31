figure
xlabel('Rotational Travel (%)'), ylabel('V ratio (%)')

title('Graph Between Rotational and V ratio of Potentiometer Linear Taper') % ชื่อกราฟ
hold on % ต้องใช้เพราะต้อง plot หลายตัวแปรในกราฟเดียวกัน
plot(R1,((3.3-V_R2)/3.3)*100,'Red')  % ค่าที่วัดได้(Rotational travel, Output Voltage)
grid on
plot(linearl_x,linearl_YB,'--y') % กราฟที่ถูกต้องจาก Datasheet
errorbar(linearl_x,linearl_YB,0.2*linearl_YB) % Error Bar (x,y,percent errory) ค่าจาก Datasheet