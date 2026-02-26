
%Realize calculation which has letters

%Divide the system of linear equation into to parts 
%Left:an1x1+an2x2+an3x3+...  Right:An
%leftCoeficients "input all the coeficients in the form of matrix,like[a11 a12;a21 a22]"
%rightAnswers "input all the answers in the form of vector,like[A1;A2]: "

function CramerRule = CramerRule(leftCoeficients, rightAnswers, a, b, c)
    syms a b c %You can change it to any number of different characters based on the problem
    variableNumber = size(leftCoeficients, 2);%get the column of leftcoeficients
    variableValues = sym(zeros(variableNumber,1));%crate an empty matrix for storage of variables' values
    for k = 1:variableNumber
        numeratorMatrix = leftCoeficients;
        numeratorMatrix(:,k) = rightAnswers;
        variableValue = det(numeratorMatrix)/det(leftCoeficients);
        variableValues(k) = variableValue;
    end
    disp(variableValues);
end

