for th=3:0.1:48;
    a=4; c=1.2;
    d=2.0; b=1.5;
    AC=sqrt(a^2+d^2-2*a*d*cos(th));
    th1=acos((d^2+(AC^2)-a^2)/(2*d*AC));
    th2=acos(((AC^2)+b^2-c^2)/(2*AC*b));
    th3=(th2-th1);
    plot([0 a*cos(th)], [0 a*sin(th)],'ro-');hold on;
    plot([a*cos(th) a*cos(th)+b*cos(th3)], [a*sin(th) a*sin(th)+b*sin(th3)], 'ro-'); hold on;
    plot([0 d], [0 0], 'ro-'); hold on;
    plot([d a*cos(th)+b*cos(th3)], [0 a*sin(th)+b*sin(th3)], 'ro-');hold off;
    axis([-10 20 -10 10]);
    pause(0.1);
 end