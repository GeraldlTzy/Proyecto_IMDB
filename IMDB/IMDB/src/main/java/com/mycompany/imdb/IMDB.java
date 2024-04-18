/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.imdb;

import Connect.ConnectDB;
import LogicClasses.Controller;

/**
 *
 * @author kakas
 */
public class IMDB {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        //db.
        //ConnectDB.insertNationality("Costarricense");
        //ConnectDB.insertImagen();
        //Controller.validUser("GeraldC", "1234");
        //Usuarios 
        ConnectDB.insertUser(1, "José", "David", "Serrano", null, "08/03/2005", "JoseD", 119300425, 88553300, "jose@gmail.com", "a6R,y4(06dPM", 1,1);
        
        /*ConnectDB.insertUser(1, "Gerald", null,"Calderon", "Castro", "23/06/2004", "GeralC", 728234493, 95787602, "gerald@gmail.com", "\\@22[^Q8xhj#", 1);
        ConnectDB.insertUser(2, "Clara", null, "Cabello", "Díaz", "11/11/1986", "ClaraCD", 500324581, 90107828, "ClaraDC@gmail.com", "H3KTDfEVnD", 1);
        ConnectDB.insertUser(2, "María", "Fernanda", "Catalán", "Arcos", "11/03/2002", "MariCat",533473522 , 85903699, "MariCat@gmail.com", "rAEDAtiVAv", 1);
        ConnectDB.insertUser(1, "Fernando", "Lucas", "Rodríguez", null, "10/03/2011", "Ferlu", 240490544, 90615509, "Ferro12@gmail.com", "NE54O6mebQ", 1);
        ConnectDB.insertUser(1, "Joseph", "David", "Campillo", null, "13/07/2004", "JosephCamP", 541398365, 93005607, "josdavcamp@gmail.com", "G1PfIO7aN5", 1);
        ConnectDB.insertUser(2, "Sonia", null, "Souto", "Cornejo", "17/05/1993", "sonicor", 326575110, 82526768, "sonicor15@gmail.com", "TTqnbNHlTr", 1);
        ConnectDB.insertUser(1, "Lorenzo", null, "Vilchez", null, "17/12/2011", "LoRvIl", 326575110, 89266971, "loren42@gmail.com", "0sB9iPMyrF", 1);
        ConnectDB.insertUser(1, "Mario", null, "Coll", null, "30/12/1969", "mariobros15", 535460605, 83041652, "marioco.ll90@gmail.com", "s0KOWVB0HM", 1);
        ConnectDB.insertUser(2, "Teresa", null, "Barrio", null, "09/01/1978", "BarrioTeresa", 601089676, 81553855, "terebarrio@gmail.com", "bJxrQrLZsp", 1);
        ConnectDB.insertUser(1, "Christian", null, "Álamo", null, "12/10/1991", "ChrisAM", 324354354, 89323924, "christian1234@gmail.com", "ohk5E6ekJ1", 1);
        ConnectDB.insertUser(1, "Antonio", null, "Castañeda", null, "30/04/1956", "Toñoñeda", 408966200, 87059158, "antonio.cas@gmail.com", "9j6jV2WiCV", 1);
        ConnectDB.insertUser(2, "Rosalía", null,"Talavera", "Robledo", "09/06/1989", "Rotaro12", 908605687, 83173177, "rosatala@gmail.com", "fD5Jb1YulL", 1);
        ConnectDB.insertUser(1, "Tomás", null, "Hurtado", null, "01/07/2008", "tomasito222", 650160363, 86380160, "tomasote@gmail.com", "60ltnQ3mil", 1);
        ConnectDB.insertUser(2, "Inés", null, "Sarmiento", "Solano", "28/07/1956", "inesSarSol", 924894572, 86941054, "inessarsol@gmail.com", "xHabONduNa", 1);
        ConnectDB.insertUser(1, "Álvaro", "Julían", "Nadal", null, "08/09/1993", "Álvajul32", 536934316, 83727483, "alvajulian@gmail.com", "hQBI5orG15", 1);
        ConnectDB.insertUser(2, "Tamara", "Lucía", "Arana", null, "01/01/1990", "TamiLu", 293646265, 98365431, "tamaluci@gmail.com", "nsgChegqEy", 1);
        ConnectDB.insertUser(1, "Juan", "Fernando", "Fernandez", "López", "08/02/1977", "JuanFerFer", 300922958, 91898900, "jfernando@gmail.com", "dvQX0RjWoa", 1);
        ConnectDB.insertUser(2, "Eva", "María", "Cuenca", null, "14/07/2000", "EvaMaríaC", 903113065, 85387108, "evamariacc85@gmail.com", "K15jhp9oAv", 1);
        ConnectDB.insertUser(2, "Emilia", "Ana", "Dieguez", "Fuentes", "22/09/1967", "emilianaDI", 344666426, 88652104, "emilianafuentes@gmail.com", "keTHSLGoiK", 1);
        ConnectDB.insertUser(1, "Gerardo", null, "Bermejo", null, "23/09/2002", "batman15", 341983651, 82686318, "gerber@gmail.com", "BRmbQOIpo7", 1);
        ConnectDB.insertUser(2, "Candela", "Mónica", "Morcillo", null, "24/08/1991", "momocandela", 632299866, 88359233, "candelamorcilla48@gmail.com", "73TGcyy7kU", 1);
        ConnectDB.insertUser(2, "Coral", null, "Hermoso", null, "26/09/1994", "coralhermoso", 739528302, 99826664, "coral.her@gmail.com", "3ub5GGeMQ4", 1);
        ConnectDB.insertUser(1, "Antonio", "Jesús", "Barros", null, "03/08/1985", "AntonioYisus", 792429628, 98102962, "antoniobarr@gmail.com", "L22lrIHfCo", 1);

        //Administradores
        ConnectDB.insertAdmin(2,"Esperanza","Fernanda","Segura","Montero","18/08/1991","EsperanzaFer",862051612,96307267,"esperanza50segura@gmail.com","7HK7fif6B6",1);
        ConnectDB.insertAdmin(1,"Eduardo",null,"Serrano","Barcelo","08/01/2006","EduSerba",511616796,96406815,"eduardo.serr@gmail.com","RcCElYCB9w",1);
        ConnectDB.insertAdmin(2,"Ana","Isabel","Garriga","Núñez","17/06/1977","AnaGa_2",862051612,96307267,"anagarriga1@gmail.com","ueVriEhwSZ",1);
        ConnectDB.insertAdmin(1,"Vidal",null,"Merino",null,"29/07/1964","VidalMarino",650283489,96392580,"vidalmer@gmail.com","BGgVYimP4v",1);
        ConnectDB.insertAdmin(2,"Florentina","Susana","Pulido","Ballesteros","05/01/1994","FlorPulida",742793168,99525535,"florsusana25@gmail.com","4CBWrser91",1);
        ConnectDB.insertAdmin(1,"Antonio","Felipe","Novoa",null,"19/10/2004","pipeNOVOA",418272663,99395578,"antofelno@gmail.com","qFSOf9rOe2",1);
        ConnectDB.insertAdmin(2,"Alejandra","María","Villareal","Infante","15/12/1959","alemari87",529183716,81554931,"alejandra.inf@gmail.com","4JnsNE1rbh",1);
        ConnectDB.insertAdmin(1,"Francisco",null,"Elvira",null,"14/12/1962","panchitoElvira",431096876,95114277,"franvira95@gmail.com","lGMyJxc5cX",1);
        ConnectDB.insertAdmin(2,"Cristina","Sofía","Parada",null,"08/02/1982","cristiPAR",889996220,88500350,"cristi.vkan@gmail.com","mF8QZLdkb1",1);
        ConnectDB.insertAdmin(1,"Alberto",null,"Alarcon","Estrada","12/07/1986","alal_MM",789154781,89724609,"albertoest888@gmail.com","H3uHqRHbhl",1);
        */
        //Participantes
        
    }
}
