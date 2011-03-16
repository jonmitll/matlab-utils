function mlines = countmlines(filename)
%COUNTMLINES Count code lines in an M file
%   The function takes a filename as an argument and returns a count of the
%   number of lines of code, excluding white space and comments.

mlines = 0;
f = fopen([dirname '/' filename]);
if f ~= -1
  mline = fgets(f);
  while ischar(mline)
    if ~isempty(regexp(mline, '\w+', 'once'))
      mlines = mlines + 1;
    end
    mline = fgets(f);
  end
  fclose(f);
end

end

