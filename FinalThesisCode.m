[~,~,TData] = xlsread('Final Thesis Data 1.xlsx','All Years','A2:L2923');

dt=datetime(2010,1,1:1:2922)';
Events=[TData(:,4)];
Weekdays=[TData(:,5)];
Weekends=[TData(:,6)];
Holiday=[TData(:,7)];
SPE=[TData(:,8)];
HNE=[TData(:,9)];
CSTE=[TData(:,10)];
ABRPE=[TData(:,11)];
Other=[TData(:,12)];

a= cell2mat(Events);
b= cell2mat(Weekdays);
c= cell2mat(Weekends);
d= cell2mat(Holiday);
e= cell2mat(SPE);
f= cell2mat(HNE);
g= cell2mat(CSTE);
h= cell2mat(ABRPE);
j= cell2mat(Other);


[Daynumber,DayName]=weekday(dt);


%%  Graphical Representation of Data Per Weekday

a1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(a(i))
        a1(1)=a1(1)+a(i);
    elseif Daynumber(i)==2 && ~isnan(a(i))
        a1(2)=a1(2)+a(i);
    elseif Daynumber(i)==3 && ~isnan(a(i))
        a1(3)=a1(3)+a(i);
    elseif Daynumber(i)==4 && ~isnan(a(i))
        a1(4)=a1(4)+a(i);
    elseif Daynumber(i)==5 && ~isnan(a(i))
        a1(5)=a1(5)+a(i);
    elseif Daynumber(i)==6 && ~isnan(a(i))
        a1(6)=a1(6)+a(i);
    elseif Daynumber(i)==7 && ~isnan(a(i))
        a1(7)=a1(7)+a(i);
    end
end

    for m=1:1:7
        bar(1:7,a1(1:7,1))
        hold on;
        title('Total Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
b1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(b(i))
        b1(1)=b1(1)+b(i);
    elseif Daynumber(i)==2 && ~isnan(b(i))
        b1(2)=b1(2)+b(i);
    elseif Daynumber(i)==3 && ~isnan(b(i))
        b1(3)=b1(3)+b(i);
    elseif Daynumber(i)==4 && ~isnan(b(i))
        b1(4)=b1(4)+b(i);
    elseif Daynumber(i)==5 && ~isnan(b(i))
        b1(5)=b1(5)+b(i);
    elseif Daynumber(i)==6 && ~isnan(b(i))
        b1(6)=b1(6)+b(i);
    elseif Daynumber(i)==7 && ~isnan(b(i))
        b1(7)=b1(7)+b(i);
    end
end
    figure;
    for m=1:1:7
        bar(1:7,b1(1:7,1))
        hold on;
        title('Events per weekdays of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
c1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(c(i))
        c1(1)=c1(1)+c(i);
    elseif Daynumber(i)==2 && ~isnan(c(i))
        c1(2)=c1(2)+c(i);
    elseif Daynumber(i)==3 && ~isnan(c(i))
        c1(3)=c1(3)+c(i);
    elseif Daynumber(i)==4 && ~isnan(c(i))
        c1(4)=c1(4)+c(i);
    elseif Daynumber(i)==5 && ~isnan(c(i))
        c1(5)=c1(5)+c(i);
    elseif Daynumber(i)==6 && ~isnan(c(i))
        c1(6)=c1(6)+c(i);
    elseif Daynumber(i)==7 && ~isnan(c(i))
        c1(7)=c1(7)+c(i);
    end
end
    figure;
    for m=1:1:7
        bar(1:7,c1(1:7,1))
        hold on;
        title('Events per Weekend of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
d1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(d(i))
        d1(1)=d1(1)+d(i);
    elseif Daynumber(i)==2 && ~isnan(d(i))
        d1(2)=d1(2)+d(i);
    elseif Daynumber(i)==3 && ~isnan(d(i))
        d1(3)=d1(3)+d(i);
    elseif Daynumber(i)==4 && ~isnan(d(i))
        d1(4)=d1(4)+d(i);
    elseif Daynumber(i)==5 && ~isnan(d(i))
        d1(5)=d1(5)+d(i);
    elseif Daynumber(i)==6 && ~isnan(d(i))
        d1(6)=d1(6)+d(i);
    elseif Daynumber(i)==7 && ~isnan(d(i))
        d1(7)=d1(7)+d(i);
    end
end
    figure;
    for m=1:1:7
        bar(1:7,d1(1:7,1))
        hold on;
        title(' Events per Holiday of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
    e1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(e(i))
        e1(1)=e1(1)+e(i);
    elseif Daynumber(i)==2 && ~isnan(e(i))
        e1(2)=e1(2)+e(i);
    elseif Daynumber(i)==3 && ~isnan(e(i))
        e1(3)=e1(3)+e(i);
    elseif Daynumber(i)==4 && ~isnan(e(i))
        e1(4)=e1(4)+e(i);
    elseif Daynumber(i)==5 && ~isnan(e(i))
        e1(5)=e1(5)+e(i);
    elseif Daynumber(i)==6 && ~isnan(e(i))
        e1(6)=e1(6)+e(i);
    elseif Daynumber(i)==7 && ~isnan(e(i))
        e1(7)=e1(7)+e(i);
    end
end
      figure;
    for m=1:1:7
        bar(1:7,e1(1:7,1))
        hold on;
        title('Spine Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    f1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(f(i))
        f1(1)=f1(1)+f(i);
    elseif Daynumber(i)==2 && ~isnan(f(i))
        f1(2)=f1(2)+f(i);
    elseif Daynumber(i)==3 && ~isnan(f(i))
        f1(3)=f1(3)+f(i);
    elseif Daynumber(i)==4 && ~isnan(f(i))
        f1(4)=f1(4)+f(i);
    elseif Daynumber(i)==5 && ~isnan(f(i))
        f1(5)=f1(5)+f(i);
    elseif Daynumber(i)==6 && ~isnan(f(i))
        f1(6)=f1(6)+f(i);
    elseif Daynumber(i)==7 && ~isnan(f(i))
        f1(7)=f1(7)+f(i);
    end
end
      figure;
    for m=1:1:7
        bar(1:7,f1(1:7,1))
        hold on;
        title('Head & Neck Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end

    g1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(g(i))
        g1(1)=g1(1)+g(i);
    elseif Daynumber(i)==2 && ~isnan(g(i))
        g1(2)=g1(2)+g(i);
    elseif Daynumber(i)==3 && ~isnan(g(i))
        g1(3)=g1(3)+g(i);
    elseif Daynumber(i)==4 && ~isnan(g(i))
        g1(4)=g1(4)+g(i);
    elseif Daynumber(i)==5 && ~isnan(g(i))
        g1(5)=g1(5)+g(i);
    elseif Daynumber(i)==6 && ~isnan(g(i))
        g1(6)=g1(6)+g(i);
    elseif Daynumber(i)==7 && ~isnan(g(i))
        g1(7)=g1(7)+g(i);
    end
end
      figure;
    for m=1:1:7
        bar(1:7,g1(1:7,1))
        hold on;
        title('Chest and Sternum Region Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    h1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(h(i))
        h1(1)=h1(1)+h(i);
    elseif Daynumber(i)==2 && ~isnan(h(i))
        h1(2)=h1(2)+h(i);
    elseif Daynumber(i)==3 && ~isnan(h(i))
        h1(3)=h1(3)+h(i);
    elseif Daynumber(i)==4 && ~isnan(h(i))
        h1(4)=h1(4)+h(i);
    elseif Daynumber(i)==5 && ~isnan(h(i))
        h1(5)=h1(5)+h(i);
    elseif Daynumber(i)==6 && ~isnan(h(i))
        h1(6)=h1(6)+h(i);
    elseif Daynumber(i)==7 && ~isnan(h(i))
        h1(7)=h1(7)+h(i);
    end
end
      figure;
    for m=1:1:7
        bar(1:7,h1(1:7,1))
        hold on;
        title('Abdominal Region and Pelvic Region Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end

    j1=zeros(7,1);
for i=1:1:2922;
    if Daynumber(i)==1 && ~isnan(j(i))
        j1(1)=j1(1)+j(i);
    elseif Daynumber(i)==2 && ~isnan(j(i))
        j1(2)=j1(2)+j(i);
    elseif Daynumber(i)==3 && ~isnan(j(i))
        j1(3)=j1(3)+j(i);
    elseif Daynumber(i)==4 && ~isnan(j(i))
        j1(4)=j1(4)+j(i);
    elseif Daynumber(i)==5 && ~isnan(j(i))
        j1(5)=j1(5)+j(i);
    elseif Daynumber(i)==6 && ~isnan(j(i))
        j1(6)=j1(6)+j(i);
    elseif Daynumber(i)==7 && ~isnan(j(i))
        j1(7)=j1(7)+j(i);
    end
end
      figure;
    for m=1:1:7
        bar(1:7,j1(1:7,1))
        hold on;
        title('Other Events per days of the week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    

    
    
%%    Graphical Representation of Data Per Month 

Month= dt.Month;
a2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(a(i))
        a2(1)=a2(1)+a(i);
    elseif Month(i)==2 && ~isnan(a(i))
        a2(2)=a2(2)+a(i);
    elseif Month(i)==3 && ~isnan(a(i))
        a2(3)=a2(3)+a(i);
    elseif Month(i)==4 && ~isnan(a(i))
        a2(4)=a2(4)+a(i);
    elseif Month(i)==5 && ~isnan(a(i))
        a2(5)=a2(5)+a(i);
    elseif Month(i)==6 && ~isnan(a(i))
        a2(6)=a2(6)+a(i);
    elseif Month(i)==7 && ~isnan(a(i))
        a2(7)=a2(7)+a(i);
    elseif Month(i)==8 && ~isnan(a(i))
        a2(8)=a2(8)+a(i);
    elseif Month(i)==9 && ~isnan(a(i))
        a2(9)=a2(9)+a(i);
    elseif Month(i)==10 && ~isnan(a(i))
        a2(10)=a2(10)+a(i);
    elseif Month(i)==11 && ~isnan(a(i))
        a2(11)=a2(11)+a(i); 
    elseif Month(i)==12 && ~isnan(a(i))
        a2(12)=a2(12)+a(i);      
    end
end
    figure
    for n=1:1:12
        bar(1:12,a2(1:12,1))
        hold on;
           title('Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end



b2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(b(i))
        b2(1)=b2(1)+b(i);
    elseif Month(i)==2 && ~isnan(b(i))
        b2(2)=b2(2)+b(i);
    elseif Month(i)==3 && ~isnan(b(i))
        b2(3)=b2(3)+b(i);
    elseif Month(i)==4 && ~isnan(b(i))
        b2(4)=b2(4)+b(i);
    elseif Month(i)==5 && ~isnan(b(i))
        b2(5)=b2(5)+b(i);
    elseif Month(i)==6 && ~isnan(b(i))
        b2(6)=b2(6)+b(i);
    elseif Month(i)==7 && ~isnan(b(i))
        b2(7)=b2(7)+b(i);
    elseif Month(i)==8 && ~isnan(b(i))
        b2(8)=b2(8)+b(i);
    elseif Month(i)==9 && ~isnan(b(i))
        b2(9)=b2(9)+b(i);
    elseif Month(i)==10 && ~isnan(b(i))
        b2(10)=b2(10)+b(i);
    elseif Month(i)==11 && ~isnan(b(i))
        b2(11)=b2(11)+b(i); 
    elseif Month(i)==12 && ~isnan(b(i))
        b2(12)=b2(12)+b(i);      
    end
end

    figure;
    for n=1:1:12
        bar(1:12,b2(1:12,1))
        hold on;
           title('Number of Weekday Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
c2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(c(i))
        c2(1)=c2(1)+c(i);
    elseif Month(i)==2 && ~isnan(c(i))
        c2(2)=c2(2)+c(i);
    elseif Month(i)==3 && ~isnan(c(i))
        c2(3)=c2(3)+c(i);
    elseif Month(i)==4 && ~isnan(c(i))
        c2(4)=c2(4)+c(i);
    elseif Month(i)==5 && ~isnan(c(i))
        c2(5)=c2(5)+c(i);
    elseif Month(i)==6 && ~isnan(c(i))
        c2(6)=c2(6)+c(i);
    elseif Month(i)==7 && ~isnan(c(i))
        c2(7)=c2(7)+c(i);
    elseif Month(i)==8 && ~isnan(c(i))
        c2(8)=c2(8)+c(i);
    elseif Month(i)==9 && ~isnan(c(i))
        c2(9)=c2(9)+c(i);
    elseif Month(i)==10 && ~isnan(c(i))
        c2(10)=c2(10)+c(i);
    elseif Month(i)==11 && ~isnan(c(i))
        c2(11)=c2(11)+c(i); 
    elseif Month(i)==12 && ~isnan(c(i))
        c2(12)=c2(12)+c(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,c2(1:12,1))
        hold on;
           title('Number Weekend Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end

    
d2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(d(i))
        d2(1)=d2(1)+d(i);
    elseif Month(i)==2 && ~isnan(d(i))
        d2(2)=d2(2)+d(i);
    elseif Month(i)==3 && ~isnan(d(i))
        d2(3)=d2(3)+d(i);
    elseif Month(i)==4 && ~isnan(d(i))
        d2(4)=d2(4)+d(i);
    elseif Month(i)==5 && ~isnan(d(i))
        d2(5)=d2(5)+d(i);
    elseif Month(i)==6 && ~isnan(d(i))
        d2(6)=d2(6)+d(i);
    elseif Month(i)==7 && ~isnan(d(i))
        d2(7)=d2(7)+d(i);
    elseif Month(i)==8 && ~isnan(d(i))
        d2(8)=d2(8)+d(i);
    elseif Month(i)==9 && ~isnan(d(i))
        d2(9)=d2(9)+d(i);
    elseif Month(i)==10 && ~isnan(d(i))
        d2(10)=d2(10)+d(i);
    elseif Month(i)==11 && ~isnan(d(i))
        d2(11)=d2(11)+d(i); 
    elseif Month(i)==12 && ~isnan(d(i))
        d2(12)=d2(12)+d(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,d2(1:12,1))
        hold on;
           title('Number of Holiday Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
e2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(e(i))
        e2(1)=e2(1)+e(i);
    elseif Month(i)==2 && ~isnan(e(i))
        e2(2)=e2(2)+e(i);
    elseif Month(i)==3 && ~isnan(e(i))
        e2(3)=e2(3)+e(i);
    elseif Month(i)==4 && ~isnan(e(i))
        e2(4)=e2(4)+e(i);
    elseif Month(i)==5 && ~isnan(e(i))
        e2(5)=e2(5)+e(i);
    elseif Month(i)==6 && ~isnan(e(i))
        e2(6)=e2(6)+e(i);
    elseif Month(i)==7 && ~isnan(e(i))
        e2(7)=e2(7)+e(i);
    elseif Month(i)==8 && ~isnan(e(i))
        e2(8)=e2(8)+e(i);
    elseif Month(i)==9 && ~isnan(e(i))
        e2(9)=e2(9)+e(i);
    elseif Month(i)==10 && ~isnan(e(i))
        e2(10)=e2(10)+e(i);
    elseif Month(i)==11 && ~isnan(e(i))
        e2(11)=e2(11)+e(i); 
    elseif Month(i)==12 && ~isnan(e(i))
        e2(12)=e2(12)+e(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,e2(1:12,1))
        hold on;
           title('Spine Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
    



f2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(f(i))
        f2(1)=f2(1)+f(i);
    elseif Month(i)==2 && ~isnan(f(i))
        f2(2)=f2(2)+f(i);
    elseif Month(i)==3 && ~isnan(f(i))
        f2(3)=f2(3)+f(i);
    elseif Month(i)==4 && ~isnan(f(i))
        f2(4)=f2(4)+f(i);
    elseif Month(i)==5 && ~isnan(f(i))
        f2(5)=f2(5)+f(i);
    elseif Month(i)==6 && ~isnan(f(i))
        f2(6)=f2(6)+f(i);
    elseif Month(i)==7 && ~isnan(f(i))
        f2(7)=f2(7)+f(i);
    elseif Month(i)==8 && ~isnan(f(i))
        f2(8)=f2(8)+f(i);
    elseif Month(i)==9 && ~isnan(f(i))
        f2(9)=f2(9)+f(i);
    elseif Month(i)==10 && ~isnan(f(i))
        f2(10)=f2(10)+f(i);
    elseif Month(i)==11 && ~isnan(f(i))
        f2(11)=f2(11)+f(i); 
    elseif Month(i)==12 && ~isnan(f(i))
        f2(12)=f2(12)+f(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,f2(1:12,1))
        hold on;
           title('Head & Neck Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
g2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(g(i))
        g2(1)=g2(1)+g(i);
    elseif Month(i)==2 && ~isnan(g(i))
        g2(2)=g2(2)+g(i);
    elseif Month(i)==3 && ~isnan(g(i))
        g2(3)=g2(3)+g(i);
    elseif Month(i)==4 && ~isnan(g(i))
        g2(4)=g2(4)+g(i);
    elseif Month(i)==5 && ~isnan(g(i))
        g2(5)=g2(5)+g(i);
    elseif Month(i)==6 && ~isnan(g(i))
        g2(6)=g2(6)+g(i);
    elseif Month(i)==7 && ~isnan(g(i))
        g2(7)=g2(7)+g(i);
    elseif Month(i)==8 && ~isnan(g(i))
        g2(8)=g2(8)+g(i);
    elseif Month(i)==9 && ~isnan(g(i))
        g2(9)=g2(9)+g(i);
    elseif Month(i)==10 && ~isnan(g(i))
        g2(10)=g2(10)+g(i);
    elseif Month(i)==11 && ~isnan(g(i))
        g2(11)=g2(11)+g(i); 
    elseif Month(i)==12 && ~isnan(g(i))
        g2(12)=g2(12)+g(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,g2(1:12,1))
        hold on;
           title('Chest and Sternum Region Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
    
h2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(h(i))
        h2(1)=h2(1)+h(i);
    elseif Month(i)==2 && ~isnan(h(i))
        h2(2)=h2(2)+h(i);
    elseif Month(i)==3 && ~isnan(h(i))
        h2(3)=h2(3)+h(i);
    elseif Month(i)==4 && ~isnan(h(i))
        h2(4)=h2(4)+h(i);
    elseif Month(i)==5 && ~isnan(h(i))
        h2(5)=h2(5)+h(i);
    elseif Month(i)==6 && ~isnan(h(i))
        h2(6)=h2(6)+h(i);
    elseif Month(i)==7 && ~isnan(h(i))
        h2(7)=h2(7)+h(i);
    elseif Month(i)==8 && ~isnan(h(i))
        h2(8)=h2(8)+h(i);
    elseif Month(i)==9 && ~isnan(h(i))
        h2(9)=h2(9)+h(i);
    elseif Month(i)==10 && ~isnan(h(i))
        h2(10)=h2(10)+h(i);
    elseif Month(i)==11 && ~isnan(h(i))
        h2(11)=h2(11)+h(i); 
    elseif Month(i)==12 && ~isnan(h(i))
        h2(12)=h2(12)+h(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,h2(1:12,1))
        hold on;
           title('Abdominal Region and Pelvic Region per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
  
   

j2=zeros(12,1);
for i=1:1:2922;
    if Month(i)==1 && ~isnan(j(i))
        j2(1)=j2(1)+j(i);
    elseif Month(i)==2 && ~isnan(j(i))
        j2(2)=j2(2)+j(i);
    elseif Month(i)==3 && ~isnan(j(i))
        j2(3)=j2(3)+j(i);
    elseif Month(i)==4 && ~isnan(j(i))
        j2(4)=j2(4)+j(i);
    elseif Month(i)==5 && ~isnan(j(i))
        j2(5)=j2(5)+j(i);
    elseif Month(i)==6 && ~isnan(j(i))
        j2(6)=j2(6)+j(i);
    elseif Month(i)==7 && ~isnan(j(i))
        j2(7)=j2(7)+j(i);
    elseif Month(i)==8 && ~isnan(j(i))
        j2(8)=j2(8)+j(i);
    elseif Month(i)==9 && ~isnan(j(i))
        j2(9)=j2(9)+j(i);
    elseif Month(i)==10 && ~isnan(j(i))
        j2(10)=j2(10)+j(i);
    elseif Month(i)==11 && ~isnan(j(i))
        j2(11)=j2(11)+j(i); 
    elseif Month(i)==12 && ~isnan(j(i))
        j2(12)=j2(12)+j(i);      
    end
end
    figure;
    for n=1:1:12
        bar(1:12,j2(1:12,1))
        hold on;
           title('Other Events per Month of All Years')
   ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    
    
%%  Graphical Representation of Data Per Year

Years=dt.Year;
a3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(a(i))
        a3(1)=a3(1)+a(i);
    elseif Years(i)==2011 && ~isnan(a(i))
        a3(2)=a3(2)+a(i);
    elseif Years(i)==2012 && ~isnan(a(i))
        a3(3)=a3(3)+a(i);
    elseif Years(i)==2013 && ~isnan(a(i))
        a3(4)=a3(4)+a(i);
    elseif Years(i)==2014 && ~isnan(a(i))
        a3(5)=a3(5)+a(i);
    elseif Years(i)==2015 && ~isnan(a(i))
        a3(6)=a3(6)+a(i);
    elseif Years(i)==2016 && ~isnan(a(i))
        a3(7)=a3(7)+a(i);
    elseif Years(i)==2017 && ~isnan(a(i))
        a3(8)=a3(8)+a(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,a3(1:8,1))
        hold on;
           title('Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end
    

b3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(b(i))
        b3(1)=b3(1)+b(i);
    elseif Years(i)==2011 && ~isnan(b(i))
        b3(2)=b3(2)+b(i);
    elseif Years(i)==2012 && ~isnan(b(i))
        b3(3)=b3(3)+b(i);
    elseif Years(i)==2013 && ~isnan(b(i))
        b3(4)=b3(4)+b(i);
    elseif Years(i)==2014 && ~isnan(b(i))
        b3(5)=b3(5)+b(i);
    elseif Years(i)==2015 && ~isnan(b(i))
        b3(6)=b3(6)+b(i);
    elseif Years(i)==2016 && ~isnan(b(i))
        b3(7)=b3(7)+b(i);
    elseif Years(i)==2017 && ~isnan(b(i))
        b3(8)=b3(8)+b(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,b3(1:8,1))
        hold on;
           title('Weekday Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
    
c3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(c(i))
        c3(1)=c3(1)+c(i);
    elseif Years(i)==2011 && ~isnan(c(i))
        c3(2)=c3(2)+c(i);
    elseif Years(i)==2012 && ~isnan(c(i))
        c3(3)=c3(3)+c(i);
    elseif Years(i)==2013 && ~isnan(c(i))
        c3(4)=c3(4)+c(i);
    elseif Years(i)==2014 && ~isnan(c(i))
        c3(5)=c3(5)+c(i);
    elseif Years(i)==2015 && ~isnan(c(i))
        c3(6)=c3(6)+c(i);
    elseif Years(i)==2016 && ~isnan(c(i))
        c3(7)=c3(7)+c(i);
    elseif Years(i)==2017 && ~isnan(c(i))
        c3(8)=c3(8)+c(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,c3(1:8,1))
        hold on;
           title('Weekend Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
        
    
 d3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(d(i))
        d3(1)=d3(1)+d(i);
    elseif Years(i)==2011 && ~isnan(d(i))
        d3(2)=d3(2)+d(i);
    elseif Years(i)==2012 && ~isnan(d(i))
        d3(3)=d3(3)+d(i);
    elseif Years(i)==2013 && ~isnan(d(i))
        d3(4)=d3(4)+d(i);
    elseif Years(i)==2014 && ~isnan(d(i))
        d3(5)=d3(5)+d(i);
    elseif Years(i)==2015 && ~isnan(d(i))
        d3(6)=d3(6)+d(i);
    elseif Years(i)==2016 && ~isnan(d(i))
        d3(7)=d3(7)+d(i);
    elseif Years(i)==2017 && ~isnan(d(i))
        d3(8)=d3(8)+d(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,d3(1:8,1))
        hold on;
           title('Holiday Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end       
    
    
e3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(e(i))
        e3(1)=e3(1)+e(i);
    elseif Years(i)==2011 && ~isnan(e(i))
        e3(2)=e3(2)+e(i);
    elseif Years(i)==2012 && ~isnan(e(i))
        e3(3)=e3(3)+e(i);
    elseif Years(i)==2013 && ~isnan(e(i))
        e3(4)=e3(4)+e(i);
    elseif Years(i)==2014 && ~isnan(e(i))
        e3(5)=e3(5)+e(i);
    elseif Years(i)==2015 && ~isnan(e(i))
        e3(6)=e3(6)+e(i);
    elseif Years(i)==2016 && ~isnan(e(i))
        e3(7)=e3(7)+e(i);
    elseif Years(i)==2017 && ~isnan(e(i))
        e3(8)=e3(8)+e(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,e3(1:8,1))
        hold on;
           title('Spine Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end        
    
f3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(f(i))
        f3(1)=f3(1)+f(i);
    elseif Years(i)==2011 && ~isnan(f(i))
        f3(2)=f3(2)+f(i);
    elseif Years(i)==2012 && ~isnan(f(i))
        f3(3)=f3(3)+f(i);
    elseif Years(i)==2013 && ~isnan(f(i))
        f3(4)=f3(4)+f(i);
    elseif Years(i)==2014 && ~isnan(f(i))
        f3(5)=f3(5)+f(i);
    elseif Years(i)==2015 && ~isnan(f(i))
        f3(6)=f3(6)+f(i);
    elseif Years(i)==2016 && ~isnan(f(i))
        f3(7)=f3(7)+f(i);
    elseif Years(i)==2017 && ~isnan(f(i))
        f3(8)=f3(8)+f(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,f3(1:8,1))
        hold on;
           title('Head & Neck Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
g3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(g(i))
        g3(1)=g3(1)+g(i);
    elseif Years(i)==2011 && ~isnan(g(i))
        g3(2)=g3(2)+g(i);
    elseif Years(i)==2012 && ~isnan(g(i))
        g3(3)=g3(3)+g(i);
    elseif Years(i)==2013 && ~isnan(g(i))
        g3(4)=g3(4)+g(i);
    elseif Years(i)==2014 && ~isnan(g(i))
        g3(5)=g3(5)+g(i);
    elseif Years(i)==2015 && ~isnan(g(i))
        g3(6)=g3(6)+g(i);
    elseif Years(i)==2016 && ~isnan(g(i))
        g3(7)=g3(7)+g(i);
    elseif Years(i)==2017 && ~isnan(g(i))
        g3(8)=g3(8)+g(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,g3(1:8,1))
        hold on;
           title('Chest and Sternum Region Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end        

h3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(h(i))
        h3(1)=h3(1)+h(i);
    elseif Years(i)==2011 && ~isnan(h(i))
        h3(2)=h3(2)+h(i);
    elseif Years(i)==2012 && ~isnan(h(i))
        h3(3)=h3(3)+h(i);
    elseif Years(i)==2013 && ~isnan(h(i))
        h3(4)=h3(4)+h(i);
    elseif Years(i)==2014 && ~isnan(h(i))
        h3(5)=h3(5)+h(i);
    elseif Years(i)==2015 && ~isnan(h(i))
        h3(6)=h3(6)+h(i);
    elseif Years(i)==2016 && ~isnan(h(i))
        h3(7)=h3(7)+h(i);
    elseif Years(i)==2017 && ~isnan(h(i))
        h3(8)=h3(8)+h(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,h3(1:8,1))
        hold on;
           title('Abdominal and Pelvic Region Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end   
    
    
j3=zeros(8,1);
for i=1:1:2922;
    if Years(i)==2010 && ~isnan(j(i))
        j3(1)=j3(1)+j(i);
    elseif Years(i)==2011 && ~isnan(j(i))
        j3(2)=j3(2)+j(i);
    elseif Years(i)==2012 && ~isnan(j(i))
        j3(3)=j3(3)+j(i);
    elseif Years(i)==2013 && ~isnan(j(i))
        j3(4)=j3(4)+j(i);
    elseif Years(i)==2014 && ~isnan(j(i))
        j3(5)=j3(5)+j(i);
    elseif Years(i)==2015 && ~isnan(j(i))
        j3(6)=j3(6)+j(i);
    elseif Years(i)==2016 && ~isnan(j(i))
        j3(7)=j3(7)+j(i);
    elseif Years(i)==2017 && ~isnan(j(i))
        j3(8)=j3(8)+j(i);    
    end
end
    figure;
    for o=1:1:8
        bar(1:8,j3(1:8,1))
        hold on;
           title('Other Events per Year')
   ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
        
    
%% Graphical Representation of Data Per Week
Week=weeknum(dt);

w=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(a(i))
        w(1)=w(1)+a(i);
    elseif Week(i)==2 && ~isnan(a(i))
        w(2)=w(2)+a(i);
    elseif Week(i)==3 && ~isnan(a(i))
        w(3)=w(3)+a(i);
    elseif Week(i)==4 && ~isnan(a(i))
        w(4)=w(4)+a(i);
    elseif Week(i)==5 && ~isnan(a(i))
        w(5)=w(5)+a(i);
    elseif Week(i)==6 && ~isnan(a(i))
        w(6)=w(6)+a(i);
    elseif Week(i)==7 && ~isnan(a(i))
        w(7)=w(7)+a(i);
    elseif Week(i)==8 && ~isnan(a(i))
        w(8)=w(8)+a(i);
    elseif Week(i)==9 && ~isnan(a(i))
        w(9)=w(9)+a(i);
    elseif Week(i)==10 && ~isnan(a(i))
        w(10)=w(10)+a(i);
    elseif Week(i)==11 && ~isnan(a(i))
        w(11)=w(11)+a(i);
    elseif Week(i)==12 && ~isnan(a(i))
        w(12)=w(12)+a(i);
    elseif Week(i)==13 && ~isnan(a(i))
        w(13)=w(13)+a(i);
    elseif Week(i)==14 && ~isnan(a(i))
        w(14)=w(14)+a(i);
    elseif Week(i)==15 && ~isnan(a(i))
        w(15)=w(15)+a(i);   
    elseif Week(i)==16 && ~isnan(a(i))
        w(16)=w(16)+a(i);
    elseif Week(i)==17 && ~isnan(a(i))
        w(17)=w(17)+a(i);
    elseif Week(i)==18 && ~isnan(a(i))
        w(18)=w(18)+a(i);
    elseif Week(i)==19 && ~isnan(a(i))
        w(19)=w(19)+a(i);
    elseif Week(i)==20 && ~isnan(a(i))
        w(20)=w(20)+a(i);
    elseif Week(i)==21 && ~isnan(a(i))
        w(21)=w(21)+a(i);
    elseif Week(i)==22 && ~isnan(a(i))
        w(22)=w(22)+a(i);
    elseif Week(i)==23 && ~isnan(a(i))
        w(23)=w(23)+a(i);
    elseif Week(i)==24 && ~isnan(a(i))
        w(24)=w(24)+a(i);
    elseif Week(i)==25 && ~isnan(a(i))
        w(25)=w(25)+a(i);
    elseif Week(i)==26 && ~isnan(a(i))
        w(26)=w(26)+a(i);
    elseif Week(i)==27 && ~isnan(a(i))
        w(27)=w(27)+a(i);
    elseif Week(i)==28 && ~isnan(a(i))
        w(28)=w(28)+a(i);
    elseif Week(i)==29 && ~isnan(a(i))
        w(29)=w(29)+a(i);      
   elseif Week(i)==30 && ~isnan(a(i))
        w(30)=w(30)+a(i);
    elseif Week(i)==31 && ~isnan(a(i))
        w(31)=w(31)+a(i);
    elseif Week(i)==32 && ~isnan(a(i))
        w(32)=w(32)+a(i);
    elseif Week(i)==33 && ~isnan(a(i))
        w(33)=w(33)+a(i);
    elseif Week(i)==34 && ~isnan(a(i))
        w(34)=w(34)+a(i);
    elseif Week(i)==35 && ~isnan(a(i))
        w(35)=w(35)+a(i);   
    elseif Week(i)==36 && ~isnan(a(i))
        w(36)=w(36)+a(i);
    elseif Week(i)==37 && ~isnan(a(i))
        w(37)=w(37)+a(i);
    elseif Week(i)==38 && ~isnan(a(i))
        w(38)=w(38)+a(i);
    elseif Week(i)==39 && ~isnan(a(i))
        w(39)=w(39)+a(i);
    elseif Week(i)==40 && ~isnan(a(i))
        w(40)=w(40)+a(i);
    elseif Week(i)==41 && ~isnan(a(i))
        w(41)=w(41)+a(i);
    elseif Week(i)==42 && ~isnan(a(i))
        w(42)=w(42)+a(i);
    elseif Week(i)==43 && ~isnan(a(i))
        w(43)=w(43)+a(i);
    elseif Week(i)==44 && ~isnan(a(i))
        w(44)=w(44)+a(i);
    elseif Week(i)==45 && ~isnan(a(i))
        w(45)=w(45)+a(i);
    elseif Week(i)==46 && ~isnan(a(i))
        w(46)=w(46)+a(i);
    elseif Week(i)==47 && ~isnan(a(i))
        w(47)=w(47)+a(i);
    elseif Week(i)==48 && ~isnan(a(i))
        w(48)=w(48)+a(i);
    elseif Week(i)==49 && ~isnan(a(i))
        w(49)=w(49)+a(i);          
     elseif Week(i)==50 && ~isnan(a(i))
        w(50)=w(50)+a(i);      
     elseif Week(i)==51 && ~isnan(a(i))
        w(51)=w(51)+a(i);    
   elseif Week(i)==52 && ~isnan(a(i))
        w(52)=w(52)+a(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w(1:52,1))
        hold on;
           title('Total Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end        
         
    
    
w1=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(b(i))
        w1(1)=w1(1)+b(i);
    elseif Week(i)==2 && ~isnan(b(i))
        w1(2)=w1(2)+b(i);
    elseif Week(i)==3 && ~isnan(b(i))
        w1(3)=w1(3)+b(i);
    elseif Week(i)==4 && ~isnan(b(i))
        w1(4)=w1(4)+b(i);
    elseif Week(i)==5 && ~isnan(b(i))
        w1(5)=w1(5)+b(i);
    elseif Week(i)==6 && ~isnan(b(i))
        w1(6)=w1(6)+b(i);
    elseif Week(i)==7 && ~isnan(b(i))
        w1(7)=w1(7)+b(i);
    elseif Week(i)==8 && ~isnan(b(i))
        w1(8)=w1(8)+b(i);
    elseif Week(i)==9 && ~isnan(b(i))
        w1(9)=w1(9)+b(i);
    elseif Week(i)==10 && ~isnan(b(i))
        w1(10)=w1(10)+b(i);
    elseif Week(i)==11 && ~isnan(b(i))
        w1(11)=w1(11)+b(i);
    elseif Week(i)==12 && ~isnan(b(i))
        w1(12)=w1(12)+b(i);
    elseif Week(i)==13 && ~isnan(b(i))
        w1(13)=w1(13)+b(i);
    elseif Week(i)==14 && ~isnan(b(i))
        w1(14)=w1(14)+b(i);
    elseif Week(i)==15 && ~isnan(b(i))
        w1(15)=w1(15)+b(i);   
    elseif Week(i)==16 && ~isnan(b(i))
        w1(16)=w1(16)+b(i);
    elseif Week(i)==17 && ~isnan(b(i))
        w1(17)=w1(17)+b(i);
    elseif Week(i)==18 && ~isnan(b(i))
        w1(18)=w1(18)+b(i);
    elseif Week(i)==19 && ~isnan(b(i))
        w1(19)=w1(19)+b(i);
    elseif Week(i)==20 && ~isnan(b(i))
        w1(20)=w1(20)+b(i);
    elseif Week(i)==21 && ~isnan(b(i))
        w1(21)=w1(21)+b(i);
    elseif Week(i)==22 && ~isnan(b(i))
        w1(22)=w1(22)+b(i);
    elseif Week(i)==23 && ~isnan(b(i))
        w1(23)=w1(23)+b(i);
    elseif Week(i)==24 && ~isnan(b(i))
        w1(24)=w1(24)+b(i);
    elseif Week(i)==25 && ~isnan(b(i))
        w1(25)=w1(25)+b(i);
    elseif Week(i)==26 && ~isnan(b(i))
        w1(26)=w1(26)+b(i);
    elseif Week(i)==27 && ~isnan(b(i))
        w1(27)=w1(27)+b(i);
    elseif Week(i)==28 && ~isnan(b(i))
        w1(28)=w1(28)+b(i);
    elseif Week(i)==29 && ~isnan(b(i))
        w1(29)=w1(29)+b(i);      
   elseif Week(i)==30 && ~isnan(b(i))
        w1(30)=w1(30)+b(i);
    elseif Week(i)==31 && ~isnan(b(i))
        w1(31)=w1(31)+b(i);
    elseif Week(i)==32 && ~isnan(b(i))
        w1(32)=w1(32)+b(i);
    elseif Week(i)==33 && ~isnan(b(i))
        w1(33)=w1(33)+b(i);
    elseif Week(i)==34 && ~isnan(b(i))
        w1(34)=w1(34)+b(i);
    elseif Week(i)==35 && ~isnan(b(i))
        w1(35)=w1(35)+b(i);   
    elseif Week(i)==36 && ~isnan(b(i))
        w1(36)=w1(36)+b(i);
    elseif Week(i)==37 && ~isnan(b(i))
        w1(37)=w1(37)+b(i);
    elseif Week(i)==38 && ~isnan(b(i))
        w1(38)=w1(38)+b(i);
    elseif Week(i)==39 && ~isnan(b(i))
        w1(39)=w1(39)+b(i);
    elseif Week(i)==40 && ~isnan(b(i))
        w1(40)=w1(40)+b(i);
    elseif Week(i)==41 && ~isnan(b(i))
        w1(41)=w1(41)+b(i);
    elseif Week(i)==42 && ~isnan(b(i))
        w1(42)=w1(42)+b(i);
    elseif Week(i)==43 && ~isnan(b(i))
        w1(43)=w1(43)+b(i);
    elseif Week(i)==44 && ~isnan(b(i))
        w1(44)=w1(44)+b(i);
    elseif Week(i)==45 && ~isnan(b(i))
        w1(45)=w1(45)+b(i);
    elseif Week(i)==46 && ~isnan(b(i))
        w1(46)=w1(46)+b(i);
    elseif Week(i)==47 && ~isnan(b(i))
        w1(47)=w1(47)+b(i);
    elseif Week(i)==48 && ~isnan(b(i))
        w1(48)=w1(48)+b(i);
    elseif Week(i)==49 && ~isnan(b(i))
        w1(49)=w1(49)+b(i);          
     elseif Week(i)==50 && ~isnan(b(i))
        w1(50)=w1(50)+b(i);      
     elseif Week(i)==51 && ~isnan(b(i))
        w1(51)=w1(51)+b(i);    
   elseif Week(i)==52 && ~isnan(b(i))
        w1(52)=w1(52)+b(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w1(1:52,1))
        hold on;
           title('Number of Weekday Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
      
    
    
w2=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(c(i))
        w2(1)=w2(1)+c(i);
    elseif Week(i)==2 && ~isnan(c(i))
        w2(2)=w2(2)+c(i);
    elseif Week(i)==3 && ~isnan(c(i))
        w2(3)=w2(3)+c(i);
    elseif Week(i)==4 && ~isnan(c(i))
        w2(4)=w2(4)+c(i);
    elseif Week(i)==5 && ~isnan(c(i))
        w2(5)=w2(5)+c(i);
    elseif Week(i)==6 && ~isnan(c(i))
        w2(6)=w2(6)+c(i);
    elseif Week(i)==7 && ~isnan(c(i))
        w2(7)=w2(7)+c(i);
    elseif Week(i)==8 && ~isnan(c(i))
        w2(8)=w2(8)+c(i);
    elseif Week(i)==9 && ~isnan(c(i))
        w2(9)=w2(9)+c(i);
    elseif Week(i)==10 && ~isnan(c(i))
        w2(10)=w2(10)+c(i);
    elseif Week(i)==11 && ~isnan(c(i))
        w2(11)=w2(11)+c(i);
    elseif Week(i)==12 && ~isnan(c(i))
        w2(12)=w2(12)+c(i);
    elseif Week(i)==13 && ~isnan(c(i))
        w2(13)=w2(13)+c(i);
    elseif Week(i)==14 && ~isnan(c(i))
        w2(14)=w2(14)+c(i);
    elseif Week(i)==15 && ~isnan(c(i))
        w2(15)=w2(15)+c(i);   
    elseif Week(i)==16 && ~isnan(c(i))
        w2(16)=w2(16)+c(i);
    elseif Week(i)==17 && ~isnan(c(i))
        w2(17)=w2(17)+c(i);
    elseif Week(i)==18 && ~isnan(c(i))
        w2(18)=w2(18)+c(i);
    elseif Week(i)==19 && ~isnan(c(i))
        w2(19)=w2(19)+c(i);
    elseif Week(i)==20 && ~isnan(c(i))
        w2(20)=w2(20)+c(i);
    elseif Week(i)==21 && ~isnan(c(i))
        w2(21)=w2(21)+c(i);
    elseif Week(i)==22 && ~isnan(c(i))
        w2(22)=w2(22)+c(i);
    elseif Week(i)==23 && ~isnan(c(i))
        w2(23)=w2(23)+c(i);
    elseif Week(i)==24 && ~isnan(c(i))
        w2(24)=w2(24)+c(i);
    elseif Week(i)==25 && ~isnan(c(i))
        w2(25)=w2(25)+c(i);
    elseif Week(i)==26 && ~isnan(c(i))
        w2(26)=w2(26)+c(i);
    elseif Week(i)==27 && ~isnan(c(i))
        w2(27)=w2(27)+c(i);
    elseif Week(i)==28 && ~isnan(c(i))
        w2(28)=w2(28)+c(i);
    elseif Week(i)==29 && ~isnan(c(i))
        w2(29)=w2(29)+c(i);      
   elseif Week(i)==30 && ~isnan(c(i))
        w2(30)=w2(30)+c(i);
    elseif Week(i)==31 && ~isnan(c(i))
        w2(31)=w2(31)+c(i);
    elseif Week(i)==32 && ~isnan(c(i))
        w2(32)=w2(32)+c(i);
    elseif Week(i)==33 && ~isnan(c(i))
        w2(33)=w2(33)+c(i);
    elseif Week(i)==34 && ~isnan(c(i))
        w2(34)=w2(34)+c(i);
    elseif Week(i)==35 && ~isnan(c(i))
        w2(35)=w2(35)+c(i);   
    elseif Week(i)==36 && ~isnan(c(i))
        w2(36)=w2(36)+c(i);
    elseif Week(i)==37 && ~isnan(c(i))
        w2(37)=w2(37)+c(i);
    elseif Week(i)==38 && ~isnan(c(i))
        w2(38)=w2(38)+c(i);
    elseif Week(i)==39 && ~isnan(c(i))
        w2(39)=w2(39)+c(i);
    elseif Week(i)==40 && ~isnan(c(i))
        w2(40)=w2(40)+c(i);
    elseif Week(i)==41 && ~isnan(c(i))
        w2(41)=w2(41)+c(i);
    elseif Week(i)==42 && ~isnan(c(i))
        w2(42)=w2(42)+c(i);
    elseif Week(i)==43 && ~isnan(c(i))
        w2(43)=w2(43)+c(i);
    elseif Week(i)==44 && ~isnan(c(i))
        w2(44)=w2(44)+c(i);
    elseif Week(i)==45 && ~isnan(c(i))
        w2(45)=w2(45)+c(i);
    elseif Week(i)==46 && ~isnan(c(i))
        w2(46)=w2(46)+c(i);
    elseif Week(i)==47 && ~isnan(c(i))
        w2(47)=w2(47)+c(i);
    elseif Week(i)==48 && ~isnan(c(i))
        w2(48)=w2(48)+c(i);
    elseif Week(i)==49 && ~isnan(c(i))
        w2(49)=w2(49)+c(i);          
     elseif Week(i)==50 && ~isnan(c(i))
        w2(50)=w2(50)+c(i);      
     elseif Week(i)==51 && ~isnan(c(i))
        w2(51)=w2(51)+c(i);    
   elseif Week(i)==52 && ~isnan(c(i))
        w2(52)=w2(52)+c(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w2(1:52,1))
        hold on;
           title('Number of Weekend Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end 
    
w3=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(d(i))
        w3(1)=w3(1)+d(i);
    elseif Week(i)==2 && ~isnan(d(i))
        w3(2)=w3(2)+d(i);
    elseif Week(i)==3 && ~isnan(d(i))
        w3(3)=w3(3)+d(i);
    elseif Week(i)==4 && ~isnan(d(i))
        w3(4)=w3(4)+d(i);
    elseif Week(i)==5 && ~isnan(d(i))
        w3(5)=w3(5)+d(i);
    elseif Week(i)==6 && ~isnan(d(i))
        w3(6)=w3(6)+d(i);
    elseif Week(i)==7 && ~isnan(d(i))
        w3(7)=w3(7)+d(i);
    elseif Week(i)==8 && ~isnan(d(i))
        w3(8)=w3(8)+d(i);
    elseif Week(i)==9 && ~isnan(d(i))
        w3(9)=w3(9)+d(i);
    elseif Week(i)==10 && ~isnan(d(i))
        w3(10)=w3(10)+d(i);
    elseif Week(i)==11 && ~isnan(d(i))
        w3(11)=w3(11)+d(i);
    elseif Week(i)==12 && ~isnan(d(i))
        w3(12)=w3(12)+d(i);
    elseif Week(i)==13 && ~isnan(d(i))
        w3(13)=w3(13)+d(i);
    elseif Week(i)==14 && ~isnan(d(i))
        w3(14)=w3(14)+d(i);
    elseif Week(i)==15 && ~isnan(d(i))
        w3(15)=w3(15)+d(i);   
    elseif Week(i)==16 && ~isnan(d(i))
        w3(16)=w3(16)+d(i);
    elseif Week(i)==17 && ~isnan(d(i))
        w3(17)=w3(17)+d(i);
    elseif Week(i)==18 && ~isnan(d(i))
        w3(18)=w3(18)+d(i);
    elseif Week(i)==19 && ~isnan(d(i))
        w3(19)=w3(19)+d(i);
    elseif Week(i)==20 && ~isnan(d(i))
        w3(20)=w3(20)+d(i);
    elseif Week(i)==21 && ~isnan(d(i))
        w3(21)=w3(21)+d(i);
    elseif Week(i)==22 && ~isnan(d(i))
        w3(22)=w3(22)+d(i);
    elseif Week(i)==23 && ~isnan(d(i))
        w3(23)=w3(23)+d(i);
    elseif Week(i)==24 && ~isnan(d(i))
        w3(24)=w3(24)+d(i);
    elseif Week(i)==25 && ~isnan(d(i))
        w3(25)=w3(25)+d(i);
    elseif Week(i)==26 && ~isnan(d(i))
        w3(26)=w3(26)+d(i);
    elseif Week(i)==27 && ~isnan(d(i))
        w3(27)=w3(27)+d(i);
    elseif Week(i)==28 && ~isnan(d(i))
        w3(28)=w3(28)+d(i);
    elseif Week(i)==29 && ~isnan(d(i))
        w3(29)=w3(29)+d(i);      
   elseif Week(i)==30 && ~isnan(d(i))
        w3(30)=w3(30)+d(i);
    elseif Week(i)==31 && ~isnan(d(i))
        w3(31)=w3(31)+d(i);
    elseif Week(i)==32 && ~isnan(d(i))
        w3(32)=w3(32)+d(i);
    elseif Week(i)==33 && ~isnan(d(i))
        w3(33)=w3(33)+d(i);
    elseif Week(i)==34 && ~isnan(d(i))
        w3(34)=w3(34)+d(i);
    elseif Week(i)==35 && ~isnan(d(i))
        w3(35)=w3(35)+d(i);   
    elseif Week(i)==36 && ~isnan(d(i))
        w3(36)=w3(36)+d(i);
    elseif Week(i)==37 && ~isnan(d(i))
        w3(37)=w3(37)+d(i);
    elseif Week(i)==38 && ~isnan(d(i))
        w3(38)=w3(38)+d(i);
    elseif Week(i)==39 && ~isnan(d(i))
        w3(39)=w3(39)+d(i);
    elseif Week(i)==40 && ~isnan(d(i))
        w3(40)=w3(40)+d(i);
    elseif Week(i)==41 && ~isnan(d(i))
        w3(41)=w3(41)+d(i);
    elseif Week(i)==42 && ~isnan(d(i))
        w3(42)=w3(42)+d(i);
    elseif Week(i)==43 && ~isnan(d(i))
        w3(43)=w3(43)+d(i);
    elseif Week(i)==44 && ~isnan(d(i))
        w3(44)=w3(44)+d(i);
    elseif Week(i)==45 && ~isnan(d(i))
        w3(45)=w3(45)+d(i);
    elseif Week(i)==46 && ~isnan(d(i))
        w3(46)=w3(46)+d(i);
    elseif Week(i)==47 && ~isnan(d(i))
        w3(47)=w3(47)+d(i);
    elseif Week(i)==48 && ~isnan(d(i))
        w3(48)=w3(48)+d(i);
    elseif Week(i)==49 && ~isnan(d(i))
        w3(49)=w3(49)+d(i);          
     elseif Week(i)==50 && ~isnan(d(i))
        w3(50)=w3(50)+d(i);      
     elseif Week(i)==51 && ~isnan(d(i))
        w3(51)=w3(51)+d(i);    
   elseif Week(i)==52 && ~isnan(d(i))
        w3(52)=w3(52)+d(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w3(1:52,1))
        hold on;
           title('Number of Holiday Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
w4=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(e(i))
        w4(1)=w4(1)+e(i);
    elseif Week(i)==2 && ~isnan(e(i))
        w4(2)=w4(2)+e(i);
    elseif Week(i)==3 && ~isnan(e(i))
        w4(3)=w4(3)+e(i);
    elseif Week(i)==4 && ~isnan(e(i))
        w4(4)=w4(4)+e(i);
    elseif Week(i)==5 && ~isnan(e(i))
        w4(5)=w4(5)+e(i);
    elseif Week(i)==6 && ~isnan(e(i))
        w4(6)=w4(6)+e(i);
    elseif Week(i)==7 && ~isnan(e(i))
        w4(7)=w4(7)+e(i);
    elseif Week(i)==8 && ~isnan(e(i))
        w4(8)=w4(8)+e(i);
    elseif Week(i)==9 && ~isnan(e(i))
        w4(9)=w4(9)+e(i);
    elseif Week(i)==10 && ~isnan(e(i))
        w4(10)=w4(10)+e(i);
    elseif Week(i)==11 && ~isnan(e(i))
        w4(11)=w4(11)+e(i);
    elseif Week(i)==12 && ~isnan(e(i))
        w4(12)=w4(12)+e(i);
    elseif Week(i)==13 && ~isnan(e(i))
        w4(13)=w4(13)+e(i);
    elseif Week(i)==14 && ~isnan(e(i))
        w4(14)=w4(14)+e(i);
    elseif Week(i)==15 && ~isnan(e(i))
        w4(15)=w4(15)+e(i);   
    elseif Week(i)==16 && ~isnan(e(i))
        w4(16)=w4(16)+e(i);
    elseif Week(i)==17 && ~isnan(e(i))
        w4(17)=w4(17)+e(i);
    elseif Week(i)==18 && ~isnan(e(i))
        w4(18)=w4(18)+e(i);
    elseif Week(i)==19 && ~isnan(e(i))
        w4(19)=w4(19)+e(i);
    elseif Week(i)==20 && ~isnan(e(i))
        w4(20)=w4(20)+e(i);
    elseif Week(i)==21 && ~isnan(e(i))
        w4(21)=w4(21)+e(i);
    elseif Week(i)==22 && ~isnan(e(i))
        w4(22)=w4(22)+e(i);
    elseif Week(i)==23 && ~isnan(e(i))
        w4(23)=w4(23)+e(i);
    elseif Week(i)==24 && ~isnan(e(i))
        w4(24)=w4(24)+e(i);
    elseif Week(i)==25 && ~isnan(e(i))
        w4(25)=w4(25)+e(i);
    elseif Week(i)==26 && ~isnan(e(i))
        w4(26)=w4(26)+e(i);
    elseif Week(i)==27 && ~isnan(e(i))
        w4(27)=w4(27)+e(i);
    elseif Week(i)==28 && ~isnan(e(i))
        w4(28)=w4(28)+e(i);
    elseif Week(i)==29 && ~isnan(e(i))
        w4(29)=w4(29)+e(i);      
   elseif Week(i)==30 && ~isnan(e(i))
        w4(30)=w4(30)+e(i);
    elseif Week(i)==31 && ~isnan(e(i))
        w4(31)=w4(31)+e(i);
    elseif Week(i)==32 && ~isnan(e(i))
        w4(32)=w4(32)+e(i);
    elseif Week(i)==33 && ~isnan(e(i))
        w4(33)=w4(33)+e(i);
    elseif Week(i)==34 && ~isnan(e(i))
        w4(34)=w4(34)+e(i);
    elseif Week(i)==35 && ~isnan(e(i))
        w4(35)=w4(35)+e(i);   
    elseif Week(i)==36 && ~isnan(e(i))
        w4(36)=w4(36)+e(i);
    elseif Week(i)==37 && ~isnan(e(i))
        w4(37)=w4(37)+e(i);
    elseif Week(i)==38 && ~isnan(e(i))
        w4(38)=w4(38)+e(i);
    elseif Week(i)==39 && ~isnan(e(i))
        w4(39)=w4(39)+e(i);
    elseif Week(i)==40 && ~isnan(e(i))
        w4(40)=w4(40)+e(i);
    elseif Week(i)==41 && ~isnan(e(i))
        w4(41)=w4(41)+e(i);
    elseif Week(i)==42 && ~isnan(e(i))
        w4(42)=w4(42)+e(i);
    elseif Week(i)==43 && ~isnan(e(i))
        w4(43)=w4(43)+e(i);
    elseif Week(i)==44 && ~isnan(e(i))
        w4(44)=w4(44)+e(i);
    elseif Week(i)==45 && ~isnan(e(i))
        w4(45)=w4(45)+e(i);
    elseif Week(i)==46 && ~isnan(e(i))
        w4(46)=w4(46)+e(i);
    elseif Week(i)==47 && ~isnan(e(i))
        w4(47)=w4(47)+e(i);
    elseif Week(i)==48 && ~isnan(e(i))
        w4(48)=w4(48)+e(i);
    elseif Week(i)==49 && ~isnan(e(i))
        w4(49)=w4(49)+e(i);          
     elseif Week(i)==50 && ~isnan(e(i))
        w4(50)=w4(50)+e(i);      
     elseif Week(i)==51 && ~isnan(e(i))
        w4(51)=w4(51)+e(i);    
   elseif Week(i)==52 && ~isnan(e(i))
        w4(52)=w4(52)+e(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w4(1:52,1))
        hold on;
           title('Total Spine Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end            

    
w5=zeros(52,1);
for i=1:1:2922;
    if Week(i)==1 && ~isnan(f(i))
        w5(1)=w5(1)+f(i);
    elseif Week(i)==2 && ~isnan(f(i))
        w5(2)=w5(2)+f(i);
    elseif Week(i)==3 && ~isnan(f(i))
        w5(3)=w5(3)+f(i);
    elseif Week(i)==4 && ~isnan(f(i))
        w5(4)=w5(4)+f(i);
    elseif Week(i)==5 && ~isnan(f(i))
        w5(5)=w5(5)+f(i);
    elseif Week(i)==6 && ~isnan(f(i))
        w5(6)=w5(6)+f(i);
    elseif Week(i)==7 && ~isnan(f(i))
        w5(7)=w5(7)+f(i);
    elseif Week(i)==8 && ~isnan(f(i))
        w5(8)=w5(8)+f(i);
    elseif Week(i)==9 && ~isnan(f(i))
        w5(9)=w5(9)+f(i);
    elseif Week(i)==10 && ~isnan(f(i))
        w5(10)=w5(10)+f(i);
    elseif Week(i)==11 && ~isnan(f(i))
        w5(11)=w5(11)+f(i);
    elseif Week(i)==12 && ~isnan(f(i))
        w5(12)=w5(12)+f(i);
    elseif Week(i)==13 && ~isnan(f(i))
        w5(13)=w5(13)+f(i);
    elseif Week(i)==14 && ~isnan(f(i))
        w5(14)=w5(14)+f(i);
    elseif Week(i)==15 && ~isnan(f(i))
        w5(15)=w5(15)+f(i);   
    elseif Week(i)==16 && ~isnan(f(i))
        w5(16)=w5(16)+f(i);
    elseif Week(i)==17 && ~isnan(f(i))
        w5(17)=w5(17)+f(i);
    elseif Week(i)==18 && ~isnan(f(i))
        w5(18)=w5(18)+f(i);
    elseif Week(i)==19 && ~isnan(f(i))
        w5(19)=w5(19)+f(i);
    elseif Week(i)==20 && ~isnan(f(i))
        w5(20)=w5(20)+f(i);
    elseif Week(i)==21 && ~isnan(f(i))
        w5(21)=w5(21)+f(i);
    elseif Week(i)==22 && ~isnan(f(i))
        w5(22)=w5(22)+f(i);
    elseif Week(i)==23 && ~isnan(f(i))
        w5(23)=w5(23)+f(i);
    elseif Week(i)==24 && ~isnan(f(i))
        w5(24)=w5(24)+f(i);
    elseif Week(i)==25 && ~isnan(f(i))
        w5(25)=w5(25)+f(i);
    elseif Week(i)==26 && ~isnan(f(i))
        w5(26)=w5(26)+f(i);
    elseif Week(i)==27 && ~isnan(f(i))
        w5(27)=w5(27)+f(i);
    elseif Week(i)==28 && ~isnan(f(i))
        w5(28)=w5(28)+f(i);
    elseif Week(i)==29 && ~isnan(f(i))
        w5(29)=w5(29)+f(i);      
   elseif Week(i)==30 && ~isnan(f(i))
        w5(30)=w5(30)+f(i);
    elseif Week(i)==31 && ~isnan(f(i))
        w5(31)=w5(31)+f(i);
    elseif Week(i)==32 && ~isnan(f(i))
        w5(32)=w5(32)+f(i);
    elseif Week(i)==33 && ~isnan(f(i))
        w5(33)=w5(33)+f(i);
    elseif Week(i)==34 && ~isnan(f(i))
        w5(34)=w5(34)+f(i);
    elseif Week(i)==35 && ~isnan(f(i))
        w5(35)=w5(35)+f(i);   
    elseif Week(i)==36 && ~isnan(f(i))
        w5(36)=w5(36)+f(i);
    elseif Week(i)==37 && ~isnan(f(i))
        w5(37)=w5(37)+f(i);
    elseif Week(i)==38 && ~isnan(f(i))
        w5(38)=w5(38)+f(i);
    elseif Week(i)==39 && ~isnan(f(i))
        w5(39)=w5(39)+f(i);
    elseif Week(i)==40 && ~isnan(f(i))
        w5(40)=w5(40)+f(i);
    elseif Week(i)==41 && ~isnan(f(i))
        w5(41)=w5(41)+f(i);
    elseif Week(i)==42 && ~isnan(f(i))
        w5(42)=w5(42)+f(i);
    elseif Week(i)==43 && ~isnan(f(i))
        w5(43)=w5(43)+f(i);
    elseif Week(i)==44 && ~isnan(f(i))
        w5(44)=w5(44)+f(i);
    elseif Week(i)==45 && ~isnan(f(i))
        w5(45)=w5(45)+f(i);
    elseif Week(i)==46 && ~isnan(f(i))
        w5(46)=w5(46)+f(i);
    elseif Week(i)==47 && ~isnan(f(i))
        w5(47)=w5(47)+f(i);
    elseif Week(i)==48 && ~isnan(f(i))
        w5(48)=w5(48)+f(i);
    elseif Week(i)==49 && ~isnan(f(i))
        w5(49)=w5(49)+f(i);          
     elseif Week(i)==50 && ~isnan(f(i))
        w5(50)=w5(50)+f(i);      
     elseif Week(i)==51 && ~isnan(f(i))
        w5(51)=w5(51)+f(i);    
   elseif Week(i)==52 && ~isnan(f(i))
        w5(52)=w5(52)+f(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w5(1:52,1))
        hold on;
           title('Number of Head & Neck Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
    
w6=zeros(52,1);
for i=1:1:2922
    if Week(i)==1 && ~isnan(g(i))
        w6(1)=w6(1)+g(i);
    elseif Week(i)==2 && ~isnan(g(i))
        w6(2)=w6(2)+g(i);
    elseif Week(i)==3 && ~isnan(g(i))
        w6(3)=w6(3)+g(i);
    elseif Week(i)==4 && ~isnan(g(i))
        w6(4)=w6(4)+g(i);
    elseif Week(i)==5 && ~isnan(g(i))
        w6(5)=w6(5)+g(i);
    elseif Week(i)==6 && ~isnan(g(i))
        w6(6)=w6(6)+g(i);
    elseif Week(i)==7 && ~isnan(g(i))
        w6(7)=w6(7)+g(i);
    elseif Week(i)==8 && ~isnan(g(i))
        w6(8)=w6(8)+g(i);
    elseif Week(i)==9 && ~isnan(g(i))
        w6(9)=w6(9)+g(i);
    elseif Week(i)==10 && ~isnan(g(i))
        w6(10)=w6(10)+g(i);
    elseif Week(i)==11 && ~isnan(g(i))
        w6(11)=w6(11)+g(i);
    elseif Week(i)==12 && ~isnan(g(i))
        w6(12)=w6(12)+g(i);
    elseif Week(i)==13 && ~isnan(g(i))
        w6(13)=w6(13)+g(i);
    elseif Week(i)==14 && ~isnan(g(i))
        w6(14)=w6(14)+g(i);
    elseif Week(i)==15 && ~isnan(g(i))
        w6(15)=w6(15)+g(i);   
    elseif Week(i)==16 && ~isnan(g(i))
        w6(16)=w6(16)+g(i);
    elseif Week(i)==17 && ~isnan(g(i))
        w6(17)=w6(17)+g(i);
    elseif Week(i)==18 && ~isnan(g(i))
        w6(18)=w6(18)+g(i);
    elseif Week(i)==19 && ~isnan(g(i))
        w6(19)=w6(19)+g(i);
    elseif Week(i)==20 && ~isnan(g(i))
        w6(20)=w6(20)+g(i);
    elseif Week(i)==21 && ~isnan(g(i))
        w6(21)=w6(21)+g(i);
    elseif Week(i)==22 && ~isnan(g(i))
        w6(22)=w6(22)+g(i);
    elseif Week(i)==23 && ~isnan(g(i))
        w6(23)=w6(23)+g(i);
    elseif Week(i)==24 && ~isnan(g(i))
        w6(24)=w6(24)+g(i);
    elseif Week(i)==25 && ~isnan(g(i))
        w6(25)=w6(25)+g(i);
    elseif Week(i)==26 && ~isnan(g(i))
        w6(26)=w6(26)+g(i);
    elseif Week(i)==27 && ~isnan(g(i))
        w6(27)=w6(27)+g(i);
    elseif Week(i)==28 && ~isnan(g(i))
        w6(28)=w6(28)+g(i);
    elseif Week(i)==29 && ~isnan(g(i))
        w6(29)=w6(29)+g(i);      
   elseif Week(i)==30 && ~isnan(g(i))
        w6(30)=w6(30)+g(i);
    elseif Week(i)==31 && ~isnan(g(i))
        w6(31)=w6(31)+g(i);
    elseif Week(i)==32 && ~isnan(g(i))
        w6(32)=w6(32)+g(i);
    elseif Week(i)==33 && ~isnan(g(i))
        w6(33)=w6(33)+g(i);
    elseif Week(i)==34 && ~isnan(g(i))
        w6(34)=w6(34)+g(i);
    elseif Week(i)==35 && ~isnan(g(i))
        w6(35)=w6(35)+g(i);   
    elseif Week(i)==36 && ~isnan(g(i))
        w6(36)=w6(36)+g(i);
    elseif Week(i)==37 && ~isnan(g(i))
        w6(37)=w6(37)+g(i);
    elseif Week(i)==38 && ~isnan(g(i))
        w6(38)=w6(38)+g(i);
    elseif Week(i)==39 && ~isnan(g(i))
        w6(39)=w6(39)+g(i);
    elseif Week(i)==40 && ~isnan(g(i))
        w6(40)=w6(40)+g(i);
    elseif Week(i)==41 && ~isnan(g(i))
        w6(41)=w6(41)+g(i);
    elseif Week(i)==42 && ~isnan(g(i))
        w6(42)=w6(42)+g(i);
    elseif Week(i)==43 && ~isnan(g(i))
        w6(43)=w6(43)+g(i);
    elseif Week(i)==44 && ~isnan(g(i))
        w6(44)=w6(44)+g(i);
    elseif Week(i)==45 && ~isnan(g(i))
        w6(45)=w6(45)+g(i);
    elseif Week(i)==46 && ~isnan(g(i))
        w6(46)=w6(46)+g(i);
    elseif Week(i)==47 && ~isnan(g(i))
        w6(47)=w6(47)+g(i);
    elseif Week(i)==48 && ~isnan(g(i))
        w6(48)=w6(48)+g(i);
    elseif Week(i)==49 && ~isnan(g(i))
        w6(49)=w6(49)+g(i);          
     elseif Week(i)==50 && ~isnan(g(i))
        w6(50)=w6(50)+g(i);      
     elseif Week(i)==51 && ~isnan(g(i))
        w6(51)=w6(51)+g(i);    
   elseif Week(i)==52 && ~isnan(g(i))
        w6(52)=w6(52)+g(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w6(1:52,1))
        hold on;
           title('Number of Chest and Sternum Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
w7=zeros(52,1);
for i=1:1:2922
    if Week(i)==1 && ~isnan(h(i))
        w7(1)=w7(1)+h(i);
    elseif Week(i)==2 && ~isnan(h(i))
        w7(2)=w7(2)+h(i);
    elseif Week(i)==3 && ~isnan(h(i))
        w7(3)=w7(3)+h(i);
    elseif Week(i)==4 && ~isnan(h(i))
        w7(4)=w7(4)+h(i);
    elseif Week(i)==5 && ~isnan(h(i))
        w7(5)=w7(5)+h(i);
    elseif Week(i)==6 && ~isnan(h(i))
        w7(6)=w7(6)+h(i);
    elseif Week(i)==7 && ~isnan(h(i))
        w7(7)=w7(7)+h(i);
    elseif Week(i)==8 && ~isnan(h(i))
        w7(8)=w7(8)+h(i);
    elseif Week(i)==9 && ~isnan(h(i))
        w7(9)=w7(9)+h(i);
    elseif Week(i)==10 && ~isnan(h(i))
        w7(10)=w7(10)+h(i);
    elseif Week(i)==11 && ~isnan(h(i))
        w7(11)=w7(11)+h(i);
    elseif Week(i)==12 && ~isnan(h(i))
        w7(12)=w7(12)+h(i);
    elseif Week(i)==13 && ~isnan(h(i))
        w7(13)=w7(13)+h(i);
    elseif Week(i)==14 && ~isnan(h(i))
        w7(14)=w7(14)+h(i);
    elseif Week(i)==15 && ~isnan(h(i))
        w7(15)=w7(15)+h(i);   
    elseif Week(i)==16 && ~isnan(h(i))
        w7(16)=w7(16)+h(i);
    elseif Week(i)==17 && ~isnan(h(i))
        w7(17)=w7(17)+h(i);
    elseif Week(i)==18 && ~isnan(h(i))
        w7(18)=w7(18)+h(i);
    elseif Week(i)==19 && ~isnan(h(i))
        w7(19)=w7(19)+h(i);
    elseif Week(i)==20 && ~isnan(h(i))
        w7(20)=w7(20)+h(i);
    elseif Week(i)==21 && ~isnan(h(i))
        w7(21)=w7(21)+h(i);
    elseif Week(i)==22 && ~isnan(h(i))
        w7(22)=w7(22)+h(i);
    elseif Week(i)==23 && ~isnan(h(i))
        w7(23)=w7(23)+h(i);
    elseif Week(i)==24 && ~isnan(h(i))
        w7(24)=w7(24)+h(i);
    elseif Week(i)==25 && ~isnan(h(i))
        w7(25)=w7(25)+h(i);
    elseif Week(i)==26 && ~isnan(h(i))
        w7(26)=w7(26)+h(i);
    elseif Week(i)==27 && ~isnan(h(i))
        w7(27)=w7(27)+h(i);
    elseif Week(i)==28 && ~isnan(h(i))
        w7(28)=w7(28)+h(i);
    elseif Week(i)==29 && ~isnan(h(i))
        w7(29)=w7(29)+h(i);      
   elseif Week(i)==30 && ~isnan(h(i))
        w7(30)=w7(30)+h(i);
    elseif Week(i)==31 && ~isnan(h(i))
        w7(31)=w7(31)+h(i);
    elseif Week(i)==32 && ~isnan(h(i))
        w7(32)=w7(32)+h(i);
    elseif Week(i)==33 && ~isnan(h(i))
        w7(33)=w7(33)+h(i);
    elseif Week(i)==34 && ~isnan(h(i))
        w7(34)=w7(34)+h(i);
    elseif Week(i)==35 && ~isnan(h(i))
        w7(35)=w7(35)+h(i);   
    elseif Week(i)==36 && ~isnan(h(i))
        w7(36)=w7(36)+h(i);
    elseif Week(i)==37 && ~isnan(h(i))
        w7(37)=w7(37)+h(i);
    elseif Week(i)==38 && ~isnan(h(i))
        w7(38)=w7(38)+h(i);
    elseif Week(i)==39 && ~isnan(h(i))
        w7(39)=w7(39)+h(i);
    elseif Week(i)==40 && ~isnan(h(i))
        w7(40)=w7(40)+h(i);
    elseif Week(i)==41 && ~isnan(h(i))
        w7(41)=w7(41)+h(i);
    elseif Week(i)==42 && ~isnan(h(i))
        w7(42)=w7(42)+h(i);
    elseif Week(i)==43 && ~isnan(h(i))
        w7(43)=w7(43)+h(i);
    elseif Week(i)==44 && ~isnan(h(i))
        w7(44)=w7(44)+h(i);
    elseif Week(i)==45 && ~isnan(h(i))
        w7(45)=w7(45)+h(i);
    elseif Week(i)==46 && ~isnan(h(i))
        w7(46)=w7(46)+h(i);
    elseif Week(i)==47 && ~isnan(h(i))
        w7(47)=w7(47)+h(i);
    elseif Week(i)==48 && ~isnan(h(i))
        w7(48)=w7(48)+h(i);
    elseif Week(i)==49 && ~isnan(h(i))
        w7(49)=w7(49)+h(i);          
     elseif Week(i)==50 && ~isnan(h(i))
        w7(50)=w7(50)+h(i);      
     elseif Week(i)==51 && ~isnan(h(i))
        w7(51)=w7(51)+h(i);    
   elseif Week(i)==52 && ~isnan(h(i))
        w7(52)=w7(52)+h(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w7(1:52,1))
        hold on;
           title('Number of Abdominal & Pelvic Region Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    
    
w8=zeros(52,1);
for i=1:1:2922
    if Week(i)==1 && ~isnan(j(i))
        w8(1)=w8(1)+j(i);
    elseif Week(i)==2 && ~isnan(j(i))
        w8(2)=w8(2)+j(i);
    elseif Week(i)==3 && ~isnan(j(i))
        w8(3)=w8(3)+j(i);
    elseif Week(i)==4 && ~isnan(j(i))
        w8(4)=w8(4)+j(i);
    elseif Week(i)==5 && ~isnan(j(i))
        w8(5)=w8(5)+j(i);
    elseif Week(i)==6 && ~isnan(j(i))
        w8(6)=w8(6)+j(i);
    elseif Week(i)==7 && ~isnan(j(i))
        w8(7)=w8(7)+j(i);
    elseif Week(i)==8 && ~isnan(j(i))
        w8(8)=w8(8)+j(i);
    elseif Week(i)==9 && ~isnan(j(i))
        w8(9)=w8(9)+j(i);
    elseif Week(i)==10 && ~isnan(j(i))
        w8(10)=w8(10)+j(i);
    elseif Week(i)==11 && ~isnan(j(i))
        w8(11)=w8(11)+j(i);
    elseif Week(i)==12 && ~isnan(j(i))
        w8(12)=w8(12)+j(i);
    elseif Week(i)==13 && ~isnan(j(i))
        w8(13)=w8(13)+j(i);
    elseif Week(i)==14 && ~isnan(j(i))
        w8(14)=w8(14)+j(i);
    elseif Week(i)==15 && ~isnan(j(i))
        w8(15)=w8(15)+j(i);   
    elseif Week(i)==16 && ~isnan(j(i))
        w8(16)=w8(16)+j(i);
    elseif Week(i)==17 && ~isnan(j(i))
        w8(17)=w8(17)+j(i);
    elseif Week(i)==18 && ~isnan(j(i))
        w8(18)=w8(18)+j(i);
    elseif Week(i)==19 && ~isnan(j(i))
        w8(19)=w8(19)+j(i);
    elseif Week(i)==20 && ~isnan(j(i))
        w8(20)=w8(20)+j(i);
    elseif Week(i)==21 && ~isnan(j(i))
        w8(21)=w8(21)+j(i);
    elseif Week(i)==22 && ~isnan(j(i))
        w8(22)=w8(22)+j(i);
    elseif Week(i)==23 && ~isnan(j(i))
        w8(23)=w8(23)+j(i);
    elseif Week(i)==24 && ~isnan(j(i))
        w8(24)=w8(24)+j(i);
    elseif Week(i)==25 && ~isnan(j(i))
        w8(25)=w8(25)+j(i);
    elseif Week(i)==26 && ~isnan(j(i))
        w8(26)=w8(26)+j(i);
    elseif Week(i)==27 && ~isnan(j(i))
        w8(27)=w8(27)+j(i);
    elseif Week(i)==28 && ~isnan(j(i))
        w8(28)=w8(28)+j(i);
    elseif Week(i)==29 && ~isnan(j(i))
        w8(29)=w8(29)+j(i);      
   elseif Week(i)==30 && ~isnan(j(i))
        w8(30)=w8(30)+j(i);
    elseif Week(i)==31 && ~isnan(j(i))
        w8(31)=w8(31)+j(i);
    elseif Week(i)==32 && ~isnan(j(i))
        w8(32)=w8(32)+j(i);
    elseif Week(i)==33 && ~isnan(j(i))
        w8(33)=w8(33)+j(i);
    elseif Week(i)==34 && ~isnan(j(i))
        w8(34)=w8(34)+j(i);
    elseif Week(i)==35 && ~isnan(j(i))
        w8(35)=w8(35)+j(i);   
    elseif Week(i)==36 && ~isnan(j(i))
        w8(36)=w8(36)+j(i);
    elseif Week(i)==37 && ~isnan(j(i))
        w8(37)=w8(37)+j(i);
    elseif Week(i)==38 && ~isnan(j(i))
        w8(38)=w8(38)+j(i);
    elseif Week(i)==39 && ~isnan(j(i))
        w8(39)=w8(39)+j(i);
    elseif Week(i)==40 && ~isnan(j(i))
        w8(40)=w8(40)+j(i);
    elseif Week(i)==41 && ~isnan(j(i))
        w8(41)=w8(41)+j(i);
    elseif Week(i)==42 && ~isnan(j(i))
        w8(42)=w8(42)+j(i);
    elseif Week(i)==43 && ~isnan(j(i))
        w8(43)=w8(43)+j(i);
    elseif Week(i)==44 && ~isnan(j(i))
        w8(44)=w8(44)+j(i);
    elseif Week(i)==45 && ~isnan(j(i))
        w8(45)=w8(45)+j(i);
    elseif Week(i)==46 && ~isnan(j(i))
        w8(46)=w8(46)+j(i);
    elseif Week(i)==47 && ~isnan(j(i))
        w8(47)=w8(47)+j(i);
    elseif Week(i)==48 && ~isnan(j(i))
        w8(48)=w8(48)+j(i);
    elseif Week(i)==49 && ~isnan(j(i))
        w8(49)=w8(49)+j(i);          
     elseif Week(i)==50 && ~isnan(j(i))
        w8(50)=w8(50)+j(i);      
     elseif Week(i)==51 && ~isnan(j(i))
        w8(51)=w8(51)+j(i);    
   elseif Week(i)==52 && ~isnan(j(i))
        w8(52)=w8(52)+j(i);     
    end
end

  figure;
    for p=1:1:52
        bar(1:52,w8(1:52,1))
        hold on;
           title('Number of Other Events per Week')
   ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Frequency of Event');
    end    


%% PDF Functions for all variables Per Sun to Sat from 2010-2017


% PDF function for Total # of Cases Per Week
mu=mean(a1);
sigma=std(a1);
pd=makedist('Normal',mu,sigma);
k=pdf(pd,a1);
figure;
plot(k)
title('PDF for Total # of Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # Weekday cases Per Week

mu1=mean(b1);
sigma1=std(b1);
pd1= makedist('Normal',mu1,sigma1);
k1=pdf(pd1,b1);
figure;
plot(k1)
title('Probability Density function function for # Weekday cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Weekend Cases Per Week

mu2=mean(c1);
sigma2=std(c1);
pd2= makedist('Normal',mu2,sigma2);
k2=pdf(pd2,c1);
figure;
plot(k2)
title('Probability Density function for Total # of Weekend Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF function for # of Holiday cases Per Week

mu3=mean(d1);
sigma3=std(d1);
pd3= makedist('Normal',mu3,sigma3);
k3=pdf(pd3,d1);
figure;
plot(k3)
title('Probability Density function for # of Holiday Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability Value')


% PDF function for # of Spine cases Per Week

mu4=mean(e1);
sigma4=std(e1);
pd4= makedist('Normal',mu4,sigma4);
k4=pdf(pd4,e1);
figure;
plot(k4)
title('Probability Density function for # of Spine Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Head & Neck cases Per Week

mu5=mean(f1);
sigma5=std(f1);
pd5= makedist('Normal',mu5,sigma5);
k5=pdf(pd5,f1);
figure;
plot(k5)
title('Probability Density function for # of Head & Neck Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Chest & Sternum cases Per Week

mu6=mean(g1);
sigma6=std(g1);
pd6= makedist('Normal',mu6,sigma6);
k6=pdf(pd6,g1);
figure;
plot(k6)
title('Probability Density function for # of Chest & Sternum Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Abdominal & Pelvic Region cases Per Week

mu7=mean(h1);
sigma7=std(h1);
pd7= makedist('Normal',mu7,sigma7);
k7=pdf(pd7,h1);
figure;
plot(k7)
title('Probability Density function for # of Abdominal & Pelvic Region Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Other cases Per Week

mu8=mean(j1);
sigma8=std(j1);
pd8= makedist('Normal',mu8,sigma8);
k8=pdf(pd8,j1);
figure;
plot(k8)
title('Probability Density function for # of Other Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%% PDF Function for All Variables per 52 Weeks of the Year from 2010-2017

% PDF function For Total Events Per Week
mu12=mean(w);
sigma12=std(w);
pd12= makedist('Normal',mu12,sigma12);
k12=pdf(pd12,w);
figure;
plot(k12)
title('Probability Density function for # of Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF Function for # of Weekday Cases per Week

mu13=mean(w1);
sigma13=std(w1);
pd13= makedist('Normal',mu13,sigma13);
k13=pdf(pd13,w1);
figure;
plot(k13)
title('Probability Density function for # of weekday Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%  PDF Function for # of Weekend Cases per Week

mu14=mean(w2);
sigma14=std(w2);
pd14= makedist('Normal',mu14,sigma14);
k14=pdf(pd14,w2);
figure;
plot(k14)
title('Probability Density function for # of Weekend Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%  PDF Function for # of Holiday Cases per Week

mu15=mean(w3);
sigma15=std(w3);
pd15= makedist('Normal',mu15,sigma15);
k15=pdf(pd15,w3);
figure;
plot(k15)
title('Probability Density function for # of Holiday Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF Function for # of Spine Cases per Week

mu16=mean(w4);
sigma16=std(w4);
pd16= makedist('Normal',mu16,sigma16);
k16=pdf(pd16,w4);
figure;
plot(k16)
title('Probability Density function for # of Spine Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF Function for # of Head & Neck Cases per Week

mu17=mean(w5);
sigma17=std(w5);
pd17= makedist('Normal',mu17,sigma17);
k17=pdf(pd16,w5);
figure;
plot(k17)
title('Probability Density Function for # of Head & Neck Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF Function for # of Chest & Sternum Cases per Week
mu18=mean(w6);
sigma18=std(w6);
pd18= makedist('Normal',mu18,sigma18);
k18=pdf(pd18,w6);
figure;
plot(k18)
title('Probability Density function for # of Head & Neck Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF Function for # of Abdominal & Pelvic region Cases per Week

mu19=mean(w7);
sigma19=std(w7);
pd19= makedist('Normal',mu19,sigma19);
k19=pdf(pd19,w7);
figure;
plot(k19)
title('Probability Density function for # of Abdominal & Pelvic region Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')




% PDF Function for # of Other Cases per Week
mu20=mean(w8);
sigma20=std(w8);
pd20= makedist('Normal',mu20,sigma20);
k20=pdf(pd20,w8);
figure;
plot(k20)
title('Probability Density function for # of Other Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')


%% PDF Function for All Variables per 12 Months of the Year from 2010-2017

% PDF function For Total Events Per month

mu21=mean(a2);
sigma21=std(a2);
pd21= makedist('Normal',mu21,sigma21);
k21=pdf(pd21,a2);
figure;
plot(k21)
title('Probability Density function for Total # of Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function For # of Weekday(Mon-Fri) cases Per Month

mu22=mean(b2);
sigma22=std(b2);
pd22= makedist('Normal',mu22,sigma22);
k22=pdf(pd22,b2);
figure;
plot(k22)
title('Probability Density function for # of Weekday Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function For # of Weekend cases Per Month

mu23=mean(c2);
sigma23=std(c2);
pd23= makedist('Normal',mu23,sigma23);
k23=pdf(pd23,c2);
figure;
plot(k23)
title('Probability Density function for # of Weekend Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function For # of Holiday cases Per Month

mu24=mean(d2);
sigma24=std(d2);
pd24= makedist('Normal',mu24,sigma24);
k24=pdf(pd24,d2);
figure;
plot(k24)
title('Probability Density function for # of Holiday Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function For # of Spine cases Per Month

mu25=mean(e2);
sigma25=std(e2);
pd25= makedist('Normal',mu25,sigma25);
k25=pdf(pd25,e2);
figure;
plot(k25)
title('Probability Density function for # of Spine Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function For # of Head & Neck cases Per Month

mu26=mean(f2);
sigma26=std(f2);
pd26= makedist('Normal',mu26,sigma26);
k26=pdf(pd26,f2);
figure;
plot(k26)
title('Probability Density function for # of Head & Neck Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function For # of Chest and Sternum cases Per Month

mu27=mean(g2);
sigma27=std(g2);
pd27= makedist('Normal',mu27,sigma27);
k27=pdf(pd27,g2);
figure;
plot(k27)
title('Probability Density function for # of Chest and Sternum Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function For # of Abdominal & Pelvic Region cases Per Month

mu28=mean(h2);
sigma28=std(h2);
pd28= makedist('Normal',mu28,sigma28);
k28=pdf(pd28,h2);
figure;
plot(k28)
title('Probability Density function for # of Abdominal & Pelvic Region Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function For # of Other cases Per Month

mu29=mean(j2);
sigma29=std(j2);
pd29= makedist('Normal',mu29,sigma29);
k29=pdf(pd29,j2);
figure;
plot(k29)
title('Probability Density function for # of Other Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


%% PDF Function for All Variables per Year 


% PDF function for total # of Cases per Year
mu30=mean(a3);
sigma30=std(a3);
pd30= makedist('Normal',mu30,sigma30);
k30=pdf(pd30,a3);
figure;
plot(k30)
title('Probability Density function for total # of Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function for # of Weekday Cases per Year

mu31=mean(b3);
sigma31=std(b3);
pd31= makedist('Normal',mu31,sigma31);
k31=pdf(pd31,b3);
figure;
plot(k31)
title('Probability Density function for total # of Weekday Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function for # of Weekend Cases per Year

mu32=mean(c3);
sigma32=std(c3);
pd32= makedist('Normal',mu32,sigma32);
k32=pdf(pd32,c3);
figure;
plot(k32)
title('Probability Density function for total # of Weekend Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% PDF function for # of Holiday Cases per Year

mu33=mean(d3);
sigma33=std(d3);
pd33= makedist('Normal',mu33,sigma33);
k33=pdf(pd33,d3);
figure;
plot(k33)
title('Probability density function for total # of Holiday Cases Per Year')
ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function for # of Spine Cases per Year

mu34=mean(e3);
sigma34=std(e3);
pd34= makedist('Normal',mu34,sigma34);
k34=pdf(pd34,e3);
figure;
plot(k34)
title('Probability Density function for total # of Spine Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF function for # of Head & Neck Cases per Year

mu35=mean(f3);
sigma35=std(f3);
pd35= makedist('Normal',mu35,sigma35);
k35=pdf(pd35,f3);
figure;
plot(k35)
title('Probability Density function for total # of Head & Neck Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% PDF function for # of Chest & Sternum Cases per Year

mu36=mean(g3);
sigma36=std(g3);
pd36= makedist('Normal',mu36,sigma36);
k36=pdf(pd36,g3);
figure;
plot(k36)
title('Probability Density function for total # of Chest & Sternum Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF function for # of Abdominal & Pelvic Region Cases per Year

mu37=mean(h3);
sigma37=std(h3);
pd37= makedist('Normal',mu37,sigma37);
k37=pdf(pd37,h3);
figure;
plot(k37)
title('Probability Density function for total # of Abdominal & Pelvic Region Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% PDF function for # of Other Cases per Year

mu38=mean(j3);
sigma38=std(j3);
pd38= makedist('Normal',mu38,sigma38);
k38=pdf(pd38,j3);
figure;
plot(k38)
title('Probability density function for total # of Other Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability ')


%% Cumulative Distribution Functions for all variables Per Sun to Sat from 2010-2017 if Data is modeled as a continuous and not discrete

% CDF function for Total # of Cases Per Week

mu40=mean(a1);
sigma40=std(a1);
pd40=makedist('Normal',mu40,sigma40);
k40=cdf(pd40,a1);
figure;
plot(k40)
title('Cumulative Distribution function for Total # of Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # Weekday cases Per Week

mu41=mean(b1);
sigma41=std(b1);
pd41= makedist('Normal',mu41,sigma41);
k41=cdf(pd41,b1);
figure;
plot(k41)
title('Cumulative Distribution function for # Weekday cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Weekend Cases Per Week

mu42=mean(c1);
sigma42=std(c1);
pd42= makedist('Normal',mu42,sigma42);
k42=cdf(pd42,c1);
figure;
plot(k42)
title('Cumulative Distribution function for Total # of Weekend Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% CDF function for # of Holiday cases Per Week

mu43=mean(d1);
sigma43=std(d1);
pd43= makedist('Normal',mu43,sigma43);
k43=cdf(pd43,d1);
figure;
plot(k43)
title('Cumulative Distribution function for # of Holiday Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability Value')


% CDF function for # of Spine cases Per Week

mu44=mean(e1);
sigma44=std(e1);
pd44= makedist('Normal',mu44,sigma44);
k44=cdf(pd44,e1);
figure;
plot(k44)
title('Cumulative Distribution function for # of Spine Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Head & Neck cases Per Week

mu45=mean(f1);
sigma45=std(f1);
pd45= makedist('Normal',mu45,sigma45);
k45=cdf(pd45,f1);
figure;
plot(k45)
title('Cumulative Distribution function for # of Head & Neck Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Chest & Sternum cases Per Week

mu46=mean(g1);
sigma46=std(g1);
pd46= makedist('Normal',mu46,sigma46);
k46=cdf(pd46,g1);
figure;
plot(k46)
title('Cumulative Distribution function for # of Chest & Sternum Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Abdominal & Pelvic Region cases Per Week

mu47=mean(h1);
sigma47=std(h1);
pd47= makedist('Normal',mu47,sigma47);
k47=cdf(pd47,h1);
figure;
plot(k47)
title('Cumulative Distribution function for # of Abdominal & Pelvic Region Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Other cases Per Week

mu48=mean(j1);
sigma48=std(j1);
pd48= makedist('Normal',mu48,sigma48);
k48=cdf(pd48,j1);
figure;
plot(k48)
title('Cumulative Distribution function for # of Other Cases Per Week')
ax2 = gca;
ax2.XTick = [1:7];
ax2.XTickLabel = {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%% CDF Function for All Variables per 52 Weeks of the Year from 2010-2017 if Data is modeled as a continuous and not discrete

% CDF function For Total Events Per Week
mu49=mean(w);
sigma49=std(w);
pd49= makedist('Normal',mu49,sigma49);
k49=cdf(pd49,w);
figure;
plot(k49)
title('Cumulative Distribution function for # of Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF Function for # of Weekday Cases per Week

mu50=mean(w1);
sigma50=std(w1);
pd50= makedist('Normal',mu50,sigma50);
k50=cdf(pd50,w1);
figure;
plot(k50)
title('Cumulative Distribution function for # of weekday Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%  CDF Function for # of Weekend Cases per Week

mu51=mean(w2);
sigma51=std(w2);
pd51= makedist('Normal',mu51,sigma51);
k51=cdf(pd51,w2);
figure;
plot(k51)
title('Cumulative Distribution function for # of Weekend Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

%  CDF Function for # of Holiday Cases per Week

mu52=mean(w3);
sigma52=std(w3);
pd52= makedist('Normal',mu52,sigma52);
k52=cdf(pd52,w3);
figure;
plot(k52)
title('Cumulative Distribution function for # of Holiday Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF Function for # of Spine Cases per Week

mu53=mean(w4);
sigma53=std(w4);
pd53= makedist('Normal',mu53,sigma53);
k53=cdf(pd53,w4);
figure;
plot(k53)
title('Cumulative Distribution function for # of Spine Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF Function for # of Head & Neck Cases per Week

mu54=mean(w5);
sigma54=std(w5);
pd54= makedist('Normal',mu54,sigma54);
k54=cdf(pd54,w5);
figure;
plot(k54)
title('Cumulative Distribution function for # of Head & Neck Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF Function for # of Chest & Sternum Cases per Week

mu55=mean(w6);
sigma55=std(w6);
pd55= makedist('Normal',mu55,sigma55);
k55=cdf(pd55,w6);
figure;
plot(k55)
title('Cumulative Distribution function for # of Head & Neck Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% CDF Function for # of Abdominal & Pelvic region Cases per Week

mu56=mean(w7);
sigma56=std(w7);
pd56= makedist('Normal',mu56,sigma56);
k56= cdf(pd56,w7);
figure;
plot(k56)
title('Cumulative Distribution function for # of Abdominal & Pelvic region Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF Function for # of Other Cases per Week
mu57=mean(w8);
sigma57=std(w8);
pd57= makedist('Normal',mu57,sigma57);
k57=cdf(pd57,w8);
figure;
plot(k57)
title('Cumulative Distribution function for # of Other Cases Per Week')
 ax2 = gca;
ax2.XTick = [1:52];
ax2.XTickLabel = {'Week 1','Week 2','Week 3','Week 4','Week 5','Week 6','Week 7','Week 8','Week 9','Week 10','Week 11','Week 12','Week 13','Week 14','Week 15','Week 16','Week 17','Week 18','Week 19','Week 20','Week 21','Week 22','Week 23','Week 24','Week 25','Week 26','Week 27','Week 28','Week 29','Week 30','Week 31','Week 32','Week 33','Week 34','Week 35','Week 36','Week 37','Week 38','Week 39','Week 40','Week 41','Week 42','Week 43','Week 44','Week 45','Week 46','Week 47','Week 48','Week 49','Week 50','Week 51','Week 52'};   
ax2.XTickLabelRotation = 45;
ylabel('Probability')


%% CDF Function for All Variables per 12 Months of the Year from 2010-2017 if Data is modeled as a continuous and not discrete

% CDF function For Total Events Per month

mu58=mean(a2);
sigma58=std(a2);
pd58= makedist('Normal',mu58,sigma58);
k58=cdf(pd58,a2);
figure;
plot(k58)
title('Cumulative Distribution function for Total # of Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function For # of Weekday(Mon-Fri) cases Per Month

mu59=mean(b2);
sigma59=std(b2);
pd59= makedist('Normal',mu59,sigma59);
k59=cdf(pd59,b2);
figure;
plot(k59)
title('Cumulative Distribution function for # of Weekday Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function For # of Weekend cases Per Month

mu60=mean(c2);
sigma60=std(c2);
pd60= makedist('Normal',mu60,sigma60);
k60=cdf(pd60,c2);
figure;
plot(k60)
title('Cumulative Distribution function for # of Weekend Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function For # of Holiday cases Per Month

mu61=mean(d2);
sigma61=std(d2);
pd61= makedist('Normal',mu61,sigma61);
k61=cdf(pd61,d2);
figure;
plot(k61)
title('Cumulative Distribution function for # of Holiday Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function For # of Spine cases Per Month

mu62=mean(e2);
sigma62=std(e2);
pd62= makedist('Normal',mu62,sigma62);
k62=cdf(pd62,e2);
figure;
plot(k62)
title('Cumulative Distribution function for # of Spine Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function For # of Head & Neck cases Per Month

mu63=mean(f2);
sigma63=std(f2);
pd63= makedist('Normal',mu63,sigma63);
k63=cdf(pd63,f2);
figure;
plot(k63)
title('Cumulative Distribution function for # of Head & Neck Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function For # of Chest and Sternum cases Per Month

mu64=mean(g2);
sigma64=std(g2);
pd64= makedist('Normal',mu64,sigma64);
k64=cdf(pd64,g2);
figure;
plot(k64)
title('Cumulative Distribution function for # of Chest and Sternum Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function For # of Abdominal & Pelvic Region cases Per Month

mu65=mean(h2);
sigma65=std(h2);
pd65= makedist('Normal',mu65,sigma65);
k65=cdf(pd65,h2);
figure;
plot(k65)
title('Cumulative Distribution function for # of Abdominal & Pelvic Region Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function For # of Other cases Per Month

mu66=mean(j2);
sigma66=std(j2);
pd66= makedist('Normal',mu66,sigma66);
k66=cdf(pd66,j2);
figure;
plot(k66)
title('Cumulative Distribution function for # of Other Cases Per Month')
 ax2 = gca;
ax2.XTick = [1:12];
ax2.XTickLabel = {'January','February','March','April','May','June','July','August','September','October','November','December'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


%% CDF Function for All Variables per Year, if Data is modeled as a continuous and not discrete


% CDF function for total # of Cases per Year
mu67=mean(a3);
sigma67=std(a3);
pd67= makedist('Normal',mu67,sigma67);
k67=cdf(pd67,a3);
figure;
plot(k67)
title('Cumulative Distribution function for total # of Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function for # of Weekday Cases per Year

mu68=mean(b3);
sigma68=std(b3);
pd68= makedist('Normal',mu68,sigma68);
k68=cdf(pd68,b3);
figure;
plot(k68)
title('Cumulative Distribution function for total # of Weekday Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function for # of Weekend Cases per Year

mu69=mean(c3);
sigma69=std(c3);
pd69= makedist('Normal',mu69,sigma69);
k69=cdf(pd69,c3);
figure;
plot(k69)
title('Cumulative Distribution function for total # of Weekend Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')

% CDF function for # of Holiday Cases per Year

mu70=mean(d3);
sigma70=std(d3);
pd70= makedist('Normal',mu70,sigma70);
k70=cdf(pd70,d3);
figure;
plot(k70)
title('Cumulative Distribution function for total # of Holiday Cases Per Year')
ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function for # of Spine Cases per Year

mu71=mean(e3);
sigma71=std(e3);
pd71= makedist('Normal',mu71,sigma71);
k71=cdf(pd71,e3);
figure;
plot(k71)
title('Cumulative Distribution function for total # of Spine Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% CDF function for # of Head & Neck Cases per Year

mu72=mean(f3);
sigma72=std(f3);
pd72= makedist('Normal',mu72,sigma72);
k72=cdf(pd72,f3);
figure;
plot(k72)
title('Cumulative Distribution function for total # of Head & Neck Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')


% CDF function for # of Chest & Sternum Cases per Year

mu73=mean(g3);
sigma73=std(g3);
pd73= makedist('Normal',mu73,sigma73);
k73=cdf(pd73,g3);
figure;
plot(k73)
title('Cumulative Distribution function for total # of Chest & Sternum Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% CDF function for # of Abdominal & Pelvic Region Cases per Year

mu74=mean(h3);
sigma74=std(h3);
pd74= makedist('Normal',mu74,sigma74);
k74=cdf(pd74,h3);
figure;
plot(k74)
title('Cumulative Distribution function for total # of Abdominal & Pelvic Region Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability')



% CDF function for # of Other Cases per Year

mu75=mean(j3);
sigma75=std(j3);
pd75= makedist('Normal',mu75,sigma75);
k75=cdf(pd75,j3);
figure;
plot(k75)
title('Cumulative Distribution function for total # of Other Cases Per Year')
 ax2 = gca;
ax2.XTick = [1:8];
ax2.XTickLabel = {'2010','2011','2012','2013','2014','2015','2016','2017'};
ax2.XTickLabelRotation = 45;
ylabel('Probability ')

