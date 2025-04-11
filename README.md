## 1. Valoarea NULL
- Reprezintă o valoare necunoscută.
- Nu este echivalentă cu 0 sau șirul gol.
- Două valori NULL nu sunt egale între ele: `NULL ≠ NULL`.

## 2. Testarea valorilor NULL
- `IS NULL`: Verifică dacă o valoare este NULL.
- `IS NOT NULL`: Verifică dacă o valoare NU este NULL.

## 3. Funcția `ISNULL(expr, valoare_inlocuire)`
```sql
SELECT ISNULL(Cantitate, 0) FROM Oferte;
4. Funcții de agregare și NULL
COUNT(col): Numără doar valorile non-NULL.

COUNT(*): Numără toate rândurile.

SUM, AVG, MIN, MAX: Ignoră valorile NULL.

5. Operatorii logici și NULL
TRUE AND NULL → UNKNOWN

FALSE OR NULL → UNKNOWN

NOT NULL → UNKNOWN

6. Tipuri de JOIN
LEFT JOIN
Afișează toate rândurile din tabela din stânga, completate cu date din dreapta (sau NULL dacă nu există potrivire).

sql
Copy
SELECT * FROM Furnizor LEFT JOIN Oferte ON Furnizor.CodF = Oferte.CodF;
RIGHT JOIN
Afișează toate rândurile din tabela din dreapta.

FULL JOIN
Combină LEFT și RIGHT JOIN.

7. GROUP BY + JOIN
sql
Copy
SELECT Nume, COUNT(CodP) 
FROM Furnizor 
LEFT JOIN Oferte ON Furnizor.CodF = Oferte.CodF 
GROUP BY Nume;
8. Subinterogări corelate
sql
Copy
SELECT Nume,
  (SELECT COUNT(*) FROM Oferte WHERE Oferte.CodF = Furnizor.CodF) AS NrOferte
FROM Furnizor;
9. UNION
sql
Copy
SELECT Oras FROM Furnizor
UNION
SELECT Oras FROM Beneficiar;
Structura bazei de date bd1
Tabele și coloane:
Beneficiar

CodB (int, auto-increment, NOT NULL)

Nume (varchar(50), NOT NULL)

Oras (varchar(50), NULL)

Furnizor

CodF (int, auto-increment, NOT NULL)

Nume (varchar(50), NOT NULL)

Oras (varchar(50), NULL)

Produs

CodP (int, auto-increment, NOT NULL)

Nume (varchar(50), NOT NULL)

UM (varchar(50), NULL)

Oferte

CodF (int, NOT NULL)

CodP (int, NOT NULL)

Pret (money, NULL)

Cantitate (int, NULL)

Cerere

CodB (int, NOT NULL)

CodP (int, NOT NULL)

Pret (money, NULL)

Cantitate (int, NULL)

val_cer (money, NULL)

Tranzactii

CodT (int, auto-increment, NOT NULL)

CodF (int, NOT NULL)

CodB (int, NOT NULL)

CodP (int, NOT NULL)

Pret (money, NULL)

Cantitate (int, NULL)

Relații între tabele:
Oferte(CodF) → Furnizor(CodF)

Oferte(CodP) → Produs(CodP)

Cerere(CodB) → Beneficiar(CodB)

Cerere(CodP) → Produs(CodP)

Tranzactii(CodF) → Furnizor(CodF)

Tranzactii(CodB) → Beneficiar(CodB)

Tranzactii(CodP) → Produs(CodP)
