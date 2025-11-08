function h = spectrumAnalyzermod(signal,fs,o,tamanho)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N_fft = 2^nextpow2(length(signal));

frequency = fs*linspace(-0.5,0.5,N_fft);

signal_fft = fft(signal,N_fft);



if o == 1 
 figure;
end

set(gcf,'position',[0 0 tamanho 600]);

h=plot(frequency,fftshift(abs(signal_fft)),'linewidth',2);

xlabel('Frequência (em Hz)','fontname','times new roman','fontsize',20);
ylabel('Magnitude','fontname','times new roman','fontsize',20);

set(gca,'fontname','times new roman','fontsize',20);

end