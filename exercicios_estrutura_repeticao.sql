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