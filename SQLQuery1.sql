
SELECT Oras, COUNT(*) AS NrBeneficiari
FROM Beneficiar
GROUP BY Oras;


select Oras , Count(*) As NrBeneficiari
From Beneficiar B
Where (SELECT COUNT(*) from Tranzactii T WHERE T.CodB = B.CodB) >= 1
GROUP BY Oras;
--C SI D 
SELECT (SELECT Nume FROM Produs P  WHERE P.CodP = O.CodP) AS NumeProdus,
    COUNT(*) AS NrOferte
FROM Oferte O
GROUP BY O.CodP;


SELECT (SELECT Nume FROM Produs P WHERE P.CodP = O.CodP) AS NumeProdus,
    AVG(O.Pret) AS PretMediu,
    SUM(O.Cantitate) AS CantitateTotala
FROM Oferte O
GROUP BY O.CodP;
-- e 
SELECT Furnizor.Nume, Beneficiar.Nume, Furnizor.Oras
FROM Furnizor, Beneficiar, Tranzactii
WHERE Furnizor.CodF = Tranzactii.CodF
  AND Beneficiar.CodB = Tranzactii.CodB
  AND Furnizor.Oras = Beneficiar.Oras;

  SELECT Furnizor.Oras, Furnizor.Nume, Beneficiar.Nume
FROM Furnizor, Beneficiar, Tranzactii
WHERE Furnizor.CodF = Tranzactii.CodF
  AND Beneficiar.CodB = Tranzactii.CodB
  AND Furnizor.Oras = Beneficiar.Oras;

  SELECT Furnizor.Oras AS OrasFurnizor, Beneficiar.Oras AS OrasBeneficiar, COUNT(*) AS NrPerechi
FROM Furnizor, Beneficiar, Tranzactii
WHERE Furnizor.CodF = Tranzactii.CodF
  AND Beneficiar.CodB = Tranzactii.CodB
GROUP BY Furnizor.Oras, Beneficiar.Oras;
