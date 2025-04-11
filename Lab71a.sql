SELECT B.Nume, ISNULL(COUNT(C.CodP), 0) AS NumarCereri
FROM Beneficiar B
LEFT JOIN Cerere C ON B.CodB = C.CodB
GROUP BY B.Nume;
