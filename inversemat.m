function retval = inversemat (matrix1)
  len = length(matrix1);
  if (abs(det(matrix1)) < 0.0000000000001)
    retval = "не существует";
    return;
  else
    matrix1(1,1) = 1/matrix1(1,1);
    a1_1 = matrix1(1,1);
    for i = 1:len-1
      a2_1 = matrix1(i+1,1:i);
      a1_2 = matrix1(1:i,i+1);
      a2_2 = matrix1(i+1,i+1);
      B = a1_1*a1_2;
      C = a2_1*a1_1;
      U = a2_2 - C*a1_2;
      a1_1 = [a1_1 + B*(1/U)*C, -B*(1/U);-(1/U)*C, 1/U];
    end;
  retval = a1_1;
  endif;

endfunction
