--Give permissions (execute in sys user)
GRANT CREATE ANY DIRECTORY TO su;

--Replace directory with the adress of the folder with the images
CREATE OR REPLACE DIRECTORY IMAGES AS 'C:\ParticipantImages\';

--Give permissions (execute in sys user)
GRANT READ, WRITE ON DIRECTORY IMAGES TO SU;

DECLARE
    --V_BFILE BFILE;
    --v_blob BLOB;
    --V_NOMBRE VARCHAR(30);
    productId NUMBER;
BEGIN
    
    --pkgParticipant.insertParticipant (1, 'Keanu', null, 'Reeves', null, TO_DATE('1964-09-02','YYYY-MM-DD'), 5, 40, 'Kea', 186 ,'A', EMPTY_BLOB());
    pkgProduct.insertProduct(1,2021,'Dune',156,'Arrakis, también denominado Dune, se ha convertido en el planeta más importante del universo. A su alrededor comienza una gigantesca lucha por el poder que culmina en una guerra interestelar.',null,499,productId);
    pkgProduct.insertProduct(1,2012,'The Hunger Games',142,'Para demostrar su poder, el régimen del estado totalitario de Panem organiza cada año ''Los juegos del hambre''. En ellos, 24 jóvenes compiten el uno contra el otro en una batalla en la que solo puede haber un superviviente. La joven Katniss se ofrece voluntaria para participar en los juegos para salvar a su hermana. Junto a ella participará Peeta, un joven al que ha conocido desde la infancia y que está enamorado de ella. Sin embargo, el Capitolio quiere convertirlos en contrincantes.',null,499,productId); 
    pkgProduct.insertProduct(1,2019,'Midsommar',147,'Una pareja de estadounidenses acude con unos amigos a Midsommar, un festival de verano que se celebra cada 90 años en una aldea remota de Suecia. Sin embargo, lo que parecían ser unas vacaciones de ensueño toma un giro macabro cuando los aldeanos los invitan a participar en sus perturbadoras actividades festivas.',null,499,productId); 
    pkgProduct.insertProduct(1,2021,'Matrix',150,'Un hacker informático descubre a través de misteriosos rebeldes la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores.',null,499,productId);
    /*V_NOMBRE := 'keanu.jpg';
    V_BFILE := BFILENAME('IMAGES',V_NOMBRE);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob,V_BFILE,DBMS_LOB.GETLENGTH(V_BFILE));
    DBMS_LOB.CLOSE(V_BFILE);*/
END;