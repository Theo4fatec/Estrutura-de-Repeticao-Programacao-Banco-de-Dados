-- Active: 1727015344955@@127.0.0.1@5432@20242_fatec_ipi_pbdi_theo@public

--Exercicio 1.1 - Even Numbers com LOOP
DO
$$
DECLARE
    contador INT := 0;
BEGIN
    LOOP
        contador := contador + 1;
        CONTINUE WHEN contador % 2 <> 0;
            RAISE NOTICE '%', contador;
            EXIT WHEN contador >= 100;
    END LOOP;
END;
$$

--Exercicio 1.1 - Even Numbers com WHILE
DO
$$
DECLARE
    contador INT := 0;
BEGIN
    WHILE contador <=100 LOOP
        contador := contador + 1;
        IF contador % 2 = 0 THEN
            RAISE NOTICE '%', contador;
        END IF;
    END LOOP;
END;
$$

--Exercicio 1.1 - Even Numbers com FOR
DO
$$
BEGIN
    FOR i IN 1..100 LOOP
        CONTINUE WHEN i % 2 <> 0;
            RAISE NOTICE '%', i;
    END LOOP;
END;
$$

--Exercicio 1.1 - Even Numbers com FOREACH
DO
$$
DECLARE
    lista_contador INT[] := ARRAY[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100];
    contador INT;
BEGIN
    FOREACH contador IN ARRAY lista_contador LOOP
        CONTINUE WHEN contador % 2 <> 0;
            RAISE NOTICE '%', contador;
    END LOOP;
END;
$$

--Exercicio 1.1 - Positive Numbers com LOOP
DO
$$
DECLARE
    numero1 INT;
    numero2 INT;
    numero3 INT;
    numero4 INT;
    numero5 INT;
    numero6 INT;
    contador1 INT := 0;
    contador2 INT := 0;
    contador3 INT := 0;
    contador4 INT := 0;
    contador5 INT := 0;
    contador6 INT := 0;
    contador_final INT;
BEGIN
    LOOP
        numero1 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero1 <> 0;
    END LOOP;
    LOOP
        numero2 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero2 <> 0;
    END LOOP;
    LOOP
        numero3 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero3 <> 0;
    END LOOP;
    LOOP
        numero4 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero4 <> 0;
    END LOOP;
    LOOP
        numero5 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero5 <> 0;
    END LOOP;
    LOOP
        numero6 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero6 <> 0;
    END LOOP;

    IF numero1 > 0 THEN
        contador1 := contador1 + 1;
    END IF;
    IF numero2 > 0 THEN
        contador2 := contador2 + 1;
    END IF;
    IF numero3 > 0 THEN
        contador3 := contador3 + 1;
    END IF;
    IF numero4 > 0 THEN
        contador4 := contador4 + 1;
    END IF;
    IF numero5 > 0 THEN
        contador5 := contador5 + 1;
    END IF;
    IF numero6 > 0 THEN
        contador6 := contador6 + 1;
    END IF;

    contador_final := contador1 + contador2 + contador3 + contador4 + contador5 + contador6;

    RAISE NOTICE '%', numero1;
    RAISE NOTICE '%', numero2;
    RAISE NOTICE '%', numero3;
    RAISE NOTICE '%', numero4;
    RAISE NOTICE '%', numero5;
    RAISE NOTICE '%', numero6;
    RAISE NOTICE '';
    RAISE NOTICE '% valores positivos',contador_final;
END;
$$

--Exercicio 1.1 - Positive Numbers com WHILE
DO
$$
DECLARE
    numero1 INT := 0;
    numero2 INT := 0;
    numero3 INT := 0;
    numero4 INT := 0;
    numero5 INT := 0;
    numero6 INT := 0;
    contador1 INT := 0;
    contador2 INT := 0;
    contador3 INT := 0;
    contador4 INT := 0;
    contador5 INT := 0;
    contador6 INT := 0;
    contador_final INT;
BEGIN
    WHILE numero1 = 0 LOOP
        numero1 := valor_aleatorio_entre(-50,50);
    END LOOP;
    WHILE numero2 = 0 LOOP
        numero2 := valor_aleatorio_entre(-50,50);
    END LOOP;
    WHILE numero3 = 0 LOOP
        numero3 := valor_aleatorio_entre(-50,50);
    END LOOP;
    WHILE numero4 = 0 LOOP
        numero4 := valor_aleatorio_entre(-50,50);
    END LOOP;
    WHILE numero5 = 0 LOOP
        numero5 := valor_aleatorio_entre(-50,50);
    END LOOP;
    WHILE numero6 = 0 LOOP
        numero6 := valor_aleatorio_entre(-50,50);
    END LOOP;

    IF numero1 > 0 THEN
        contador1:= contador1 + 1;
    END IF;
    IF numero2 > 0 THEN
        contador2 := contador2 + 1;
    END IF;
    IF numero3 > 0 THEN
        contador3 := contador3 + 1;
    END IF;
    IF numero4 > 0 THEN
        contador4:= contador4 + 1;
    END IF;
    IF numero5 > 0 THEN
        contador5:= contador5 + 1;
    END IF;
    IF numero6 > 0 THEN
        contador6 := contador6 + 1;
    END IF;

    contador_final := contador1 + contador2 + contador3 + contador4 + contador5 + contador6;
    
    RAISE NOTICE '%', numero1;
    RAISE NOTICE '%', numero2;
    RAISE NOTICE '%', numero3;
    RAISE NOTICE '%', numero4;
    RAISE NOTICE '%', numero5;
    RAISE NOTICE '%', numero6;
    RAISE NOTICE '';
    RAISE NOTICE '% valores positivos', contador_final;
END;
$$

--Exercicio 1.1 - Positive Numbers com FOR
DO
$$
DECLARE
    numero1 INT;
    numero2 INT;
    numero3 INT;
    numero4 INT;
    numero5 INT;
    numero6 INT;
    contador1 INT := 0;
    contador2 INT := 0;
    contador3 INT := 0;
    contador4 INT := 0;
    contador5 INT := 0;
    contador6 INT := 0;
    contador_final INT;
BEGIN
    FOR i IN 1..100 LOOP
        numero1:= valor_aleatorio_entre(-50,50);
        EXIT WHEN numero1 <> 0;
    END LOOP;
    FOR i IN 1..100 LOOP
        numero2 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero2 <> 0;
    END LOOP;
    FOR i IN 1..100 LOOP
        numero3 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero3 <> 0;
    END LOOP;
    FOR i IN 1..100 LOOP
        numero4:= valor_aleatorio_entre(-50,50);
        EXIT WHEN numero4 <> 0;
    END LOOP;
    FOR i IN 1..100 LOOP
        numero5 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero5 <> 0;
    END LOOP;
    FOR i IN 1..100 LOOP
        numero6 := valor_aleatorio_entre(-50,50);
        EXIT WHEN numero6 <> 0;
    END LOOP;

    IF numero1 > 0 THEN
        contador1 :=contador1 + 1;
    END IF;
    IF numero2 > 0 THEN
        contador2 := contador2 + 1;
    END IF;
    IF numero3 > 0 THEN
        contador3 :=contador3 + 1;
    END IF;
    IF numero4 > 0 THEN
        contador4 :=contador4 + 1;
    END IF;
    IF numero5 > 0 THEN
        contador5 := contador5 + 1;
    END IF;
    IF numero6 > 0 THEN
        contador6 := contador6 + 1;
    END IF;
    
    contador_final := contador1 + contador2 + contador3 + contador4 + contador5 + contador6;

    RAISE NOTICE '%', numero1;
    RAISE NOTICE '%', numero2;
    RAISE NOTICE '%', numero3;
    RAISE NOTICE '%', numero4;
    RAISE NOTICE '%', numero5;
    RAISE NOTICE '%', numero6;
    RAISE NOTICE '';
    RAISE NOTICE '% valores positivos', contador_final;
END;
$$

--Exercicio 1.1 - Positive Numbers com FOREACH
DO
$$
DECLARE
    todos_numeros INT[] := ARRAY[
        valor_aleatorio_entre(-50, 50),
        valor_aleatorio_entre(-50, 50), 
        valor_aleatorio_entre(-50, 50), 
        valor_aleatorio_entre(-50, 50), 
        valor_aleatorio_entre(-50, 50), 
        valor_aleatorio_entre(-50, 50)
    ];
    numero INT;
    contador INT := 0;

BEGIN
    FOREACH numero IN ARRAY todos_numeros LOOP
        IF numero > 0 THEN
        contador := contador + 1;
        END IF;

    END LOOP;
    RAISE NOTICE '%', todos_numeros;
    RAISE NOTICE '';
    RAISE NOTICE '% valores positivos', contador;

END;
$$

--Exercicio 1.1 - Sum of Consecutive Odd Numbers I com LOOP
DO
$$
DECLARE
    numero1 INT := valor_aleatorio_entre(20,50);
    numero2 INT := valor_aleatorio_entre(20,50);
    contador INT;
    soma INT := 0;
BEGIN
    IF numero1 > numero2 THEN
        contador := numero2;
        LOOP
            contador := contador + 1;
            IF contador % 2 <> 0 THEN
                soma = soma + contador;
            END IF;
            EXIT WHEN contador >= numero1 -1;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSEIF numero2 > numero1 THEN
        contador := numero1;
        LOOP
            contador := contador + 1;
            IF contador % 2 <> 0 THEN
                soma = soma + contador;
            END IF;
            EXIT WHEN contador >= numero2 - 1;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSE
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;

    END IF;
END;
$$

--Exercicio 1.1 - Sum of Consecutive Odd Numbers I com WHILE
DO
$$
DECLARE
    numero1 INT := valor_aleatorio_entre(20,50);
    numero2 INT := valor_aleatorio_entre(20,50);
    contador INT;
    soma INT := 0;
BEGIN
    IF numero1 > numero2 THEN
        contador := numero2;
        WHILE contador < numero1 -1 LOOP
            contador :=contador + 1;
            IF contador % 2 <> 0 THEN
                soma := soma + contador;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSEIF numero2 > numero1 THEN
        contador := numero1;
        WHILE contador < numero2 - 1 LOOP
            contador := contador + 1;
            IF contador % 2 <> 0 THEN
                soma := soma + contador;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSE
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;

    END IF;
END;
$$

--Exercicio 1.1 - Sum of Consecutive Odd Numbers I com FOR
DO
$$
DECLARE
    numero1 INT := valor_aleatorio_entre(20,50);
    numero2 INT := valor_aleatorio_Entre(20,50);
    soma INT := 0;
BEGIN
    IF numero1 > numero2 THEN
        FOR i IN numero2 + 1..numero1 - 1 LOOP
            IF i % 2 <> 0 THEN
                soma = soma + i;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSEIF numero2 > numero1 THEN
        FOR i IN numero1 + 1..numero2 -1 LOOP
            IF i % 2 <> 0 THEN
                soma = soma + i;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSE
        RAISE NOTICE '%', numero1;
        RAISE NOTICE '%', numero2;
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;

    END IF;
END;
$$

--Exercicio 1.1 - Sum of Consecutive Odd Numbers I com FOREACH
DO
$$
DECLARE
    numeros INT [] := ARRAY[
        valor_aleatorio_entre(20,50),
        valor_aleatorio_entre(20,50)
    ];
    numero INT;
    soma INT := 0;
    diferenca INT[];
BEGIN
    IF numeros[1] > numeros[2] THEN
        diferenca := ARRAY(SELECT generate_series(numeros[2] + 1, numeros[1] - 1));
        FOREACH numero IN ARRAY diferenca LOOP
            IF numero % 2 <> 0 THEN
                soma = soma + numero;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numeros[1];
        RAISE NOTICE '%', numeros[2];
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;
    ELSEIF numeros[2] > numeros[1] THEN
        diferenca := ARRAY(SELECT generate_series(numeros[1] + 1, numeros[2] - 1));
        FOREACH numero IN ARRAY diferenca LOOP
            IF numero % 2 <> 0 THEN
                soma = soma + numero;
            END IF;
        END LOOP;
        RAISE NOTICE '%', numeros[1];
        RAISE NOTICE '%', numeros[2];
        RAISE NOTICE ''; 
        RAISE NOTICE '%', soma;
    ELSE
        RAISE NOTICE '%', numeros[1];
        RAISE NOTICE '%', numeros[2];
        RAISE NOTICE '';
        RAISE NOTICE '%', soma;

    END IF;
END;
$$

--Exercicio 1.1 - Sequence of Numbers and Sum com LOOP
DO
$$
DECLARE
    m INT := valor_aleatorio_entre(1, 100);
    n INT := valor_aleatorio_entre(1, 100);
    contador INT;
    soma INT :=0;
    resultado_linha VARCHAR(450) := '';
BEGIN
    IF m > n THEN
        contador := n;
        LOOP
            resultado_linha := resultado_linha ||contador|| ' ';
            soma := soma + contador;
            contador := contador + 1;
            EXIT WHEN contador > m;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSEIF n > m THEN
        contador := m;
        LOOP
            resultado_linha := resultado_linha ||contador|| ' ';
            soma := soma + contador;
            contador := contador + 1;
            EXIT WHEN contador >  n;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSE
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', m, m;
    END IF;
END;
$$

--Exercicio 1.1 - Sequence of Numbers and Sum com WHILE
DO
$$
DECLARE
    m INT := valor_aleatorio_entre(1, 100);
    n INT := valor_aleatorio_entre(1, 100);
    contador INT;
    soma INT := 0;
    resultado_linha VARCHAR(450) := ''; 
BEGIN
    IF m > n THEN
        contador := n;
        WHILE contador <=m LOOP
            resultado_linha := resultado_linha ||contador|| ' ';
            soma := soma + contador;
            contador := contador + 1;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSEIF n > m THEN
        contador := m;
        WHILE contador <= n LOOP
            resultado_linha := resultado_linha ||contador|| ' ';
            soma := soma + contador;
            contador := contador + 1;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma; 
    ELSE
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', m, m;
    END IF;
END;
$$

--Exercicio 1.1 - Sequence of Numbers and Sum com FOR
DO
$$
DECLARE
    m INT := valor_aleatorio_entre(1, 100);
    n INT := valor_aleatorio_entre(1, 100);
    soma INT := 0;
    resultado_linha VARCHAR(450) := '';
BEGIN
    IF m > n THEN
        FOR i IN n..m LOOP
            resultado_linha := resultado_linha || i || ' ';
            soma := soma + i;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSEIF n > m THEN
        FOR i IN m..n LOOP
            resultado_linha := resultado_linha || i || ' ';
            soma := soma + i;
        END LOOP;
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSE
        RAISE NOTICE 'm = %', m;
        RAISE NOTICE 'n = %', n;
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', m, m;
    END IF;
END;
$$

--Exercicio 1.1 - Sequence of Numbers and Sum com FOREACH
DO
$$
DECLARE
    numeros_m_n INT [] := ARRAY [
        valor_aleatorio_entre(1, 100),
        valor_aleatorio_entre(1, 100)
    ];
    numero INT;
    soma INT := 0;
    diferenca INT[];
    resultado_linha VARCHAR(450) := '';
BEGIN
    IF numeros_m_n[1] > numeros_m_n[2] THEN
        diferenca := ARRAY(SELECT generate_series(numeros_m_n[2], numeros_m_n[1]));
        FOREACH numero IN ARRAY diferenca LOOP
            resultado_linha := resultado_linha ||numero|| ' ';
            soma = soma + numero;
        END LOOP;
        RAISE NOTICE 'm = %', numeros_m_n[1];
        RAISE NOTICE 'n = %', numeros_m_n[2];
        RAISE NOTICE '';
        RAISE NOTICE '% SUM =  %', resultado_linha, soma;
    ELSEIF numeros_m_n[2] > numeros_m_n[1] THEN
        diferenca := ARRAY(SELECT generate_series(numeros_m_n[1], numeros_m_n[2]));
        FOREACH numero IN ARRAY diferenca LOOP
            resultado_linha := resultado_linha ||numero|| ' ';
            soma = soma + numero;
        END LOOP;
        RAISE NOTICE 'm = %', numeros_m_n[1];
        RAISE NOTICE 'n = %', numeros_m_n[2];
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', resultado_linha, soma;
    ELSE
        RAISE NOTICE 'm = %', numeros_m_n[1];
        RAISE NOTICE 'n = %', numeros_m_n[2];
        RAISE NOTICE '';
        RAISE NOTICE '% SUM = %', numeros_m_n[1], numeros_m_n[1];
    END IF;
END;
$$