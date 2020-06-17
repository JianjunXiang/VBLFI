function Y=size8cut(X) 
  [m,n] = size(X);
  if mod(m,8)~=0
      X=X(1:m-mod(m,8),:);
  end
  if mod(n,8)~=0
      X=X(:,1:n-mod(n,8));
  end
  Y=X;
end