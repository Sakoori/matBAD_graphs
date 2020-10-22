sgtitle('\fontsize{22}Be on Ag Surface: Ion-Surface Distance Over Simulation Time')

h1 = subplot(2,2,1);
x = time;
y1 = B01;
avg1 = mean(y1);
plot(x,y1)
hold on
yline(avg1);
title('Simulation 1')

h2 = subplot(2,2,2);
y2 = B02;
avg2 = mean(y2);
plot(x,y2)
hold on
yline(avg2);
title('Simulation 2')

h3 = subplot(2,2,3);
y3 = B03;
avg3 = mean(y3);
plot(x,y3)
hold on
yline(avg3);
title('Simulation 3')

h4 = subplot(2,2,4);
y4 = B04;
avg4 = mean(y4);
plot(x,y4)
hold on
yline(avg4);
title('Simulation 4')

linkaxes([h1, h2, h3, h4], 'y')

p1=get(h1,'position');
p2=get(h2,'position');
p3=get(h3,'position');
p4=get(h4,'position');
height=p1(2)+p1(4)-p4(2);
width=p4(1)+p4(3)-p3(1);
h5=axes('position',[p3(1) p3(2) width height],'visible','off'); 
h5.XLabel.Visible='on';
h5.YLabel.Visible='on';

axes(h5)
xlabel('\fontsize{16}Time (fs)')
ylabel('\fontsize{16}Distance From Surface (A)')
