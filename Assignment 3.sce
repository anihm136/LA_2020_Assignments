n = input('Enter the number of equations:')

for i=1:n
    for j=1:2
        message = "Enter the element at [" + string(i) + "," + string(j) +"]"
        a(i,j) = input(message) 
    end
end
disp(a)

for i=1:n
    b(i) = input("Enter the values:")
end
disp(b)

x=(a'*a)\(a'*b)
disp(x)
C=x(1,1)
D=x(2,1)
disp(C,'C=')
disp(D,'D=')
disp("the best line fit is " + string(b) + " = " + string(C) + " + " + string(D) + "t")
