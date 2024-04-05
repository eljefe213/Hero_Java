package Isg;
import Isg.characters.Hero;
import Isg.characters.Monster;
public class LearningSoulsGame {
    public static void main(String [] args){
        /**
         * Creation des Heros
         */
        Hero MyHero1=new Hero();
        Hero MyHero2=new Hero("Naruto Uzumaki");
        /**
         * Creation des Monstres
         */
        Monster M1=new Monster("Studentatort");
        Monster M2=new Monster();
        Monster M3=new Monster();
        /**
         * Affichage des statiques des Heros
         */
        MyHero1.printStats();
        MyHero2.printStats();
        /**
         * Affichage des statiques des Monstres
         */
        M1.printStats();
        M2.printStats();
        M3.printStats();
        /**
         * 6.Package Isg
         * 	la	visibilité	optimale pour	isAlive dans	cette	configuration est friendly parceque elle se trouve dans le meme package que les atures classes qui les utilise
         */
        /**
         * 7.Package characters
         * 	la	visibilité	optimale pour	isAlive dans	cette	configuration est public parce que la elle serait accessible a toutes les classe meme en dehors du package la ou elle est crée
         */
    }
}
