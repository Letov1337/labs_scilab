t1 = 0;
t2 = 0;
t3 = 0;
//lymbda = 0.33;
time_mass = 0;
summa_time = 0;
f1 = 0;
f2 = 0;
f3 = 0;
f1_t = 0;
f2_t = 0;
f3_t = 0;
function y=mat_ozid_select(x)
    //мат ожидание теор
    if(x == 0)
        y = (1/0.33);
    //мат ожидание
    elseif(x == 1)
    y = (summa_time/500);
  end;
endfunction
//fd = mopen('C:\Users\Student\Desktop\1.txt','w');
for i = 1 : 500
    summa_rand = 0;
    x=rand();
    for j = 1:12
        r = rand();
        summa_rand = summa_rand + r; 
    end;
    nu_0 = summa_rand - 6;
    nu = 5.1 * nu_0 + 10.4;
    summa_time = summa_time + nu;
    t=0;
    if(x>=0 & x < 0.23)
        t=1;
        else if(x>=0.23 & x < 0.62),
            t=2;
            else if(x>=0.62 & x < 1.0),
                t=3;    
                
    end;
end;
mprintf("время: %1.2f\n",nu)
end;
    select t,
    case 1 then
        t1= t1+1;
        mprintf("Сообщение к первому типу: %f \n",x)
    case 2 then
        t2 = t2+1;
        mprintf("Сообщение к второму типу: %f \n",x)
    case 3 then
        t3= t3+1;
        mprintf("Сообщение к третьему типу: %f \n",x)
       
end;
end
mprintf("-------------------------------------------\n")
mprintf("Количество сообщений к первому типу: %d\n",t1)
mprintf("Количество сообщений к второму типу: %d\n",t2)
mprintf("Количество сообщений к третьему типу: %d\n",t3)
mprintf("-------------------------------------------\n")
mprintf("Вероятность появлений сообщений к первому типу: %f\n",t1/500)
mprintf("Вероятность появлений сообщений к второму типу: %f\n",t2/500)
mprintf("Вероятность появлений сообщений к третьему типу: %f\n",t3/500)
mprintf("-------------------------------------------\n")
//Ню=10,4 и Сигма=5,1

//Мат ожидание теор
mat_ozi_theor = (1/0.33)
mprintf("Мат.ожидание теор: %f\n",mat_ozi_theor);
//Мат ожидание
mat_ozi = (summa_time/500)
mprintf("Мат.ожидание: %f\n",mat_ozi);
if ((summa_time/500) > 9.7 & (summa_time/500) < 10.7) then
    mprintf("Все норм\n");
elseif ((summa_time/800) > 7.5 & (summa_time/500) < 9.5) then
    mprintf("Что-то не так!\n");
end 
    
mprintf("-------------------------------------------\n")

//Частоты
f1 = (t1/sumtime);
f2 = (t2/sumtime);
f3 = (t3/sumtime);
printf('Частоты: |%f|%f|%f|\n',f1,f2,f3);
// Частоты теор.
f1_t = ((0.23 * 500)/(mat_ozi_theor*400));
f2_t = ((0.39 * 500)/(mat_ozi_theor*400));
f3_t = ((0.38 * 500)/(mat_ozi_theor*400));
printf('Частоты теор: |%f|%f|%f|\n',f1_t,f2_t,f3_t);
