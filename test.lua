local t=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local H=math.ldexp;local I=getfenv or function()return _ENV end;local l=setmetatable;local u=select;local i=unpack;local h=tonumber;local function b(t)local o,e,a="","",{}local n=256;local d={}for l=0,n-1 do d[l]=r(l)end;local l=1;local function f()local o=h(c(t,l,l),36)l=l+1;local e=h(c(t,l,l+o-1),36)l=l+o;return e end;o=r(f())a[1]=o;while l<#t do local l=f()if d[l]then e=d[l]else e=o..c(o,1,1)end;d[n]=o..c(e,1,1)a[#a+1],o,n=e,e,n+1 end;return table.concat(a)end;local a=b('25H27425H25P27522N25P21H21M26027725H22J25X27B25W25X27422I25P26T25H25W27E22B26D27I26D27L26527425W27X25H22M25H27V25W27522M25P27K27Q27428727Y27E25H25D27525G25R27524P24Q24K24H25224X25324S24R24I25G28G27424I24K24O24G25G25E27523X24X24X25123M24G24X25G26C27524T29625125227326I26I25124K28P24G24N28S26J24M24Q24O26I25324K24Y26I24K23V25B24024H23O25324J');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local a,c=l%2,o%2 if a~=c then n=n+e end l,o,e=(l-a)/2,(o-c)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function o(o,l,e)if e then local l=(o/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(o%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local e,o,c,a=t(a,l,l+3);e=n(e,197)o=n(o,197)c=n(c,197)a=n(a,197)l=l+4;return(a*16777216)+(c*65536)+(o*256)+e;end;local function d()local o=n(t(a,l,l),197);l=l+1;return o;end;local function h()local n=e();local l=e();local c=1;local n=(o(l,1,20)*(2^32))+n;local e=o(l,21,31);local l=((-1)^o(l,32));if(e==0)then if(n==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return H(l,e-1023)*(c+(n/(2^52)));end;local f=e;local function H(o)local e;if(not o)then o=f();if(o==0)then return'';end;end;e=c(a,l,l+o-1);l=l+o;local o={}for l=1,#e do o[l]=r(n(t(c(e,l,l)),197))end return s(o);end;local l=e;local function f(...)return{...},u('#',...)end local function b()local t={0,0,0,0,0,0,0,0};local l={};local c={};local a={t,nil,l,nil,c};for o=1,e()do l[o-1]=b();end;for a=1,e()do local c=n(e(),155);local e=n(e(),17);local n=o(c,1,2);local l=o(e,1,11);local l={l,o(c,3,11),nil,nil,e};if(n==0)then l[3]=o(c,12,20);l[5]=o(c,21,29);elseif(n==1)then l[3]=o(e,12,33);elseif(n==2)then l[3]=o(e,12,32)-1048575;elseif(n==3)then l[3]=o(e,12,32)-1048575;l[5]=o(c,21,29);end;t[a]=l;end;a[4]=d();local l=e()local e={0,0,0,0};for n=1,l do local o=d();local l;if(o==3)then l=(d()~=0);elseif(o==2)then l=h();elseif(o==1)then l=H();end;e[n]=l;end;a[2]=e return a;end;local function X(l,o,h)local e=l[1];local o=l[2];local n=l[3];local l=l[4];return function(...)local r=e;local t=o;local o=n;local n=l;local s=f local e=1;local d=-1;local f={};local c={...};local a=u('#',...)-1;local l={};local o={};for l=0,a do if(l>=n)then f[l-n]=c[l+1];else o[l]=c[l+1];end;end;local l=a-n+1 local l;local a;while true do l=r[e];a=l[1];if a<=6 then if a<=2 then if a<=0 then local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](i(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;elseif a>1 then do return end;else o[l[2]]=t[l[3]];end;elseif a<=4 then if a==3 then o[l[2]]=h[t[l[3]]];else o[l[2]]=h[t[l[3]]];end;elseif a==5 then local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[t[l[5]]];else do return end;end;elseif a<=10 then if a<=8 then if a>7 then o[l[2]]();d=A;else local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](i(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a>9 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](i(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else o[l[2]]();d=A;end;elseif a<=12 then if a==11 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](i(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else local n;local u,n;local a;local c;local f;local H;local n;o[l[2]]=h[t[l[3]]];e=e+1;l=r[e];o[l[2]]=h[t[l[3]]];e=e+1;l=r[e];n=l[2];H=o[l[3]];o[n+1]=H;o[n]=H[t[l[5]]];e=e+1;l=r[e];o[l[2]]=t[l[3]];e=e+1;l=r[e];n=l[2];f={};c=0;a=n+l[3]-1;for l=n+1,a do c=c+1;f[c]=o[l];end;u,a=s(o[n](i(f,1,a-n)));a=a+n-1;c=0;for l=n,a do c=c+1;o[l]=u[c];end;d=a;e=e+1;l=r[e];n=l[2];f={};c=0;a=d;for l=n+1,a do c=c+1;f[c]=o[l];end;u={o[n](i(f,1,a-n))};a=n+l[5]-2;c=0;for l=n,a do c=c+1;o[l]=u[c];end;d=a;e=e+1;l=r[e];o[l[2]]();d=n;e=e+1;l=r[e];do return end;end;elseif a==13 then local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[t[l[5]]];else o[l[2]]=t[l[3]];end;e=e+1;end;end;end;return X(b(),{},I())();
