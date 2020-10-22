%plots the energy from your AIMD simulations 
%AIMD simulation data is taken from vasp.out using 'grep E0 vasp.out | awk '{print $9}'' in BASH
%I read in the data for E01, E02, etc. using the data.m script (also in this branch).

%subplot title
sgtitle('\fontsize{22}Be on Ag Surface: Energy Over Simulation Time')

h1 = subplot(2,2,1);
x = time;
y1 = E01;
avg1 = mean(y1);
plot(x,y1)
hold on
yline(avg1);
title('Simulation 1')

h2 = subplot(2,2,2);
y2 = E02;
avg2 = mean(y2);
plot(x,y2)
hold on
yline(avg2);
title('Simulation 2')

h3 = subplot(2,2,3);
y3 = E03;
avg3 = mean(y3);
plot(x,y3)
hold on
yline(avg3);
title('Simulation 3')

h4 = subplot(2,2,4);
y4 = E04;
avg4 = mean(y4);
plot(x,y4)
hold on
yline(avg4);
title('Simulation 4')

%makes all the y axes the same so you can compare things
linkaxes([h1, h2, h3, h4], 'y')

%comment this out if your subplot axes are different
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
ylabel('\fontsize{16}Energy (eV)')
