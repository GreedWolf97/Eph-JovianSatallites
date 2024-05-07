function cal = jd2cal(jd)
% �������ռ��㹫��������ʱ����
% cal=jd2cal(J)
% ���ص�cal��1x6����6�зֱ�Ϊ������ʱ����
%
% ��Ԫ1582��10��4��24:00��֮ǰʹ������������Ԫ1582��10��15��00:00��֮��ʹ�ù���

if (jd < 1721423.5)	% ��Ԫ1��1��0ʱ
	BC = 1;
else
	BC = 0;
end

%start from Julian March 1, 4801 B.C.

if( jd < 2299160.5 )	% before 1582.10.4. 24:00 is Julian calender
	j0=floor(jd+0.5);
	dd=jd+0.5-j0;
else	% after 1582.10.15. 00:00 is Gregorian calender
	%number of certury years that are not leap year
	n1=floor((jd-2342031.5)/36524.25/4)+1;	%1700.3.1.0
	n2=floor((jd-2378555.5)/36524.25/4)+1;	%1800.3.1.0
	n3=floor((jd-2415079.5)/36524.25/4)+1;	%1900.3.1.0
	j0=n1+n2+n3+jd+10;
	dd=j0+0.5-floor(j0+0.5);
	j0=floor(j0+0.5);
end

j0=j0+32083;
year0=ceil(j0/365.25)-1;
year=year0-4800;
day=j0-floor(year0*365.25);
month=floor((day-0.6)/30.6)+3;
day=day-round((month-3)*30.6);
if month>12
	month=month-12;
	year=year+1;
end

year=year-BC;

sec=round(dd*86400);

hour=floor(sec/3600);
sec=sec-hour*3600;
min=floor(sec/60);
sec=sec-min*60;
cal=[year, month, day, hour, min, sec];
end