package Isg.characters;

public class Hero
{
    /**
     * creation des attributs de la classe Isg.characters.Hero
     */
    private String name;
    private int life;
    private int maxLife=100;
    private int stamina;
    private int maxStamina=50;
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
    public Hero(String name)
    {
        this.setName(name);
        this.setLife(this.getMaxLife());
        this.setStamina(this.getMaxStamina());
    }
    public Hero()
    {
        this.setName("Gregooninator");
        this.setLife(this.getMaxLife());
        this.setStamina(this.getMaxStamina());
    }
    /**
     *  creation de la methode printStats et surcharge de la fonction toString
     */
    public String toString()
    {
        String msg="[ Hero ] \t"+getName()+"\t LIFE: "+getLife()+"\t STAMINA: "+getStamina();
        if(isAlive()) msg+="\t(ALIVE)";
        else msg+="\t(DEAD)";
        return msg;
    }
    public void printStats()
    {
        System.out.println(toString());
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
