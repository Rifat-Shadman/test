clear all

%4 ta sample ache
X=[
0 0 1; %x1, x2 and bias 
0 1 1; 
1 0 1;
1 1 1]
D= [  0; 0; 1; 1 ]

% 3 ta input ar ekta neuron ei jnno matrix!
W=2*rand(1,3)-1;

  for epoch=1:10000
      W=DeltaSGD(W,X,D);
  end


YY=[];
  N=4;
  for k=1:N
      x=X(k,:)'; % entire kth row
      v=W*x;
      y=Sigmoid(v)
      YY=[YY y];
end
disp('The prediction Of this network are: ')
disp(YY>.90)
