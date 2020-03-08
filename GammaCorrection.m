x=191;
%Checker board fundamental unit
c=[255, 255, 0,0 ; 255, 255, 0, 0; 0,0,255,255; 0,0,255,255];
%figure, imagesc(c); colormap(gray);

%16x256
check=repmat(c, 4, 64);
%figure, imagesc(check); colormap(gray);


col=x;
graystripe=zeros(16,256);
%clear cat
for i=1 : 16
for j=1 : 256
graystripe(i,j)=col;
end
end
%figure, imagesc(graystripe); colormap(gray);

%concatnate gray strip and checker board
A=check;
B=graystripe;
f=cat(1, A, B);
%figure, imagesc(f); colormap(gray);


final = repmat(f, 8, 1);
figure, imagesc(final); colormap(gray);




linear = imread('linear.tif');
figure, imagesc(linear); colormap(gray);
[rows, cols]=size(linear);
z=zeros(rows, cols);
for w=1:rows
    for q=1:cols
     
        m=double(linear(w,q));
        z(w,q)=255.* (m/255).^(1/2.4);
    end
end
figure, imagesc(z); colormap(gray);