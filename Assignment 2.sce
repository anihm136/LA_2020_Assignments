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

a = makeMatrix(3,3);

disp('Convert to U matrix:');
a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:)
a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp('The column space is:')
f=0
for i=1:3
    for j=i:3
        if a(j,i)~=0 then
            disp(b(:,i))
            f=1
            break
        end
    end
end
if  f==0 then
    disp([0 0 0])
end

b = makeMatrix(3, 3);

[m,n] = size(b)
[v,pivots] = rref(b)
r = length(pivots)
disp(r,'Rank = ')
cs = b(:,pivots)
disp(cs,'Column space = ')
rs = v(1:r,:)'
disp(rs,'Row space = ')
ns = kernel(b)
disp(ns,"Null space = ")
lns = kernel(b')
disp(lns,"Left Null space = ")
