package Isg.characters;

public class Monster {
    /**
     * creation des attributs de la classe Isg.characters.Hero
     */
    private String name;
    private int life;
    private int maxLife=10;
    private int stamina;
    private int maxStamina=10;
    private static int INSTANCES_COUNT=0;
    /**
     * creation des getters et setters pour l'ensemble des attributs
     */
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    public int getLife()
    {
        return life;
    }
    public void setLife(int life)
    {
        this.life=life;
    }
    public int getMaxLife()
    {
        return maxLife;
    }
    public void setMaxLife(int maxLife)
    {
        this.maxLife=maxLife;
    }
    public int getStamina()
    {
        return stamina;
    }
    public void setStamina(int stamina)
    {
        this.stamina=stamina;
    }
    public int getMaxStamina()
    {
        return maxStamina;
    }
    public void setMaxStamina(int maxStamina)
    {
        this.maxStamina=maxStamina;
    }
    /**
     * creation de 2 constructeus
     */
    public Monster(String name)
    {
        INSTANCES_COUNT+=1;
        this.setName(name);
        this.setLife(10);
        this.setStamina(10);
    }
    public Monster()
    {
        INSTANCES_COUNT+=1;
        this.name="Monster_"+INSTANCES_COUNT;
        this.setLife(getMaxLife());
        this.setStamina(getMaxStamina());
    }
    /**
     *  creation de la methode printStats et surcharge de la fonction toString
     */
    public String toString()
    {
        String msg="[ Monster ] "+getName()+"\t LIFE: "+getLife()+"\t STAMINA: "+getStamina();
        if(isAlive()) msg+="\t(ALIVE)";
        else msg+="\t(DEAD)";
        return msg;
    }
    public void printStats()
    {
        System.out.print(toString()+"\n");
    }
    /**
     * creation de la methode isAlive
     */
    private boolean isAlive()
    {
        if(getLife()>0) return true;
        return false;
    }
}
