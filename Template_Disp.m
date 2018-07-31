% Display results
disp(' ');
disp(['Some output ', num2str(N)]);

disp(' ');disp(' ');
T = table (x', y');
T.Properties.VariableNames = {'column_1','column_2'};
T.Properties.Description = 'A table title';
disp(['  ',T.Properties.Description, ':']);
disp(' ');
feature('HotLinks',false);  % disable bold headers 
disp(T)
