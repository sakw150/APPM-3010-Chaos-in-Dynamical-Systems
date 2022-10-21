% RATIO COOK PAY AND RATIO QUALITY 
figure
plot(ratio_quality_notip,ratio_cookpay_notip)
xlabel('Quality')
ylabel('Cook Pay')
% RATIO WAITER PAY AND QUALITY 
figure
plot(ratio_quality_notip,ratio_waiterbasepay_notip)
xlabel('Quality')
ylabel('Waiter Pay')
%MODIFIED RESTAURANT PROFIT AND RESTAURANT QUALITY 
figure 
q1_1 = (equil_1(:,2)+R*equil_1(:,3)); q2_1 = (Nw-equil_1(:,2)+R*(Nc-equil_1(:,3)));
q1_2 = (equil_2(:,2)+R*equil_2(:,3)); q2_2 = (Nw-equil_2(:,2)+R*(Nc-equil_2(:,3)));
ratio_quality_tip = q1_1./q2_1; ratio_quality_notip = q1_2./q2_2;
pmax2
plot(ratio_quality_notip,pmax2)
xlabel('Restaurant Quality')
ylabel('Profit')
% MENU PRICE AND COOK PAY 
figure
m1_1 = (m1*(1+tip_conventional')); m2_1 = (m2*(1+tip_conventional'));
m1_2 = (m1); m2_2 = (m2*(1+tip_conventional'));
ratio_menu_tip = m1_1./m2_1; ratio_menu_notip = m1_2./m2_2;
plot(ratio_cookpay_notip,ratio_menu_notip)
xlabel('Cook Pay')
ylabel('Menu Price')
% COOK PAY AND WAITER PAY 
figure 
plot(ratio_cookpay_notip,ratio_waiterbasepay_notip)
xlabel('Cook Pay')
ylabel('Waiter Pay')
% DINER VALUE AND MENU PRICE
figure 
ratio_menu_notip % Menu Price 
ratio_value_notip % Diner Value 
plot(ratio_menu_notip,ratio_value_notip)
xlabel('Menu Price')
ylabel('Diner Value')
% DINER VALUE AND WAITER PAY
figure 
plot(ratio_value_notip,ratio_waiterbasepay_notip)
xlabel('Diner Value')
ylabel('Waiter Pay')
%FRACTION OF Waiters AND PROFIT
[ equil_2(:,1)/Nd,  equil_2(:,2)/Nw, equil_2(:,3)/Nc] % Fraction of People 
pmax2 % Profit 
plot(equil_1(:,2)/Nw,pmax2)
xlabel('Fraction of Waiters')
ylabel('Profit')
%FRACTION OF WAITERS AND WAITER PAY
figure
plot(ratio_waiterbasepay_notip,[equil_2(:,2)/Nw])
xlabel('Waiter Pay')
ylabel('Fraction of Waiters')
% FRACTION OF COOK AND PAY
figure
plot(equil_2(:,3)/Nc,ratio_cookpay_notip)
xlabel('Fraction of Cooks')
ylabel('Cook Pay')
% FRACTION OF WAITERS AND PAY 
figure
plot(equil_2(:,2)/Nw,ratio_waiterbasepay_notip)
xlabel('Fraction of Waiters')
ylabel('Waiter Pay')
% QUALITY AND FRACTION OF WAITERS 
figure 
plot(equil_2(:,2)/Nw,ratio_quality_notip)
xlabel('Fraction of Waiters')
ylabel('Quality')
% QUALITY AND FRACTION OF COOKS 
figure 
plot(equil_2(:,3)/Nc,ratio_quality_notip)
xlabel('Fraction of Cooks')
ylabel('Quality')
% MENU PRICE AND WAITER WAGE
figure
plot(ratio_menu_notip,ratio_waiterbasepay_notip)
xlabel('Menu Price')
ylabel('Waiter Pay')
% MENU PRICE AND COOK WAGE
figure 
plot(ratio_menu_notip,ratio_cookpay_notip)
xlabel('Menu Price')
ylabel('Cook Pay')
%FRACTION OF DINERS AND PROFIT
plot([equil_2(:,1)/Nd],pmax2)
hold off
xlabel(' Pay')
ylabel('Profit')
legend('Cook Pay','Waiter Pay', 'Fraction of Diners')
%FRACTION OF DINERS AND PAY
plot([equil_2(:,1)/Nd],ratio_waiterpay_notip,[equil_2(:,1)/Nd],ratio_cookpay_notip)
xlabel('Fraction of Diners')
ylabel('Pay')
legend('Waiter Pay','Cook Pay')
% HAND CALCULATION: PART 1
figure 
x=[1:1:10]
y=-(exp((-2*x+(3/2)*log(1/3))/3)/2)+1/2
y2=-(exp(-x+log(1/6)))+1/2
plot(x,y)
hold on 
plot(x,y2)
hold off
xlabel('Time')
ylabel('Fraction of Waiters, Diners, and Cooks')
legend('Fraction of Diners', 'Fraction of Waiters and Cooks')
