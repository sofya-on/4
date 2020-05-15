## Copyright (C) 2020 nikit
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} LABA4_2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nikit <nikit@LAPTOP-F2VC9HFF>
## Created: 2020-04-12

function retval = LABA4_2 (matrix1)
  len = length(matrix1);
  if (abs(det(matrix1)) < 0.0000000000001)
    retval = "Не существует";
    return;
  else
    matrix1(1,1) = 1/matrix1(1,1);
    a1_1 = matrix1(1,1);
    for i = 1:len-1
      a2_1 = matrix1(i+1,1:i);
      a1_2 = matrix1(1:i,i+1);
      a2_2 = matrix1(i+1,i+1);
      X = a1_1*a1_2;
      Y = a2_1*a1_1;
      U = a2_2 - Y*a1_2;
      a1_1 = [a1_1 + X*(1/U)*Y, -X*(1/U);-(1/U)*Y, 1/U];
    end;
  retval = a1_1;
  endif;

endfunction
