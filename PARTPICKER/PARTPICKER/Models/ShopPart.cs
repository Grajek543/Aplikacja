using Google.Cloud.Firestore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PARTPICKER.Models
{
    [FirestoreData]
    public class ShopPart
    {
        [FirestoreProperty]
        public string Id { get; set; }
        [FirestoreProperty]
        public string Name { get; set; }
        [FirestoreProperty]
        public string Type { get; set; }
        [FirestoreProperty]
        public double Price { get; set; }
        public string Cena
        {
            get
            {
                return string.Format("{0:C2}", Price);
            }
        }
        [FirestoreProperty]
        public bool Cart { get; set; }
    }
}