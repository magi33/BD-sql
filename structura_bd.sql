-- Selecteazã toate tabelele ?i coloanele bazei de date curente
SELECT 
    t.name AS Tabela,
    c.name AS Coloana,
    ty.name AS TipDate,
    c.max_length AS Dimensiune,
    c.is_nullable AS PermiteNULL,
    c.is_identity AS AutoIncrement
FROM 
    sys.tables t
INNER JOIN 
    sys.columns c ON t.object_id = c.object_id
INNER JOIN 
    sys.types ty ON c.user_type_id = ty.user_type_id
ORDER BY 
    t.name, c.column_id;
