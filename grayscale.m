% specifing the filename and filename extension
contents = dir('*.jpg');
%specifying the distination file
dist ='copy-paste your destination path here';
a = 1;
for i = 1:numel(contents)
  filename = contents(i).name;
  % Open the file specified in filename, convert to gray scale
  j = imread(filename)
  k = rgb2gray(j)
  %save into distination
  imwrite(k,[dist '\' 'IMG_', num2str(a,'%d.jpg')]);
  a = a+1;
end
