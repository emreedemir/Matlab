
%Test Amaçlı girilecek değeler
%Gaz Adedine 4 giriniz
%Gazların molar ağırlıgına sırası ile 21.8600 ,6.700 ,0.3715,0.0130
%Hacim degeri için m3 cinsinden 8610 degerini giriniz
%Sonuç olarak 1 Atü çıkması beklenir

%Kullanıcıdan sistem icindeki gaz adedi istenir molar ağırlıgı hesaplamak
%için Dünyadaki sistemi hesaplamak için 4 adet girilmesi beklenir

sistemdekiGazAdedi=input("Havadaki gaz adedini giriniz");

toplamGazAgirligi=0;
donguSayisi=0

%Dünyadaki gazların normal şartlar altında hesaplanması için beklenen
%değerler sırası ile 21.8600 ,6.7000 ,0.3715 ,0.130

while donguSayisi <sistemdekiGazAdedi 
    kullaniciGirisDegeri =input("Sıradaki Gazin Molar Ağırlıgını Giriniz");
    toplamGazAgirligi =toplamGazAgirligi+kullaniciGirisDegeri;
    donguSayisi =donguSayisi+1;
end

havaAgirligi =havaAgirligiHesapla(toplamGazAgirligi);

%Kullanıcıdan hava hacim değer girisi beklenir
havaHacmi =input("Havanin hacmini giriniz")

enerji =hesaplaEnerji(havaHacmi,havaAgirligi);

%Parametre  olarak gönderilen 1 metreküp cinsinden yüzey alanını gösterir
havaninBasincDegeri =hesaplaBasinc(enerji,1);

disp("Havanın Hesaplanan Basınç Değeri "+round(havaninBasincDegeri) +" Atü");

function p=havaAgirligiHesapla(toplamGazAgirligi)
   %22.414 Normal şartlardaki gazın hacim değeridir.
    p =toplamGazAgirligi/22.414;
end

function x =hesaplaEnerji(hacim,agirlik)
    x=hacim*agirlik/10000;
end

function t =hesaplaBasinc(enerji,yuzeyAlani)
    t =enerji/yuzeyAlani
end




