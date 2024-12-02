; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [166 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [332 x i64] [
	i64 96808603140984794, ; 0: Google.Cloud.Location.dll => 0x157eee9616b8fda => 44
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 59
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 165
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 63
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 118
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 73
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 90
	i64 502670939551102150, ; 7: System.Management.dll => 0x6f9d88e66daf4c6 => 68
	i64 545109961164950392, ; 8: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 9: System.Reflection.Primitives => 0x7c6829760de3975 => 138
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 155
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 106
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 78
	i64 1010599046655515943, ; 14: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 138
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 94
	i64 1121665720830085036, ; 16: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 17: System.Drawing.dll => 0x119be62002c19ebb => 113
	i64 1369545283391376210, ; 18: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 86
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 125
	i64 1486715745332614827, ; 20: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 60
	i64 1492954217099365037, ; 21: System.Net.HttpListener => 0x14b809f350210aad => 122
	i64 1513467482682125403, ; 22: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 164
	i64 1537168428375924959, ; 23: System.Threading.Thread.dll => 0x15551e8a954ae0df => 155
	i64 1556147632182429976, ; 24: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 71
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 83
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 65
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 120
	i64 1767386781656293639, ; 29: System.Private.Uri.dll => 0x188704e9f5582107 => 133
	i64 1769105627832031750, ; 30: Google.Protobuf => 0x188d203205129a06 => 46
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 70
	i64 1825687700144851180, ; 32: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 139
	i64 1835311033149317475, ; 33: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 34: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 90
	i64 1865037103900624886, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 51
	i64 1875417405349196092, ; 36: System.Drawing.Primitives => 0x1a06d2319b6c713c => 112
	i64 1881198190668717030, ; 37: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1906214252544222269, ; 38: PARTPICKER => 0x1a743bc35caf643d => 97
	i64 1920760634179481754, ; 39: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 61
	i64 1930726298510463061, ; 40: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 35
	i64 1959996714666907089, ; 41: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1972385128188460614, ; 42: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 147
	i64 1981742497975770890, ; 43: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 82
	i64 1983698669889758782, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 45: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2040001226662520565, ; 46: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 154
	i64 2097468624590905020, ; 47: PARTPICKER.dll => 0x1d1bb499e8449ebc => 97
	i64 2102659300918482391, ; 48: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 112
	i64 2133195048986300728, ; 49: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 65
	i64 2262844636196693701, ; 50: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 78
	i64 2287834202362508563, ; 51: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 99
	i64 2302323944321350744, ; 52: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 53: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 81
	i64 2445261912722553526, ; 54: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 42
	i64 2470498323731680442, ; 55: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 74
	i64 2497223385847772520, ; 56: System.Runtime => 0x22a7eb7046413568 => 145
	i64 2547086958574651984, ; 57: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 69
	i64 2602673633151553063, ; 58: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 59: System.Net.NameResolution => 0x2487b36034f808cb => 123
	i64 2656907746661064104, ; 60: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 54
	i64 2662981627730767622, ; 61: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2812926542227278819, ; 62: Google.Apis.Core.dll => 0x270985c960b98be3 => 41
	i64 2895129759130297543, ; 63: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 64: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 94
	i64 3289520064315143713, ; 65: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 80
	i64 3311221304742556517, ; 66: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 131
	i64 3325875462027654285, ; 67: System.Runtime.Numerics => 0x2e27e21c8958b48d => 142
	i64 3328853167529574890, ; 68: System.Net.Sockets.dll => 0x2e327651a008c1ea => 129
	i64 3344514922410554693, ; 69: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 96
	i64 3429672777697402584, ; 70: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 63
	i64 3430216265859992823, ; 71: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 47
	i64 3494946837667399002, ; 72: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 52
	i64 3522470458906976663, ; 73: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 91
	i64 3551103847008531295, ; 74: System.Private.CoreLib.dll => 0x31480e226177735f => 162
	i64 3567343442040498961, ; 75: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 76: System.Runtime.dll => 0x319037675df7e556 => 145
	i64 3638003163729360188, ; 77: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 53
	i64 3647754201059316852, ; 78: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 158
	i64 3655542548057982301, ; 79: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 52
	i64 3716579019761409177, ; 80: netstandard.dll => 0x3393f0ed5c8c5c99 => 161
	i64 3727469159507183293, ; 81: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 89
	i64 3869221888984012293, ; 82: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 56
	i64 3890352374528606784, ; 83: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 61
	i64 3893087497687830326, ; 84: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 43
	i64 3933965368022646939, ; 85: System.Net.Requests => 0x369840a8bfadc09b => 126
	i64 3966267475168208030, ; 86: System.Memory => 0x370b03412596249e => 120
	i64 4009997192427317104, ; 87: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 144
	i64 4056584864658557221, ; 88: Google.Apis.Auth => 0x384be27113330925 => 40
	i64 4073500526318903918, ; 89: System.Private.Xml.dll => 0x3887fb25779ae26e => 135
	i64 4120493066591692148, ; 90: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 91: System.ComponentModel => 0x39a7562737acb67e => 106
	i64 4168469861834746866, ; 92: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 146
	i64 4187479170553454871, ; 93: System.Linq.Expressions => 0x3a1cea1e912fa117 => 118
	i64 4205801962323029395, ; 94: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 105
	i64 4356591372459378815, ; 95: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 96: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 117
	i64 4679594760078841447, ; 97: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 98: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 69
	i64 4795410492532947900, ; 99: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 91
	i64 4809057822547766521, ; 100: System.Drawing => 0x42bd349c3145ecf9 => 113
	i64 4814660307502931973, ; 101: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 123
	i64 4853321196694829351, ; 102: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 141
	i64 5098983611934048327, ; 103: Google.Cloud.Location => 0x46c33a9458de0047 => 44
	i64 5103417709280584325, ; 104: System.Collections.Specialized => 0x46d2fb5e161b6285 => 102
	i64 5182934613077526976, ; 105: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 102
	i64 5290786973231294105, ; 106: System.Runtime.Loader => 0x496ca6b869b72699 => 141
	i64 5423376490970181369, ; 107: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 139
	i64 5471532531798518949, ; 108: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 109: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 110: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 115
	i64 5573260873512690141, ; 111: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 150
	i64 5650097808083101034, ; 112: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 147
	i64 5665389054145784248, ; 113: Google.Apis.Core => 0x4e9f815406bee9b8 => 41
	i64 5692067934154308417, ; 114: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 93
	i64 5979151488806146654, ; 115: System.Formats.Asn1 => 0x52fa3699a489d25e => 114
	i64 5984759512290286505, ; 116: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 148
	i64 6068057819846744445, ; 117: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 118: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6284145129771520194, ; 119: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 136
	i64 6357457916754632952, ; 120: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 81
	i64 6478287442656530074, ; 122: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 123: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 77
	i64 6560151584539558821, ; 124: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 58
	i64 6743165466166707109, ; 125: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 126: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 127: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 111
	i64 6814185388980153342, ; 128: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 159
	i64 6876862101832370452, ; 129: System.Xml.Linq => 0x5f6f85a57d108914 => 157
	i64 6894844156784520562, ; 130: System.Numerics.Vectors => 0x5faf683aead1ad72 => 131
	i64 6987056692196838363, ; 131: System.Management => 0x60f7030ae3e88bdb => 68
	i64 7083547580668757502, ; 132: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 134
	i64 7220009545223068405, ; 133: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 134: System.Linq => 0x64e71ccf51a90a5a => 119
	i64 7377312882064240630, ; 135: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 105
	i64 7488575175965059935, ; 136: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 157
	i64 7489048572193775167, ; 137: System.ObjectModel => 0x67ee71ff6b419e3f => 132
	i64 7592577537120840276, ; 138: System.Diagnostics.Process => 0x695e410af5b2aa54 => 110
	i64 7621211152690795761, ; 139: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 45
	i64 7654504624184590948, ; 140: System.Net.Http => 0x6a3a4366801b8264 => 121
	i64 7708790323521193081, ; 141: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 142: System.Private.CoreLib => 0x6b0ff375198b9c17 => 162
	i64 7735176074855944702, ; 143: Microsoft.CSharp => 0x6b58dda848e391fe => 98
	i64 7735352534559001595, ; 144: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 95
	i64 7740912860115050295, ; 145: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 36
	i64 7836164640616011524, ; 146: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 71
	i64 7843473411302439824, ; 147: Google.LongRunning => 0x6cd99d82d5e73b90 => 45
	i64 8064050204834738623, ; 148: System.Collections.dll => 0x6fe942efa61731bf => 103
	i64 8083354569033831015, ; 149: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 80
	i64 8087206902342787202, ; 150: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 109
	i64 8167236081217502503, ; 151: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 163
	i64 8185542183669246576, ; 152: System.Collections => 0x7198e33f4794aa70 => 103
	i64 8246048515196606205, ; 153: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 64
	i64 8264926008854159966, ; 154: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 110
	i64 8293702073711834350, ; 155: System.Linq.Async => 0x731926181883b4ee => 67
	i64 8368701292315763008, ; 156: System.Security.Cryptography => 0x7423997c6fd56140 => 150
	i64 8400357532724379117, ; 157: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 88
	i64 8410671156615598628, ; 158: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 137
	i64 8518412311883997971, ; 159: System.Collections.Immutable => 0x76377add7c28e313 => 100
	i64 8563666267364444763, ; 160: System.Private.Uri => 0x76d841191140ca5b => 133
	i64 8614108721271900878, ; 161: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 162: Java.Interop => 0x77b654e585b55834 => 163
	i64 8638972117149407195, ; 163: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 98
	i64 8639588376636138208, ; 164: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 87
	i64 8677882282824630478, ; 165: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8685687024490312494, ; 166: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 38
	i64 8725526185868997716, ; 167: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 109
	i64 8941376889969657626, ; 168: System.Xml.XDocument => 0x7c1626e87187471a => 159
	i64 9045785047181495996, ; 169: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 170: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 93
	i64 9324707631942237306, ; 171: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 70
	i64 9404599086328396064, ; 172: Grpc.Net.Client.dll => 0x8283d90a93913920 => 49
	i64 9659729154652888475, ; 173: System.Text.RegularExpressions => 0x860e407c9991dd9b => 152
	i64 9678050649315576968, ; 174: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 74
	i64 9702891218465930390, ; 175: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 101
	i64 9808709177481450983, ; 176: Mono.Android.dll => 0x881f890734e555e7 => 165
	i64 9956195530459977388, ; 177: Microsoft.Maui => 0x8a2b8315b36616ac => 62
	i64 9959489431142554298, ; 178: System.CodeDom => 0x8a3736deb7825aba => 66
	i64 9991543690424095600, ; 179: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 180: System.Net.Http.dll => 0x8b50e941206af13b => 121
	i64 10051358222726253779, ; 181: System.Private.Xml => 0x8b7d990c97ccccd3 => 135
	i64 10051920404523413229, ; 182: Grpc.Net.Common => 0x8b7f9859be1e6eed => 50
	i64 10092835686693276772, ; 183: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 60
	i64 10143853363526200146, ; 184: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 185: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 77
	i64 10236703004850800690, ; 186: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 128
	i64 10245369515835430794, ; 187: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 137
	i64 10282208442277544177, ; 188: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 43
	i64 10364469296367737616, ; 189: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 136
	i64 10406448008575299332, ; 190: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 96
	i64 10430153318873392755, ; 191: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 75
	i64 10447083246144586668, ; 192: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 51
	i64 10506226065143327199, ; 193: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10785150219063592792, ; 194: System.Net.Primitives => 0x95ac8cfb68830758 => 125
	i64 10823124638835005028, ; 195: Google.Api.Gax.dll => 0x963376840189d664 => 37
	i64 10854473764158213966, ; 196: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 48
	i64 10953751836886437922, ; 197: System.Linq.Async.dll => 0x98038b429b661022 => 67
	i64 11002576679268595294, ; 198: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 57
	i64 11009005086950030778, ; 199: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 62
	i64 11103970607964515343, ; 200: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 201: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 92
	i64 11220793807500858938, ; 202: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 203: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 58
	i64 11326322297822330275, ; 204: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 42
	i64 11340910727871153756, ; 205: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 76
	i64 11435314654401632883, ; 206: Grpc.Core.Api => 0x9eb266175e6d9a73 => 48
	i64 11441445377436144712, ; 207: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 50
	i64 11485890710487134646, ; 208: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 140
	i64 11518296021396496455, ; 209: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 210: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 92
	i64 11530571088791430846, ; 211: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 56
	i64 11543207250219725293, ; 212: Grpc.Net.Client => 0xa031b5d5e60f71ed => 49
	i64 11597940890313164233, ; 213: netstandard => 0xa0f429ca8d1805c9 => 161
	i64 11705530742807338875, ; 214: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12040886584167504988, ; 215: System.Net.ServicePoint => 0xa719d28d8e121c5c => 128
	i64 12201331334810686224, ; 216: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 144
	i64 12269460666702402136, ; 217: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 100
	i64 12437742355241350664, ; 218: Google.Apis.dll => 0xac9bbcc62bfdb608 => 39
	i64 12451044538927396471, ; 219: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 79
	i64 12466513435562512481, ; 220: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 84
	i64 12475113361194491050, ; 221: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 222: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 111
	i64 12538491095302438457, ; 223: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 72
	i64 12550732019250633519, ; 224: System.IO.Compression => 0xae2d28465e8e1b2f => 116
	i64 12681088699309157496, ; 225: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 226: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 73
	i64 12708922737231849740, ; 227: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 151
	i64 12823819093633476069, ; 228: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 229: System.IO.Pipes => 0xb21ff0d5d6c0740f => 117
	i64 12843321153144804894, ; 230: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 59
	i64 12859557719246324186, ; 231: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 130
	i64 12958614573187252691, ; 232: Google.Apis => 0xb3d63f4bf006c1d3 => 39
	i64 13068258254871114833, ; 233: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 143
	i64 13221551921002590604, ; 234: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 235: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 236: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 164
	i64 13381594904270902445, ; 237: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 238: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 95
	i64 13467053111158216594, ; 239: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 240: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 241: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 242: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 89
	i64 13717397318615465333, ; 243: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 104
	i64 13755568601956062840, ; 244: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13782512541859110153, ; 245: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 40
	i64 13814445057219246765, ; 246: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 247: System.Console.dll => 0xc0a5f3cade5c6774 => 107
	i64 13959074834287824816, ; 248: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 79
	i64 14100563506285742564, ; 249: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 250: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 72
	i64 14125464355221830302, ; 251: System.Threading.dll => 0xc407bafdbc707a9e => 156
	i64 14254574811015963973, ; 252: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 151
	i64 14327709162229390963, ; 253: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 149
	i64 14461014870687870182, ; 254: System.Net.Requests.dll => 0xc8afd8683afdece6 => 126
	i64 14464374589798375073, ; 255: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 256: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14561513370130550166, ; 257: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 148
	i64 14622043554576106986, ; 258: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 143
	i64 14650706219563630045, ; 259: Grpc.Auth => 0xcb51c3af15b23ddd => 47
	i64 14669215534098758659, ; 260: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 54
	i64 14705122255218365489, ; 261: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 262: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14832630590065248058, ; 263: System.Security.Claims => 0xcdd816ef5d6e873a => 146
	i64 14852515768018889994, ; 264: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 76
	i64 14892012299694389861, ; 265: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 266: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 267: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 55
	i64 14984936317414011727, ; 268: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 130
	i64 14987728460634540364, ; 269: System.IO.Compression.dll => 0xcfff1ba06622494c => 116
	i64 15015154896917945444, ; 270: System.Net.Security.dll => 0xd0608bd33642dc64 => 127
	i64 15076659072870671916, ; 271: System.ObjectModel.dll => 0xd13b0d8c1620662c => 132
	i64 15097078878581906526, ; 272: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 38
	i64 15111608613780139878, ; 273: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 274: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 115
	i64 15133485256822086103, ; 275: System.Linq.dll => 0xd204f0a9127dd9d7 => 119
	i64 15227001540531775957, ; 276: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 53
	i64 15370334346939861994, ; 277: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 75
	i64 15391712275433856905, ; 278: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 55
	i64 15527772828719725935, ; 279: System.Console => 0xd77dbb1e38cd3d6f => 107
	i64 15530465045505749832, ; 280: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 122
	i64 15536481058354060254, ; 281: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15541854775306130054, ; 282: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 149
	i64 15557562860424774966, ; 283: System.Net.Sockets => 0xd7e790fe7a6dc536 => 129
	i64 15582737692548360875, ; 284: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 83
	i64 15609085926864131306, ; 285: System.dll => 0xd89e9cf3334914ea => 160
	i64 15661133872274321916, ; 286: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 158
	i64 15664356999916475676, ; 287: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 288: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 289: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 290: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 153
	i64 15963349826457351533, ; 291: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 154
	i64 16018552496348375205, ; 292: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 124
	i64 16154507427712707110, ; 293: System => 0xe03056ea4e39aa26 => 160
	i64 16219561732052121626, ; 294: System.Net.Security => 0xe1177575db7c781a => 127
	i64 16288847719894691167, ; 295: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 296: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 57
	i64 16454459195343277943, ; 297: System.Net.NetworkInformation => 0xe459fb756d988f77 => 124
	i64 16648892297579399389, ; 298: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 35
	i64 16649148416072044166, ; 299: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 64
	i64 16677317093839702854, ; 300: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 88
	i64 16856067890322379635, ; 301: System.Data.Common.dll => 0xe9ecc87060889373 => 108
	i64 16890310621557459193, ; 302: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 152
	i64 16942731696432749159, ; 303: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16955525858597485057, ; 304: Google.Api.Gax => 0xeb4e20ef25a73a01 => 37
	i64 16991533501433402966, ; 305: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 36
	i64 16998075588627545693, ; 306: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 86
	i64 17008137082415910100, ; 307: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 101
	i64 17031351772568316411, ; 308: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 85
	i64 17062143951396181894, ; 309: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 104
	i64 17089008752050867324, ; 310: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17118171214553292978, ; 311: System.Threading.Channels => 0xed8ff6060fc420b2 => 153
	i64 17230721278011714856, ; 312: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 134
	i64 17260702271250283638, ; 313: System.Data.Common => 0xef8a5543bba6bc76 => 108
	i64 17342750010158924305, ; 314: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 315: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 316: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17553799493972570483, ; 317: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 46
	i64 17623389608345532001, ; 318: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 319: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 320: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 84
	i64 17710060891934109755, ; 321: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 82
	i64 17712670374920797664, ; 322: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 140
	i64 17743407583038752114, ; 323: System.CodeDom.dll => 0xf63d3f302bff4572 => 66
	i64 17777860260071588075, ; 324: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 142
	i64 18025913125965088385, ; 325: System.Threading => 0xfa28e87b91334681 => 156
	i64 18099568558057551825, ; 326: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 327: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 85
	i64 18146411883821974900, ; 328: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 114
	i64 18245806341561545090, ; 329: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 99
	i64 18305135509493619199, ; 330: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 87
	i64 18324163916253801303 ; 331: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [332 x i32] [
	i32 44, ; 0
	i32 59, ; 1
	i32 165, ; 2
	i32 63, ; 3
	i32 118, ; 4
	i32 73, ; 5
	i32 90, ; 6
	i32 68, ; 7
	i32 7, ; 8
	i32 138, ; 9
	i32 155, ; 10
	i32 106, ; 11
	i32 10, ; 12
	i32 78, ; 13
	i32 138, ; 14
	i32 94, ; 15
	i32 18, ; 16
	i32 113, ; 17
	i32 86, ; 18
	i32 125, ; 19
	i32 60, ; 20
	i32 122, ; 21
	i32 164, ; 22
	i32 155, ; 23
	i32 16, ; 24
	i32 71, ; 25
	i32 83, ; 26
	i32 65, ; 27
	i32 120, ; 28
	i32 133, ; 29
	i32 46, ; 30
	i32 70, ; 31
	i32 139, ; 32
	i32 6, ; 33
	i32 90, ; 34
	i32 51, ; 35
	i32 112, ; 36
	i32 28, ; 37
	i32 97, ; 38
	i32 61, ; 39
	i32 35, ; 40
	i32 28, ; 41
	i32 147, ; 42
	i32 82, ; 43
	i32 2, ; 44
	i32 20, ; 45
	i32 154, ; 46
	i32 97, ; 47
	i32 112, ; 48
	i32 65, ; 49
	i32 78, ; 50
	i32 99, ; 51
	i32 24, ; 52
	i32 81, ; 53
	i32 42, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 69, ; 57
	i32 27, ; 58
	i32 123, ; 59
	i32 54, ; 60
	i32 2, ; 61
	i32 41, ; 62
	i32 7, ; 63
	i32 94, ; 64
	i32 80, ; 65
	i32 131, ; 66
	i32 142, ; 67
	i32 129, ; 68
	i32 96, ; 69
	i32 63, ; 70
	i32 47, ; 71
	i32 52, ; 72
	i32 91, ; 73
	i32 162, ; 74
	i32 22, ; 75
	i32 145, ; 76
	i32 53, ; 77
	i32 158, ; 78
	i32 52, ; 79
	i32 161, ; 80
	i32 89, ; 81
	i32 56, ; 82
	i32 61, ; 83
	i32 43, ; 84
	i32 126, ; 85
	i32 120, ; 86
	i32 144, ; 87
	i32 40, ; 88
	i32 135, ; 89
	i32 33, ; 90
	i32 106, ; 91
	i32 146, ; 92
	i32 118, ; 93
	i32 105, ; 94
	i32 30, ; 95
	i32 117, ; 96
	i32 0, ; 97
	i32 69, ; 98
	i32 91, ; 99
	i32 113, ; 100
	i32 123, ; 101
	i32 141, ; 102
	i32 44, ; 103
	i32 102, ; 104
	i32 102, ; 105
	i32 141, ; 106
	i32 139, ; 107
	i32 26, ; 108
	i32 29, ; 109
	i32 115, ; 110
	i32 150, ; 111
	i32 147, ; 112
	i32 41, ; 113
	i32 93, ; 114
	i32 114, ; 115
	i32 148, ; 116
	i32 23, ; 117
	i32 23, ; 118
	i32 136, ; 119
	i32 34, ; 120
	i32 81, ; 121
	i32 11, ; 122
	i32 77, ; 123
	i32 58, ; 124
	i32 19, ; 125
	i32 22, ; 126
	i32 111, ; 127
	i32 159, ; 128
	i32 157, ; 129
	i32 131, ; 130
	i32 68, ; 131
	i32 134, ; 132
	i32 26, ; 133
	i32 119, ; 134
	i32 105, ; 135
	i32 157, ; 136
	i32 132, ; 137
	i32 110, ; 138
	i32 45, ; 139
	i32 121, ; 140
	i32 17, ; 141
	i32 162, ; 142
	i32 98, ; 143
	i32 95, ; 144
	i32 36, ; 145
	i32 71, ; 146
	i32 45, ; 147
	i32 103, ; 148
	i32 80, ; 149
	i32 109, ; 150
	i32 163, ; 151
	i32 103, ; 152
	i32 64, ; 153
	i32 110, ; 154
	i32 67, ; 155
	i32 150, ; 156
	i32 88, ; 157
	i32 137, ; 158
	i32 100, ; 159
	i32 133, ; 160
	i32 21, ; 161
	i32 163, ; 162
	i32 98, ; 163
	i32 87, ; 164
	i32 21, ; 165
	i32 38, ; 166
	i32 109, ; 167
	i32 159, ; 168
	i32 31, ; 169
	i32 93, ; 170
	i32 70, ; 171
	i32 49, ; 172
	i32 152, ; 173
	i32 74, ; 174
	i32 101, ; 175
	i32 165, ; 176
	i32 62, ; 177
	i32 66, ; 178
	i32 6, ; 179
	i32 121, ; 180
	i32 135, ; 181
	i32 50, ; 182
	i32 60, ; 183
	i32 3, ; 184
	i32 77, ; 185
	i32 128, ; 186
	i32 137, ; 187
	i32 43, ; 188
	i32 136, ; 189
	i32 96, ; 190
	i32 75, ; 191
	i32 51, ; 192
	i32 1, ; 193
	i32 125, ; 194
	i32 37, ; 195
	i32 48, ; 196
	i32 67, ; 197
	i32 57, ; 198
	i32 62, ; 199
	i32 12, ; 200
	i32 92, ; 201
	i32 15, ; 202
	i32 58, ; 203
	i32 42, ; 204
	i32 76, ; 205
	i32 48, ; 206
	i32 50, ; 207
	i32 140, ; 208
	i32 13, ; 209
	i32 92, ; 210
	i32 56, ; 211
	i32 49, ; 212
	i32 161, ; 213
	i32 9, ; 214
	i32 128, ; 215
	i32 144, ; 216
	i32 100, ; 217
	i32 39, ; 218
	i32 79, ; 219
	i32 84, ; 220
	i32 34, ; 221
	i32 111, ; 222
	i32 72, ; 223
	i32 116, ; 224
	i32 14, ; 225
	i32 73, ; 226
	i32 151, ; 227
	i32 27, ; 228
	i32 117, ; 229
	i32 59, ; 230
	i32 130, ; 231
	i32 39, ; 232
	i32 143, ; 233
	i32 1, ; 234
	i32 15, ; 235
	i32 164, ; 236
	i32 9, ; 237
	i32 95, ; 238
	i32 29, ; 239
	i32 30, ; 240
	i32 13, ; 241
	i32 89, ; 242
	i32 104, ; 243
	i32 8, ; 244
	i32 40, ; 245
	i32 11, ; 246
	i32 107, ; 247
	i32 79, ; 248
	i32 3, ; 249
	i32 72, ; 250
	i32 156, ; 251
	i32 151, ; 252
	i32 149, ; 253
	i32 126, ; 254
	i32 24, ; 255
	i32 5, ; 256
	i32 148, ; 257
	i32 143, ; 258
	i32 47, ; 259
	i32 54, ; 260
	i32 16, ; 261
	i32 32, ; 262
	i32 146, ; 263
	i32 76, ; 264
	i32 33, ; 265
	i32 0, ; 266
	i32 55, ; 267
	i32 130, ; 268
	i32 116, ; 269
	i32 127, ; 270
	i32 132, ; 271
	i32 38, ; 272
	i32 17, ; 273
	i32 115, ; 274
	i32 119, ; 275
	i32 53, ; 276
	i32 75, ; 277
	i32 55, ; 278
	i32 107, ; 279
	i32 122, ; 280
	i32 4, ; 281
	i32 149, ; 282
	i32 129, ; 283
	i32 83, ; 284
	i32 160, ; 285
	i32 158, ; 286
	i32 4, ; 287
	i32 12, ; 288
	i32 5, ; 289
	i32 153, ; 290
	i32 154, ; 291
	i32 124, ; 292
	i32 160, ; 293
	i32 127, ; 294
	i32 18, ; 295
	i32 57, ; 296
	i32 124, ; 297
	i32 35, ; 298
	i32 64, ; 299
	i32 88, ; 300
	i32 108, ; 301
	i32 152, ; 302
	i32 25, ; 303
	i32 37, ; 304
	i32 36, ; 305
	i32 86, ; 306
	i32 101, ; 307
	i32 85, ; 308
	i32 104, ; 309
	i32 32, ; 310
	i32 153, ; 311
	i32 134, ; 312
	i32 108, ; 313
	i32 10, ; 314
	i32 25, ; 315
	i32 8, ; 316
	i32 46, ; 317
	i32 20, ; 318
	i32 31, ; 319
	i32 84, ; 320
	i32 82, ; 321
	i32 140, ; 322
	i32 66, ; 323
	i32 142, ; 324
	i32 156, ; 325
	i32 19, ; 326
	i32 85, ; 327
	i32 114, ; 328
	i32 99, ; 329
	i32 87, ; 330
	i32 14 ; 331
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
