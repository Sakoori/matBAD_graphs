%subplot title
sgtitle('\fontsize{22}Andersen Probability Test: Temperature Over Simulation Time')

%subplot(how many in x, how many in y, subplot placement)
h1 = subplot(2,2,1);
x = time;
y1 = T01;
avg1 = mean(y1);
plot(x,y1)
hold on
yline(avg1);
title('andersen\_prob = 1')

h2 = subplot(2,2,2);
y2 = T02;
avg2 = mean(y2);
plot(x,y2)
hold on
yline(avg2);
title('andersen\_prob = 0.8')

h3 = subplot(2,2,3);
y3 = T03;
avg3 = mean(y3);
plot(x,y3)
hold on
yline(avg3);
title('andersen\_prob = 0.5')

h4 = subplot(2,2,4);
y4 = T04;
avg4 = mean(y4);
plot(x,y4)
hold on
yline(avg4);
title('andersen\_prob = 0.3')

%links axes together so they're consistent
linkaxes([h1, h2, h3, h4], 'y')

%for configuring x and y axes
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
ylabel('\fontsize{16}Temperature (K)')
