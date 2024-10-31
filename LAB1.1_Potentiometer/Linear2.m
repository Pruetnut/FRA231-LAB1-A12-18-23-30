figure
xlabel('Rotational Travel (%)'), ylabel('Output Voltage (%)')

title('Graph Between Rotational and Voltage of Potentiometer Linear Taper') % ชื่อกราฟ
hold on % ต้องใช้เพราะต้อง plot หลายตัวแปรในกราฟเดียวกัน
plot(R1,((3.3-V_L2)/3.3)*100,'Red')  % ค่าที่วัดได้(Rotational travel, Output Voltage)
grid on
plot(linearl_x,linearl_y,'--y') % กราฟที่ถูกต้องจาก Datasheet
errorbar(linearl_x,linearl_y,0.2*linearl_y) % Error Bar (x,y,percent errory) ค่าจาก Datasheet
%% 
Schmitt = zeros(1, length(d));
state=0;
for i = 1:length(d)
    if d(i) > 1 ||state==1
        state=1;
        Schmitt(i) = 3.3;
    elseif d(i) < 0.5||state==0
        state=0;
        Schmitt(i) = 0;
    end
end

