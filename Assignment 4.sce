function m=makeMatrix(r, c)
// Creates a matrix from user input and returns it
  m = zeros(r, c)
  for i = 1:r
    for j = 1:c
      message = "Enter the element at [" + string(i) + "," + string(j) +"]"
      m(i,j) = input(message)
    end
  end
endfunction

clc; close(); clear;
X = makeMatrix(3,3);
[c,d]=spec(X);
disp(spec(X),"The Eigen-values of matrix X are:");
disp(c,"The Eigen-vectors of matrix X is:");

clear; close; clc;
a = makeMatrix(3,3)
disp(a,'A = ')
[m,n] = size(a)
for k=1:n
    V(:,k) = a(:,k)
    for j=1:k-1
        R(j,k) = V(:,j)'*a(:,k)
        V(:,k) = V(:,k) - R(j,k)*V(:,j)
    end
    R(k,k) = norm(V(:,k))
    V(:,k) = V(:,k)/R(k,k)
end
disp(V,'Q = ')

clear; clc; close();
b = makeMatrix(3,3)
disp(b,'B = ')
u0 = [1 1 1]';
disp(u0,'The initial vector is')
v = b*u0
b1 = max(u0)
disp(b,'First approximation to eigen value is ')
while abs(max(v)-b1)>0.002
    disp(v,'current eigen vector is')
    b1 = max(v)
    disp(b1,'Current eigen value is')
    u0 = v/max(v)
    v = b*u0
end
format('v',4)
disp(max(v),'The largest eigen value is: ')
format('v',5)
disp(u0,'The corresponding eigen vector is: ')
