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

