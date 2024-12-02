; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [166 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [332 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 124
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 123
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 65
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 155
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 68219467, ; 5: System.Security.Cryptography.Primitives => 0x410f24b => 148
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 64
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 140
	i32 122350210, ; 8: System.Threading.Channels.dll => 0x74aea82 => 153
	i32 142721839, ; 9: System.Net.WebHeaderCollection => 0x881c32f => 130
	i32 149972175, ; 10: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 148
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 73
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 91
	i32 195452805, ; 13: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 14: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 15: System.ComponentModel => 0xc38ff48 => 106
	i32 230752869, ; 16: Microsoft.CSharp.dll => 0xdc10265 => 98
	i32 246610117, ; 17: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 137
	i32 280992041, ; 18: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 19: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 69
	i32 336156722, ; 21: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 80
	i32 356389973, ; 23: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 364956269, ; 24: Grpc.Net.Common => 0x15c0ca6d => 50
	i32 367780167, ; 25: System.IO.Pipes => 0x15ebe147 => 117
	i32 371306672, ; 26: Grpc.Core.Api.dll => 0x1621b0b0 => 48
	i32 375677976, ; 27: System.Net.ServicePoint.dll => 0x16646418 => 128
	i32 379916513, ; 28: System.Threading.Thread.dll => 0x16a510e1 => 155
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 120
	i32 391886110, ; 30: Grpc.Net.Client.dll => 0x175bb51e => 49
	i32 395744057, ; 31: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 32: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 33: System.Collections => 0x1a61054f => 103
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 79
	i32 451504562, ; 35: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 149
	i32 459347974, ; 36: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 144
	i32 469710990, ; 37: System.dll => 0x1bff388e => 160
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 132
	i32 500358224, ; 39: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 40: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 41: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 59
	i32 539058512, ; 42: Microsoft.Extensions.Logging => 0x20216150 => 56
	i32 548916678, ; 43: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 51
	i32 592146354, ; 44: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 613668793, ; 45: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 147
	i32 627609679, ; 46: Xamarin.AndroidX.CustomView => 0x2568904f => 77
	i32 627931235, ; 47: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 646990296, ; 48: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 43
	i32 672442732, ; 49: System.Collections.Concurrent => 0x2814a96c => 99
	i32 683518922, ; 50: System.Net.Security => 0x28bdabca => 127
	i32 688181140, ; 51: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 52: System.Xml.Linq.dll => 0x29293ff5 => 157
	i32 706645707, ; 53: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 54: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 55: System.Runtime.Loader.dll => 0x2b15ed29 => 141
	i32 759454413, ; 56: System.Net.Requests => 0x2d445acd => 126
	i32 762598435, ; 57: System.IO.Pipes.dll => 0x2d745423 => 117
	i32 775507847, ; 58: System.IO.Compression => 0x2e394f87 => 116
	i32 777317022, ; 59: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 60: Microsoft.Extensions.Options => 0x2f0980eb => 58
	i32 804715423, ; 61: System.Data.Common => 0x2ff6fb9f => 108
	i32 823281589, ; 62: System.Private.Uri.dll => 0x311247b5 => 133
	i32 830298997, ; 63: System.IO.Compression.Brotli => 0x317d5b75 => 115
	i32 904024072, ; 64: System.ComponentModel.Primitives.dll => 0x35e25008 => 104
	i32 926902833, ; 65: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 66: Newtonsoft.Json => 0x38f24a24 => 65
	i32 967690846, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 80
	i32 975874589, ; 68: System.Xml.XDocument => 0x3a2aaa1d => 159
	i32 992768348, ; 69: System.Collections.dll => 0x3b2c715c => 103
	i32 1012816738, ; 70: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 90
	i32 1019214401, ; 71: System.Drawing => 0x3cbffa41 => 113
	i32 1028951442, ; 72: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 55
	i32 1029334545, ; 73: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 74: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 70
	i32 1036536393, ; 75: System.Drawing.Primitives.dll => 0x3dc84a49 => 112
	i32 1044663988, ; 76: System.Linq.Expressions.dll => 0x3e444eb4 => 118
	i32 1049751285, ; 77: Google.Api.CommonProtos.dll => 0x3e91eef5 => 36
	i32 1052210849, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1082857460, ; 79: System.ComponentModel.TypeConverter => 0x408b17f4 => 105
	i32 1084122840, ; 80: Xamarin.Kotlin.StdLib => 0x409e66d8 => 95
	i32 1098259244, ; 81: System => 0x41761b2c => 160
	i32 1118262833, ; 82: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1145085672, ; 83: System.Linq.Async.dll => 0x44409ee8 => 67
	i32 1168523401, ; 84: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 85: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 87
	i32 1203173028, ; 86: Grpc.Net.Client => 0x47b6f6a4 => 49
	i32 1203215381, ; 87: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 88: System.Diagnostics.Process => 0x480a69ad => 110
	i32 1214827643, ; 89: CommunityToolkit.Mvvm => 0x4868cc7b => 35
	i32 1234928153, ; 90: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 91: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 92: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 78
	i32 1324164729, ; 93: System.Linq => 0x4eed2679 => 119
	i32 1373134921, ; 94: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 95: Xamarin.AndroidX.SavedState => 0x52114ed3 => 90
	i32 1406073936, ; 96: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 74
	i32 1408764838, ; 97: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 143
	i32 1430672901, ; 98: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1437713837, ; 99: Grpc.Auth => 0x55b1c5ad => 47
	i32 1452070440, ; 100: System.Formats.Asn1.dll => 0x568cd628 => 114
	i32 1458022317, ; 101: System.Net.Security.dll => 0x56e7a7ad => 127
	i32 1461004990, ; 102: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 103: System.Collections.Immutable.dll => 0x5718a9ef => 100
	i32 1462112819, ; 104: System.IO.Compression.dll => 0x57261233 => 116
	i32 1469204771, ; 105: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 71
	i32 1470490898, ; 106: Microsoft.Extensions.Primitives => 0x57a5e912 => 59
	i32 1479771757, ; 107: System.Collections.Immutable => 0x5833866d => 100
	i32 1480492111, ; 108: System.IO.Compression.Brotli.dll => 0x583e844f => 115
	i32 1493001747, ; 109: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 110: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 111: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 152
	i32 1551623176, ; 112: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 113: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 84
	i32 1624863272, ; 114: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 93
	i32 1636350590, ; 115: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 76
	i32 1639515021, ; 116: System.Net.Http.dll => 0x61b9038d => 121
	i32 1639986890, ; 117: System.Text.RegularExpressions => 0x61c036ca => 152
	i32 1657153582, ; 118: System.Runtime => 0x62c6282e => 145
	i32 1658251792, ; 119: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 94
	i32 1677501392, ; 120: System.Net.Primitives.dll => 0x63fca3d0 => 125
	i32 1679769178, ; 121: System.Security.Cryptography => 0x641f3e5a => 150
	i32 1729485958, ; 122: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 72
	i32 1736233607, ; 123: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 124: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 125: System.Diagnostics.TraceSource.dll => 0x69239124 => 111
	i32 1766324549, ; 126: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 91
	i32 1770582343, ; 127: Microsoft.Extensions.Logging.dll => 0x6988f147 => 56
	i32 1780572499, ; 128: Mono.Android.Runtime.dll => 0x6a216153 => 164
	i32 1782161461, ; 129: Grpc.Core.Api => 0x6a39a035 => 48
	i32 1782862114, ; 130: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 131: Xamarin.AndroidX.Fragment => 0x6a96652d => 79
	i32 1793755602, ; 132: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1796167890, ; 133: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 51
	i32 1808609942, ; 134: Xamarin.AndroidX.Loader => 0x6bcd3296 => 84
	i32 1813058853, ; 135: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 95
	i32 1813201214, ; 136: Xamarin.Google.Android.Material => 0x6c13413e => 94
	i32 1818569960, ; 137: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 88
	i32 1824175904, ; 138: System.Text.Encoding.Extensions => 0x6cbab720 => 151
	i32 1824722060, ; 139: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 143
	i32 1828688058, ; 140: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 57
	i32 1842015223, ; 141: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 142: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 143: System.Linq.Expressions => 0x6ec71a65 => 118
	i32 1870277092, ; 144: System.Reflection.Primitives => 0x6f7a29e4 => 138
	i32 1875935024, ; 145: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1900519031, ; 146: Grpc.Auth.dll => 0x71479e77 => 47
	i32 1910275211, ; 147: System.Collections.NonGeneric.dll => 0x71dc7c8b => 101
	i32 1927897671, ; 148: System.CodeDom.dll => 0x72e96247 => 66
	i32 1939592360, ; 149: System.Private.Xml.Linq => 0x739bd4a8 => 134
	i32 1968388702, ; 150: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 52
	i32 2003115576, ; 151: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2025202353, ; 153: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 154: System.Private.Xml => 0x79eb68ee => 135
	i32 2055257422, ; 155: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 81
	i32 2066184531, ; 156: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 157: System.Diagnostics.TraceSource => 0x7b6f419e => 111
	i32 2079903147, ; 158: System.Runtime.dll => 0x7bf8cdab => 145
	i32 2090596640, ; 159: System.Numerics.Vectors => 0x7c9bf920 => 131
	i32 2127167465, ; 160: System.Console => 0x7ec9ffe9 => 107
	i32 2142473426, ; 161: System.Collections.Specialized => 0x7fb38cd2 => 102
	i32 2159891885, ; 162: Microsoft.Maui => 0x80bd55ad => 62
	i32 2169148018, ; 163: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2178612968, ; 164: System.CodeDom => 0x81dafee8 => 66
	i32 2181898931, ; 165: Microsoft.Extensions.Options.dll => 0x820d22b3 => 58
	i32 2192057212, ; 166: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 57
	i32 2193016926, ; 167: System.ObjectModel.dll => 0x82b6c85e => 132
	i32 2201107256, ; 168: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 96
	i32 2201231467, ; 169: System.Net.Http => 0x8334206b => 121
	i32 2207618523, ; 170: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 171: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 53
	i32 2270573516, ; 172: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 173: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2295906218, ; 174: System.Net.Sockets => 0x88d8bfaa => 129
	i32 2303942373, ; 175: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 176: System.Private.CoreLib.dll => 0x896b7878 => 162
	i32 2340441535, ; 177: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 139
	i32 2353062107, ; 178: System.Net.Primitives => 0x8c40e0db => 125
	i32 2368005991, ; 179: System.Xml.ReaderWriter.dll => 0x8d24e767 => 158
	i32 2371007202, ; 180: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 52
	i32 2395872292, ; 181: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2397347608, ; 182: Google.LongRunning.dll => 0x8ee49f18 => 45
	i32 2427813419, ; 183: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 184: System.Console.dll => 0x912896e5 => 107
	i32 2441199521, ; 185: Google.Cloud.Firestore => 0x9181bfa1 => 42
	i32 2458678730, ; 186: System.Net.Sockets.dll => 0x928c75ca => 129
	i32 2471841756, ; 187: netstandard.dll => 0x93554fdc => 161
	i32 2475788418, ; 188: Java.Interop.dll => 0x93918882 => 163
	i32 2480646305, ; 189: Microsoft.Maui.Controls => 0x93dba8a1 => 60
	i32 2484371297, ; 190: System.Net.ServicePoint => 0x94147f61 => 128
	i32 2486847491, ; 191: Google.Api.Gax => 0x943a4803 => 37
	i32 2538310050, ; 192: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 137
	i32 2550873716, ; 193: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 194: Microsoft.CSharp => 0x98ba5a04 => 98
	i32 2585220780, ; 195: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 151
	i32 2593496499, ; 196: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 96
	i32 2617129537, ; 198: System.Private.Xml.dll => 0x9bfe3a41 => 135
	i32 2620871830, ; 199: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 76
	i32 2626831493, ; 200: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2635732976, ; 201: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 42
	i32 2663698177, ; 202: System.Runtime.Loader => 0x9ec4cf01 => 141
	i32 2664396074, ; 203: System.Xml.XDocument.dll => 0x9ecf752a => 159
	i32 2665622720, ; 204: System.Drawing.Primitives => 0x9ee22cc0 => 112
	i32 2676780864, ; 205: System.Data.Common.dll => 0x9f8c6f40 => 108
	i32 2717744543, ; 206: System.Security.Claims => 0xa1fd7d9f => 146
	i32 2724373263, ; 207: System.Runtime.Numerics.dll => 0xa262a30f => 142
	i32 2732626843, ; 208: Xamarin.AndroidX.Activity => 0xa2e0939b => 69
	i32 2735172069, ; 209: System.Threading.Channels => 0xa30769e5 => 153
	i32 2737747696, ; 210: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 71
	i32 2744327253, ; 211: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 38
	i32 2752995522, ; 212: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2757554483, ; 213: Google.Api.Gax.Grpc => 0xa45cf133 => 38
	i32 2758225723, ; 214: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 61
	i32 2764765095, ; 215: Microsoft.Maui.dll => 0xa4caf7a7 => 62
	i32 2778768386, ; 216: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 92
	i32 2785988530, ; 217: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 218: Microsoft.Maui.Graphics => 0xa7008e0b => 64
	i32 2806116107, ; 219: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 220: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 74
	i32 2818335264, ; 221: System.Linq.Async => 0xa7fc6220 => 67
	i32 2831556043, ; 222: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2839679515, ; 223: Google.LongRunning => 0xa942121b => 45
	i32 2853208004, ; 224: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 92
	i32 2861189240, ; 225: Microsoft.Maui.Essentials => 0xaa8a4878 => 63
	i32 2893550578, ; 226: Google.Apis.Core => 0xac7813f2 => 41
	i32 2898407901, ; 227: System.Management => 0xacc231dd => 68
	i32 2909740682, ; 228: System.Private.CoreLib => 0xad6f1e8a => 162
	i32 2912646636, ; 229: Google.Api.CommonProtos => 0xad9b75ec => 36
	i32 2916838712, ; 230: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 93
	i32 2919462931, ; 231: System.Numerics.Vectors.dll => 0xae037813 => 131
	i32 2959614098, ; 232: System.ComponentModel.dll => 0xb0682092 => 106
	i32 2972252294, ; 233: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 147
	i32 2978675010, ; 234: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 78
	i32 2990604888, ; 235: Google.Apis => 0xb2410258 => 39
	i32 3038032645, ; 236: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 237: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 85
	i32 3059408633, ; 238: Mono.Android.Runtime => 0xb65adef9 => 164
	i32 3059793426, ; 239: System.ComponentModel.Primitives => 0xb660be12 => 104
	i32 3077302341, ; 240: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3090735792, ; 241: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 149
	i32 3099732863, ; 242: System.Security.Claims.dll => 0xb8c22b7f => 146
	i32 3103600923, ; 243: System.Formats.Asn1 => 0xb8fd311b => 114
	i32 3106263381, ; 244: Grpc.Net.Common.dll => 0xb925d155 => 50
	i32 3122689689, ; 245: PARTPICKER => 0xba207699 => 97
	i32 3124832203, ; 246: System.Threading.Tasks.Extensions => 0xba4127cb => 154
	i32 3159123045, ; 247: System.Reflection.Primitives.dll => 0xbc4c6465 => 138
	i32 3178803400, ; 248: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 86
	i32 3203277885, ; 249: Google.Api.Gax.dll => 0xbeee243d => 37
	i32 3220365878, ; 250: System.Threading => 0xbff2e236 => 156
	i32 3258312781, ; 251: Xamarin.AndroidX.CardView => 0xc235e84d => 72
	i32 3265893370, ; 252: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 154
	i32 3277656639, ; 253: PARTPICKER.dll => 0xc35d123f => 97
	i32 3305363605, ; 254: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 255: System.Net.Requests.dll => 0xc5b097e4 => 126
	i32 3317135071, ; 256: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 77
	i32 3346324047, ; 257: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 87
	i32 3357674450, ; 258: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 259: Xamarin.AndroidX.Core => 0xc86c06e3 => 75
	i32 3366347497, ; 260: Java.Interop => 0xc8a662e9 => 163
	i32 3374999561, ; 261: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3381016424, ; 262: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 263: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 54
	i32 3430777524, ; 264: netstandard => 0xcc7d82b4 => 161
	i32 3453592554, ; 265: Google.Apis.Core.dll => 0xcdd9a3ea => 41
	i32 3463511458, ; 266: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 267: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 105
	i32 3476120550, ; 268: Mono.Android => 0xcf3163e6 => 165
	i32 3479583265, ; 269: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 270: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3499097210, ; 271: Google.Protobuf.dll => 0xd08ffc7a => 46
	i32 3509114376, ; 272: System.Xml.Linq => 0xd128d608 => 157
	i32 3539954161, ; 273: System.Net.HttpListener => 0xd2ff69f1 => 122
	i32 3580758918, ; 274: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3598063517, ; 275: Google.Cloud.Firestore.V1 => 0xd676179d => 43
	i32 3608519521, ; 276: System.Linq.dll => 0xd715a361 => 119
	i32 3612435020, ; 277: System.Management.dll => 0xd751624c => 68
	i32 3624195450, ; 278: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 139
	i32 3641597786, ; 279: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 81
	i32 3643446276, ; 280: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 281: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 86
	i32 3645630983, ; 282: Google.Protobuf => 0xd94bea07 => 46
	i32 3657292374, ; 283: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 53
	i32 3660523487, ; 284: System.Net.NetworkInformation => 0xda2f27df => 124
	i32 3672681054, ; 285: Mono.Android.dll => 0xdae8aa5e => 165
	i32 3697841164, ; 286: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 287: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 85
	i32 3732100267, ; 288: System.Net.NameResolution => 0xde7354ab => 123
	i32 3748608112, ; 289: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 109
	i32 3757995660, ; 290: Google.Cloud.Location.dll => 0xdffe768c => 44
	i32 3786282454, ; 291: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 73
	i32 3792276235, ; 292: System.Collections.NonGeneric => 0xe2098b0b => 101
	i32 3793997468, ; 293: Google.Apis.Auth.dll => 0xe223ce9c => 40
	i32 3802395368, ; 294: System.Collections.Specialized.dll => 0xe2a3f2e8 => 102
	i32 3823082795, ; 295: System.Security.Cryptography.dll => 0xe3df9d2b => 150
	i32 3841636137, ; 296: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 55
	i32 3849253459, ; 297: System.Runtime.InteropServices.dll => 0xe56ef253 => 140
	i32 3870376305, ; 298: System.Net.HttpListener.dll => 0xe6b14171 => 122
	i32 3885497537, ; 299: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 130
	i32 3889960447, ; 300: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 301: System.Collections.Concurrent.dll => 0xe839deed => 99
	i32 3896760992, ; 302: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 75
	i32 3928044579, ; 303: System.Xml.ReaderWriter => 0xea213423 => 158
	i32 3931092270, ; 304: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 88
	i32 3955647286, ; 305: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 70
	i32 3980434154, ; 306: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 307: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 308: System.Diagnostics.Process.dll => 0xee9f991d => 110
	i32 4025784931, ; 309: System.Memory => 0xeff49a63 => 120
	i32 4046471985, ; 310: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 61
	i32 4054681211, ; 311: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 136
	i32 4056144661, ; 312: Google.Cloud.Location => 0xf1c3db15 => 44
	i32 4059682726, ; 313: Google.Apis.dll => 0xf1f9d7a6 => 39
	i32 4068434129, ; 314: System.Private.Xml.Linq.dll => 0xf27f60d1 => 134
	i32 4073602200, ; 315: System.Threading.dll => 0xf2ce3c98 => 156
	i32 4082882467, ; 316: Google.Apis.Auth => 0xf35bd7a3 => 40
	i32 4094352644, ; 317: Microsoft.Maui.Essentials.dll => 0xf40add04 => 63
	i32 4099507663, ; 318: System.Drawing.dll => 0xf45985cf => 113
	i32 4100113165, ; 319: System.Private.Uri => 0xf462c30d => 133
	i32 4102112229, ; 320: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 321: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 322: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 54
	i32 4147896353, ; 323: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 136
	i32 4150914736, ; 324: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 325: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 144
	i32 4182413190, ; 326: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 83
	i32 4213026141, ; 327: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 109
	i32 4271975918, ; 328: Microsoft.Maui.Controls.dll => 0xfea12dee => 60
	i32 4274623895, ; 329: CommunityToolkit.Mvvm.dll => 0xfec99597 => 35
	i32 4274976490, ; 330: System.Runtime.Numerics => 0xfecef6ea => 142
	i32 4292120959 ; 331: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 83
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [332 x i32] [
	i32 124, ; 0
	i32 123, ; 1
	i32 65, ; 2
	i32 155, ; 3
	i32 33, ; 4
	i32 148, ; 5
	i32 64, ; 6
	i32 140, ; 7
	i32 153, ; 8
	i32 130, ; 9
	i32 148, ; 10
	i32 73, ; 11
	i32 91, ; 12
	i32 30, ; 13
	i32 31, ; 14
	i32 106, ; 15
	i32 98, ; 16
	i32 137, ; 17
	i32 2, ; 18
	i32 30, ; 19
	i32 69, ; 20
	i32 15, ; 21
	i32 80, ; 22
	i32 14, ; 23
	i32 50, ; 24
	i32 117, ; 25
	i32 48, ; 26
	i32 128, ; 27
	i32 155, ; 28
	i32 120, ; 29
	i32 49, ; 30
	i32 34, ; 31
	i32 26, ; 32
	i32 103, ; 33
	i32 79, ; 34
	i32 149, ; 35
	i32 144, ; 36
	i32 160, ; 37
	i32 132, ; 38
	i32 13, ; 39
	i32 7, ; 40
	i32 59, ; 41
	i32 56, ; 42
	i32 51, ; 43
	i32 21, ; 44
	i32 147, ; 45
	i32 77, ; 46
	i32 19, ; 47
	i32 43, ; 48
	i32 99, ; 49
	i32 127, ; 50
	i32 1, ; 51
	i32 157, ; 52
	i32 16, ; 53
	i32 4, ; 54
	i32 141, ; 55
	i32 126, ; 56
	i32 117, ; 57
	i32 116, ; 58
	i32 25, ; 59
	i32 58, ; 60
	i32 108, ; 61
	i32 133, ; 62
	i32 115, ; 63
	i32 104, ; 64
	i32 28, ; 65
	i32 65, ; 66
	i32 80, ; 67
	i32 159, ; 68
	i32 103, ; 69
	i32 90, ; 70
	i32 113, ; 71
	i32 55, ; 72
	i32 3, ; 73
	i32 70, ; 74
	i32 112, ; 75
	i32 118, ; 76
	i32 36, ; 77
	i32 82, ; 78
	i32 105, ; 79
	i32 95, ; 80
	i32 160, ; 81
	i32 16, ; 82
	i32 67, ; 83
	i32 22, ; 84
	i32 87, ; 85
	i32 49, ; 86
	i32 20, ; 87
	i32 110, ; 88
	i32 35, ; 89
	i32 18, ; 90
	i32 2, ; 91
	i32 78, ; 92
	i32 119, ; 93
	i32 32, ; 94
	i32 90, ; 95
	i32 74, ; 96
	i32 143, ; 97
	i32 0, ; 98
	i32 47, ; 99
	i32 114, ; 100
	i32 127, ; 101
	i32 6, ; 102
	i32 100, ; 103
	i32 116, ; 104
	i32 71, ; 105
	i32 59, ; 106
	i32 100, ; 107
	i32 115, ; 108
	i32 10, ; 109
	i32 5, ; 110
	i32 152, ; 111
	i32 25, ; 112
	i32 84, ; 113
	i32 93, ; 114
	i32 76, ; 115
	i32 121, ; 116
	i32 152, ; 117
	i32 145, ; 118
	i32 94, ; 119
	i32 125, ; 120
	i32 150, ; 121
	i32 72, ; 122
	i32 23, ; 123
	i32 1, ; 124
	i32 111, ; 125
	i32 91, ; 126
	i32 56, ; 127
	i32 164, ; 128
	i32 48, ; 129
	i32 17, ; 130
	i32 79, ; 131
	i32 9, ; 132
	i32 51, ; 133
	i32 84, ; 134
	i32 95, ; 135
	i32 94, ; 136
	i32 88, ; 137
	i32 151, ; 138
	i32 143, ; 139
	i32 57, ; 140
	i32 29, ; 141
	i32 26, ; 142
	i32 118, ; 143
	i32 138, ; 144
	i32 8, ; 145
	i32 47, ; 146
	i32 101, ; 147
	i32 66, ; 148
	i32 134, ; 149
	i32 52, ; 150
	i32 5, ; 151
	i32 82, ; 152
	i32 0, ; 153
	i32 135, ; 154
	i32 81, ; 155
	i32 4, ; 156
	i32 111, ; 157
	i32 145, ; 158
	i32 131, ; 159
	i32 107, ; 160
	i32 102, ; 161
	i32 62, ; 162
	i32 12, ; 163
	i32 66, ; 164
	i32 58, ; 165
	i32 57, ; 166
	i32 132, ; 167
	i32 96, ; 168
	i32 121, ; 169
	i32 14, ; 170
	i32 53, ; 171
	i32 8, ; 172
	i32 89, ; 173
	i32 129, ; 174
	i32 18, ; 175
	i32 162, ; 176
	i32 139, ; 177
	i32 125, ; 178
	i32 158, ; 179
	i32 52, ; 180
	i32 13, ; 181
	i32 45, ; 182
	i32 10, ; 183
	i32 107, ; 184
	i32 42, ; 185
	i32 129, ; 186
	i32 161, ; 187
	i32 163, ; 188
	i32 60, ; 189
	i32 128, ; 190
	i32 37, ; 191
	i32 137, ; 192
	i32 11, ; 193
	i32 98, ; 194
	i32 151, ; 195
	i32 20, ; 196
	i32 96, ; 197
	i32 135, ; 198
	i32 76, ; 199
	i32 15, ; 200
	i32 42, ; 201
	i32 141, ; 202
	i32 159, ; 203
	i32 112, ; 204
	i32 108, ; 205
	i32 146, ; 206
	i32 142, ; 207
	i32 69, ; 208
	i32 153, ; 209
	i32 71, ; 210
	i32 38, ; 211
	i32 21, ; 212
	i32 38, ; 213
	i32 61, ; 214
	i32 62, ; 215
	i32 92, ; 216
	i32 27, ; 217
	i32 64, ; 218
	i32 6, ; 219
	i32 74, ; 220
	i32 67, ; 221
	i32 19, ; 222
	i32 45, ; 223
	i32 92, ; 224
	i32 63, ; 225
	i32 41, ; 226
	i32 68, ; 227
	i32 162, ; 228
	i32 36, ; 229
	i32 93, ; 230
	i32 131, ; 231
	i32 106, ; 232
	i32 147, ; 233
	i32 78, ; 234
	i32 39, ; 235
	i32 34, ; 236
	i32 85, ; 237
	i32 164, ; 238
	i32 104, ; 239
	i32 12, ; 240
	i32 149, ; 241
	i32 146, ; 242
	i32 114, ; 243
	i32 50, ; 244
	i32 97, ; 245
	i32 154, ; 246
	i32 138, ; 247
	i32 86, ; 248
	i32 37, ; 249
	i32 156, ; 250
	i32 72, ; 251
	i32 154, ; 252
	i32 97, ; 253
	i32 7, ; 254
	i32 126, ; 255
	i32 77, ; 256
	i32 87, ; 257
	i32 24, ; 258
	i32 75, ; 259
	i32 163, ; 260
	i32 89, ; 261
	i32 3, ; 262
	i32 54, ; 263
	i32 161, ; 264
	i32 41, ; 265
	i32 11, ; 266
	i32 105, ; 267
	i32 165, ; 268
	i32 24, ; 269
	i32 23, ; 270
	i32 46, ; 271
	i32 157, ; 272
	i32 122, ; 273
	i32 31, ; 274
	i32 43, ; 275
	i32 119, ; 276
	i32 68, ; 277
	i32 139, ; 278
	i32 81, ; 279
	i32 28, ; 280
	i32 86, ; 281
	i32 46, ; 282
	i32 53, ; 283
	i32 124, ; 284
	i32 165, ; 285
	i32 33, ; 286
	i32 85, ; 287
	i32 123, ; 288
	i32 109, ; 289
	i32 44, ; 290
	i32 73, ; 291
	i32 101, ; 292
	i32 40, ; 293
	i32 102, ; 294
	i32 150, ; 295
	i32 55, ; 296
	i32 140, ; 297
	i32 122, ; 298
	i32 130, ; 299
	i32 32, ; 300
	i32 99, ; 301
	i32 75, ; 302
	i32 158, ; 303
	i32 88, ; 304
	i32 70, ; 305
	i32 27, ; 306
	i32 9, ; 307
	i32 110, ; 308
	i32 120, ; 309
	i32 61, ; 310
	i32 136, ; 311
	i32 44, ; 312
	i32 39, ; 313
	i32 134, ; 314
	i32 156, ; 315
	i32 40, ; 316
	i32 63, ; 317
	i32 113, ; 318
	i32 133, ; 319
	i32 22, ; 320
	i32 17, ; 321
	i32 54, ; 322
	i32 136, ; 323
	i32 29, ; 324
	i32 144, ; 325
	i32 83, ; 326
	i32 109, ; 327
	i32 60, ; 328
	i32 35, ; 329
	i32 142, ; 330
	i32 83 ; 331
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
