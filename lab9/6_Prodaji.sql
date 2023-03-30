-- Îïëàòà ïî âèäó îïëàòû çà ïåğèîä
SELECT summa
FROM oplata
WHERE id_vid_oplaty = (SELECT id_vid_oplaty from vid_oplaty WHERE vid_oplaty = 'cash') and data >= '2022-01-01' and data <= '2022-03-01'
