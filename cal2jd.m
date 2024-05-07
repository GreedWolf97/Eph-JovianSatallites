function jd = cal2jd(cal)
% cal2jd1	������������ʱ����ת���������ա�
%  jd=cal2jd(cal)  ����������
%  cal��1x6����6�зֱ�Ϊ������ʱ���롣����calʱ����ʡ��ĩβ��0
%
% ��Ԫ1582��10��4��24:00��֮ǰʹ������������Ԫ1582��10��15��00:00��֮��ʹ�ù���

if length(cal) < 6
	cal(6)=0;
end
year=cal(1);
month=cal(2);
day=cal(3)+(cal(4)*3600+cal(5)*60+cal(6))/86400;

y = year + 4800; %4801 B.C. is a century year and also a leap year.  

if( year < 0 )
	y =y+ 1; 	% Please note that there is no year 0 A.D.
end

m=month;
if( m <= 2 )	% January and February come after December.
	m = m+12; 
	y = y - 1;
end

e=floor(30.6 * (m+1));

a=floor(y/100);	% number of centuries

% �̻ʸ��׸���ʮ������1582��2��24���Խ̻�ѵ��䲼����1582��10��5����14Ĩ����1582��10��4�չ����ڶ�����10��15��
if( year <1582 )||(year==1582 && month<10)||(year==1582 && month==10 && day<15)
	b = -38;
else
	b = floor((a/4) - a); % number of century years that are not leap years
end

c=floor(365.25* y); % Julian calendar years and leap years 

jd = b + c + e + day - 32167.5;
end