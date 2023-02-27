w = rand(2, 2);
dw = zeros(2, 2);
xlim([0 3]);
ylim([0 3]);
eta = 0.1;
fi = zeros(2, 2);
dfi = zeros(1, 2);
t = 0;
x = zeros(2, 1);
y = zeros(2, 1);
v = zeros(2, 1);
RMSE = 1.2;
fi(1, :) = 0.0001;
fi(2, :) = 0.0001;
t = 0;
j = 0;
e = [];
cont = [];
r = 0;
numiter = input('Ingrese el numero de iteraciones: ');

while RMSE > 0.01
    for i = 1:100
        if rand > 0.5
            x(1) = rand;
            x(2) = 2 + rand;
            plot(x(1), x(2), 'go');
        else
            x(1) = 2 + rand;
            x(2) = rand;
            plot(x(1), x(2), 'gx');
        end
        hold on
        v = w * x;
        j = j + 1;
        if v(1) > v(2)
            dfi = eta * y(2) * fi(2, :) - fi(1, :);
            fi(1, :) = dfi + fi(1, :);
        else
            dfi = -eta * y(2) * fi(2, :) - fi(1, :);
            fi(2, :) = dfi + fi(2, :);
        end
        v = (w * x) + (fi .* y);
        if v(1) > v(2)
            y(1) = 1;
            y(2) = 0;
            dw(1, :) = eta * (x - w(1, :)');
            dw(2, :) = [0, 0];
        else
            y(1) = 0;
            y(2) = 1;
            dw(2, :) = eta * (x - w(2, :)');
            dw(1, :) = [0, 0];
        end
        line([w(1, 1), w(1, 1) + dw(1, 1)], [w(1, 2), w(1, 2) + dw(1, 2)]);
        line([w(2, 1), w(2, 1) + dw(2, 1)], [w(2, 2), w(2, 2) + dw(2, 2)]);
        RMSE = sqrt(mean(((w(1, 1) + w(1, 2)) - (w(2, 1) + w(2, 2))).^2));
        e(j) = RMSE;
        cont(j) = j;
        if RMSE > 1.3
            w = rand(2, 2);
            delete(gca);
        end
        w = w + dw;
    end
    r = r + 1;
    if r == numiter
        break
    end
end
plot(w(1, 1), w(1, 2), 'X');
plot(w(2, 1), w(2, 2), 'O');
figure;
plot(cont, e);


 
 
 
 

 
