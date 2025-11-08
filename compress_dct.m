function [compressed_img, num_coeffs] = compress_dct(dct_img, energia_total, percentual)
    energia_alvo = percentual * energia_total; % Energia desejada
    dct_sorted = sort(abs(dct_img(:)), 'descend'); % Ordenar coeficientes por magnitude
    energia_acumulada = cumsum(dct_sorted.^2); % Energia acumulada
    num_coeffs = find(energia_acumulada >= energia_alvo, 1); % Encontrar número de coeficientes necessários
    threshold = dct_sorted(num_coeffs); % Determinar o limiar
    compressed_img = dct_img .* (abs(dct_img) >= threshold); % Manter apenas coeficientes necessários
end