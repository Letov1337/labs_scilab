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
zer_mas = zeros(1,200);
function y=mat_ozid_select(x)
    //мат ожидание теор
    if(x == 0)
        y = sum_z/500
    //мат ожидание
    elseif(x == 1)
    y = M;
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
    nu_0 = (summa_rand - 12/2)/(sqrt(12/2));
    nu = 5.1 * nu_0 + 10.4;
    zer_mas(i) = nu;
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
//Ню=10,4 и Сигма=5,1 вариант 31
//вариант 34 биномиальное распределение
//Мат ожидание теор
mat_ozi_theor = 10.4
mprintf("Мат.ожидание теор: %f\n",mat_ozi_theor);
//Мат ожидание
mat_ozi = (summa_time/500)
mprintf("Мат.ожидание: %f\n",mat_ozi);
if ((summa_time/500) > 9.7 & (summa_time/500) < 10.7) then
    mprintf("Все хорошо\n");
elseif ((summa_time/500) > 7.5 & (summa_time/500) < 9.5) then
    mprintf("Что-то не так!\n");
end 
    
mprintf("-------------------------------------------\n")

//Частоты
f1 = (t1/summa_time);
f2 = (t2/summa_time);
f3 = (t3/summa_time);
printf('Частоты: |%f|%f|%f|\n',f1,f2,f3);
// Частоты теор.
f1_t = ((0.23 * 500)/(mat_ozi_theor*500));
f2_t = ((0.39 * 500)/(mat_ozi_theor*500));
f3_t = ((0.38 * 500)/(mat_ozi_theor*500));
mprintf("-------------------------------------------\n")
printf('Частоты теор: |%f|%f|%f|\n',f1_t,f2_t,f3_t);
mprintf("-------------------------------------------\n")
mprintf("-------------------------------------------\n")
mprintf("---вариант 34 биномиальное распределение---\n")
mprintf("---n=90|||p=0.43---\n");
i = 1;
P1 = 0; // левая граница интервала
P2 = 0; // правая граница интервала
M = 90*0.43 
sum_z = 0; 
z = 0; 
j = 2; // счетчик начало
z_array = zeros(1,500); 
b = 0; 
// функция
function y=mat_ozid_select(x)
    //мат ожидание теор
    if(x == 0)
        y = sum_z/500;
    //мат ожидание
    elseif(x == 1)
    y = M;
  end;
endfunction
// открытие файла
fd = mopen('C:\Users\de56\Desktop\МИС\Лабы_SCILAB\output\lab1_part2.txt','wt');
//вывод таблицы
k = 2;
while (k <= 90)
        C=0;
    C=factorial(90)/(factorial(k)*factorial(90-k)); 
    select k
    case 2
        
        P1 = C * 0.43^(k-1)*(1-0.43)^(90-(k-1)); 
        P2= P1 + C * 0.43^k*(1-0.43)^(90-k);
        //mprintf("p1 = %f\n",P1);
        //mprintf("p2 = %f\n",P2);  
        mprintf("%i       p1 = %f\n",k - 1,P1);
        mprintf("%i       p2 = %f\n",k,P2);
    else
        P1 = P2;
        P2=P1+C * 0.43^k*(1-0.43)^(90-k);
        mprintf("%i       p%i = %f\n",k,k,P2);
        //mprintf("p2 = %f\n",P2);
end;
    k = k + 1;
end;
// 

while (j<=501)
    r = rand(); 
    k = 2; 
    b = b + 1; 
    while (k <= 90)
        C=0;
    C=factorial(90)/(factorial(k)*factorial(90-k)); 
    select k
    case 2
        P1 = C * 0.43^(k-1)*(1-0.43)^(90-(k-1)); 
        P2= P1 + C * 0.43^k*(1-0.43)^(90-k);
        //mprintf("p1 = %f\n",P1);
        //mprintf("p2 = %f\n",P2);  
    else
        P1 = P2;
        P2=P1+C * 0.43^k*(1-0.43)^(90-k);
        //mprintf("p2 = %f\n",P2);
end;
if (r>=P1 & r<P2 )
    z = k - 1 + (r-P1)/(P2-P1);
    break;
    end;
    k = k + 1;
end;
z = int(z);
sum_z = sum_z + z;
z_array(1,j-1) = z;
    printf("%i. Длинна сообщения = %i\n",j-1,z);
    mfprintf(fd,"%i. Длинна сообщения = %i\n",j-1,z);
    j = j + 1;
end;
sum_otklonenie = 0;
l = 1;
mat_ozidanie = sum_z/500;
while(l <= 500)
    sum_otklonenie = sum_otklonenie + (z_array(1,l) - mat_ozidanie)^2;
    l = l + 1;
end


printf("\nСреднее квадратичное отклонение теория:%f\n",sqrt(M*(1-0.43)));
mfprintf(fd,"\nСреднее квадратичное отклонение практика:%f\n",sqrt(M*(1-0.43)));
printf("Среднее квадратичное практика:%f\n",sqrt(sum_otklonenie/500)); //good 
mfprintf(fd,"Среднее квадратичное теория:%f\n",sqrt(sum_otklonenie/500));
printf("Теория дисперсия %f\n",M*(1-0.43)); // good
mfprintf(fd,"Теория дисперсия %f\n",M*(1-0.43));
printf("Практика дисперсия %f\n",sum_otklonenie/500);
mfprintf(fd,"Практика дисперсия %f\n",sum_otklonenie/500);
printf("Практическое мат.ожидание:%f\n",mat_ozid_select(0)); // good
mfprintf(fd,"Практическое мат.ожидание:%f\n",mat_ozid_select(0)); // good
printf("Теоритическое мат.ожидание:%f\n",mat_ozid_select(1));
mfprintf(fd,"Теоритическое мат.ожидание:%f\n",mat_ozid_select(1));
mprintf("-------------------------------------------\n")
mprintf("-------------------------------------------\n")
mprintf("---вариант 36  --- задача 3 ---\n")
z_array = gsort(z_array, 'g', 'i');
k = 1 + int(3.2*log2(500)); // к - количество интервалов, 90 страница
R = z_array(500) - z_array(1); // размах
h = R/k; // длина одного интервала
low_border = 0; // левая граница интервала
high_border = 0; // правая граница интервала
inter_mid = 0; // середина интервала
j = 1;
freq_inter = 0;
while j <= k
    select j 
    case 1 
    low_border = z_array(1) - h/2; 
    high_border = low_border + h;
    case 500
    low_border = high_border;
    high_border  = low_border + h + h/2;
    else
    low_border = high_border;
    high_border = low_border + h;
    end
    inter_mid = low_border + h/2;
    inter_Count = 0;
    i = 1;
    while i <= 500
        if z_array(i) >= low_border & z_array(i) < high_border then // если z попала в интервал, то прибавляем
            // количество попадай (inter_Count)
           inter_Count = inter_Count + 1;
        end
        i = i + 1;
    end  
    freq_inter = freq_inter + inter_Count/500; // частотность (для импирической функции распределения)
    Gist = (inter_Count/500)/h; // частоность (вверхняя накапливается, это не накапливается)
    // для гистограмы (Gist)
    
    Gist_arr(j) = Gist; // занос в массив (для красоты)
    mid_arr(j) = inter_mid;
    freq_arr(j) = freq_inter; 
    
    scf(0);
    plot2d3(inter_mid, freq_inter);
    xtitle("Эмпирическая функция распределения");
    
    scf(1);
    plot2d3(inter_mid, Gist);
    xtitle("Гистограмма");
    
  mfprintf(fd, '\nИнтервал №%i  Нижняя граница: %f  Верхняя граница: %f  Середина интервала: %f \n Кол-во попаданий: %i  Частотность: %f', j, low_border, high_border, inter_mid, inter_Count, freq_inter);
    j = j + 1;
end
mclose(fd);
    scf(0);
    plot2d2(mid_arr, freq_arr);

    scf(1);
    plot2d2(mid_arr, Gist_arr);
