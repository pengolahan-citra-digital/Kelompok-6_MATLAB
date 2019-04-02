I = imread('E:\Citra\image\cameraman.tif');     %%% Membaca File Gambar*
r = zeros(3,3,8);                               %%% Matriks
r(:,:,1) = [-1 0 1; -2 0 2; -1  0 1];
r(:,:,2) = [ 0 1 2; -1 0 1; -2 -1 0];
r(:,:,3) = [ 1 2 1; -0 0 0; -1 -2 -1];
r(:,:,4) = [ 2 1 0; 1 0 -1; 0 -1 -2];
r(:,:,5) = [ 1 0 -1; 2 0 -2; 1 0 -1];
r(:,:,6) = [ 0 -1 -2; 1 0 -1; 2 1 0 ];
r(:,:,7) = [-1 -2 -1; 0 0 0; 1 2 1];
r(:,:,8) = [ -2 -1 0; -1 0 1; 0 1 2];
I_r =zeros(size(I,1),size (I,2), 8);    %%% Menunjukkan ukuran setiap dimensi
for i=1:8
I_r(:,:,i) = imfilter (I,r(:,:,i));     %%% Penyaringan ND untuk gambar multidimensi
end
figure                                  %%% Unutk membuat jendela baru
for j = 1:8
subplot (2,4,j), imshow (abs (I_r (:,:,j)),[]), ...
title(['Robinson mask ' , num2str(j)]);
end
I_rob = max (I_r , [],3);
figure ,imshow (I_rob,[]);               %%% Menampilkan Hasil


