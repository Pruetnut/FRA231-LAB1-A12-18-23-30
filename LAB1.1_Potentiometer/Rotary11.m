figure
xlabel('Rotational Travel (%)'), ylabel('Vout (V)')

title('Potentinmeter Linear ตัวที่ 2') % ชื่อกราฟ
hold on % ต้องใช้เพราะต้อง plot หลายตัวแปรในกราฟเดียวกัน
plot(R1,(tt),'Red')  % ค่าที่วัดได้(Rotational travel, Output Voltage)
grid on