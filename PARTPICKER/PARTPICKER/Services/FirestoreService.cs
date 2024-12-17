using PARTPICKER.Models;
using Google.Cloud.Firestore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PARTPICKER.Services
{
    public class FirestoreService
    {
        private FirestoreDb db;
        private async Task SetupFirestore()
        {
            if (db == null)
            {
                var stream = await FileSystem.OpenAppPackageFileAsync("apppartpicker-firebase-adminsdk-hcs8b-48fa859909.json");
                var reader = new StreamReader(stream);
                var contents = reader.ReadToEnd();

                db = new FirestoreDbBuilder
                {
                    ProjectId = "apppartpicker",

                    ConverterRegistry = new ConverterRegistry
                    {
                        new DateTimeToTimestampConverter(),
                    },
                    JsonCredentials = contents
                }.Build();
            }
        }
        public async Task InsertSampleModel(SampleModel sample)
        {
            await SetupFirestore();
            await db.Collection("SampleModels").AddAsync(sample);
        }
        public async Task<List<SampleModel>> GetSampleModels()
        {
            await SetupFirestore();
            var data = await db
                            .Collection("SampleModels")
                            .GetSnapshotAsync();
            var sampleModels = data.Documents
                .Select(doc =>
                {
                    var sampleModel = doc.ConvertTo<SampleModel>();
                    sampleModel.Id = doc.Id; // FirebaseId hinzufügen
                    return sampleModel;
                })
                .ToList();
            return sampleModels;
        }

        public async Task InsertShopParts(ShopPart sample)
        {
            await SetupFirestore();
            await db.Collection("SampleParts").AddAsync(sample);
        }

        public async Task<List<ShopPart>> GetShopParts()
        {
            await SetupFirestore();
            var data = await db
                            .Collection("SampleParts")
                            .GetSnapshotAsync();
            var sampleParts = data.Documents
                .Select(doc =>
                {
                    var samplePart = doc.ConvertTo<ShopPart>();
                    samplePart.Id = doc.Id; // FirebaseId hinzufügen
                    return samplePart;
                })
                .ToList();
            return sampleParts;
        }

    }
}
