public class person
{
    private int HKid;
    private String Name;
    public person(int id,String name)
    {
        HKid = id;
        Name = name;
    }

    public String getName()
    {
        return Name;
    }

    public void setName(String nn)
    {
        Name = nn;
    }

    public int getHKid()
    {
        return HKid;
    }

    public void setHkid(int id)
    {
        HKid = id;
    }
}