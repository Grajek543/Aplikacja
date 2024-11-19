namespace aplikacja.Models;

public class ShopPart
{
    public string Name { get; set; }
    public string Type { get; set; }
    public double Price { get; set; }
    public string Cena
    {
        get 
        {
            return string.Format("{0:C2}", Price);
        }
    }
    public bool Cart { get; set; }
}
