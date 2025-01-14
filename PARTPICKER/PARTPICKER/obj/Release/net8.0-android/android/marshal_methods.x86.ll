; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [181 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [362 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 138
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 137
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 65
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 169
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 68219467, ; 5: System.Security.Cryptography.Primitives => 0x410f24b => 162
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 64
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 154
	i32 122350210, ; 8: System.Threading.Channels.dll => 0x74aea82 => 167
	i32 142721839, ; 9: System.Net.WebHeaderCollection => 0x881c32f => 144
	i32 147669188, ; 10: Plugin.Firebase.Core.dll => 0x8cd40c4 => 68
	i32 149972175, ; 11: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 162
	i32 165246403, ; 12: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 78
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 97
	i32 195452805, ; 14: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 15: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 119
	i32 230752869, ; 17: Microsoft.CSharp.dll => 0xdc10265 => 111
	i32 246610117, ; 18: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 151
	i32 280992041, ; 19: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 20: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 73
	i32 336156722, ; 22: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 85
	i32 356389973, ; 24: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 364956269, ; 25: Grpc.Net.Common => 0x15c0ca6d => 50
	i32 367780167, ; 26: System.IO.Pipes => 0x15ebe147 => 131
	i32 371306672, ; 27: Grpc.Core.Api.dll => 0x1621b0b0 => 48
	i32 375677976, ; 28: System.Net.ServicePoint.dll => 0x16646418 => 142
	i32 379916513, ; 29: System.Threading.Thread.dll => 0x16a510e1 => 169
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 134
	i32 391886110, ; 31: Grpc.Net.Client.dll => 0x175bb51e => 49
	i32 395744057, ; 32: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 419244643, ; 33: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 69
	i32 435591531, ; 34: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 35: System.Collections => 0x1a61054f => 116
	i32 450948140, ; 36: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 84
	i32 451504562, ; 37: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 163
	i32 459347974, ; 38: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 158
	i32 465846621, ; 39: mscorlib => 0x1bc4415d => 175
	i32 469710990, ; 40: System.dll => 0x1bff388e => 174
	i32 498788369, ; 41: System.ObjectModel => 0x1dbae811 => 146
	i32 500358224, ; 42: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 43: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 44: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 59
	i32 539058512, ; 45: Microsoft.Extensions.Logging => 0x20216150 => 56
	i32 548916678, ; 46: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 51
	i32 592146354, ; 47: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 613668793, ; 48: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 161
	i32 627609679, ; 49: Xamarin.AndroidX.CustomView => 0x2568904f => 82
	i32 627931235, ; 50: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 646990296, ; 51: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 43
	i32 672442732, ; 52: System.Collections.Concurrent => 0x2814a96c => 112
	i32 683518922, ; 53: System.Net.Security => 0x28bdabca => 141
	i32 688181140, ; 54: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 55: System.Xml.Linq.dll => 0x29293ff5 => 171
	i32 706645707, ; 56: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 57: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 58: System.Runtime.Loader.dll => 0x2b15ed29 => 155
	i32 759454413, ; 59: System.Net.Requests => 0x2d445acd => 140
	i32 762598435, ; 60: System.IO.Pipes.dll => 0x2d745423 => 131
	i32 775507847, ; 61: System.IO.Compression => 0x2e394f87 => 130
	i32 777317022, ; 62: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 63: Microsoft.Extensions.Options => 0x2f0980eb => 58
	i32 804715423, ; 64: System.Data.Common => 0x2ff6fb9f => 122
	i32 823281589, ; 65: System.Private.Uri.dll => 0x311247b5 => 147
	i32 830298997, ; 66: System.IO.Compression.Brotli => 0x317d5b75 => 129
	i32 904024072, ; 67: System.ComponentModel.Primitives.dll => 0x35e25008 => 117
	i32 912572698, ; 68: Xamarin.AndroidX.Biometric => 0x3664c11a => 76
	i32 926902833, ; 69: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 70: Newtonsoft.Json => 0x38f24a24 => 65
	i32 957807352, ; 71: Plugin.CurrentActivity => 0x3916faf8 => 66
	i32 965247473, ; 72: Plugin.Firebase.Core => 0x398881f1 => 68
	i32 966729478, ; 73: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 105
	i32 967690846, ; 74: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 85
	i32 975874589, ; 75: System.Xml.XDocument => 0x3a2aaa1d => 173
	i32 992768348, ; 76: System.Collections.dll => 0x3b2c715c => 116
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 95
	i32 1019214401, ; 78: System.Drawing => 0x3cbffa41 => 127
	i32 1028951442, ; 79: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 55
	i32 1029334545, ; 80: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 81: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 74
	i32 1036536393, ; 82: System.Drawing.Primitives.dll => 0x3dc84a49 => 126
	i32 1044663988, ; 83: System.Linq.Expressions.dll => 0x3e444eb4 => 132
	i32 1049751285, ; 84: Google.Api.CommonProtos.dll => 0x3e91eef5 => 36
	i32 1052210849, ; 85: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1082857460, ; 86: System.ComponentModel.TypeConverter => 0x408b17f4 => 118
	i32 1084122840, ; 87: Xamarin.Kotlin.StdLib => 0x409e66d8 => 108
	i32 1098259244, ; 88: System => 0x41761b2c => 174
	i32 1110581358, ; 89: Xamarin.Firebase.Auth => 0x4232206e => 100
	i32 1118262833, ; 90: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1145085672, ; 91: System.Linq.Async.dll => 0x44409ee8 => 71
	i32 1168523401, ; 92: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 93: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 92
	i32 1203173028, ; 94: Grpc.Net.Client => 0x47b6f6a4 => 49
	i32 1203215381, ; 95: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 96: System.Diagnostics.Process => 0x480a69ad => 124
	i32 1214827643, ; 97: CommunityToolkit.Mvvm => 0x4868cc7b => 35
	i32 1234928153, ; 98: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 99: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 100: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 83
	i32 1324164729, ; 101: System.Linq => 0x4eed2679 => 133
	i32 1333047053, ; 102: Xamarin.Firebase.Common => 0x4f74af0d => 102
	i32 1373134921, ; 103: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 104: Xamarin.AndroidX.SavedState => 0x52114ed3 => 95
	i32 1406073936, ; 105: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 79
	i32 1408764838, ; 106: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 157
	i32 1411702249, ; 107: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 101
	i32 1430672901, ; 108: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1435222561, ; 109: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 105
	i32 1437713837, ; 110: Grpc.Auth => 0x55b1c5ad => 47
	i32 1452070440, ; 111: System.Formats.Asn1.dll => 0x568cd628 => 128
	i32 1458022317, ; 112: System.Net.Security.dll => 0x56e7a7ad => 141
	i32 1461004990, ; 113: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 114: System.Collections.Immutable.dll => 0x5718a9ef => 113
	i32 1462112819, ; 115: System.IO.Compression.dll => 0x57261233 => 130
	i32 1469204771, ; 116: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 75
	i32 1470490898, ; 117: Microsoft.Extensions.Primitives => 0x57a5e912 => 59
	i32 1479771757, ; 118: System.Collections.Immutable => 0x5833866d => 113
	i32 1480492111, ; 119: System.IO.Compression.Brotli.dll => 0x583e844f => 129
	i32 1493001747, ; 120: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 121: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 122: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 166
	i32 1551623176, ; 123: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 124: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 125: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 99
	i32 1636350590, ; 126: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 81
	i32 1639515021, ; 127: System.Net.Http.dll => 0x61b9038d => 135
	i32 1639986890, ; 128: System.Text.RegularExpressions => 0x61c036ca => 166
	i32 1657153582, ; 129: System.Runtime => 0x62c6282e => 159
	i32 1658251792, ; 130: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 104
	i32 1677501392, ; 131: System.Net.Primitives.dll => 0x63fca3d0 => 139
	i32 1679769178, ; 132: System.Security.Cryptography => 0x641f3e5a => 164
	i32 1729485958, ; 133: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 77
	i32 1736233607, ; 134: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 135: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 136: System.Diagnostics.TraceSource.dll => 0x69239124 => 125
	i32 1766324549, ; 137: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 97
	i32 1770582343, ; 138: Microsoft.Extensions.Logging.dll => 0x6988f147 => 56
	i32 1776026572, ; 139: System.Core.dll => 0x69dc03cc => 121
	i32 1780572499, ; 140: Mono.Android.Runtime.dll => 0x6a216153 => 179
	i32 1782161461, ; 141: Grpc.Core.Api => 0x6a39a035 => 48
	i32 1782862114, ; 142: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 143: Xamarin.AndroidX.Fragment => 0x6a96652d => 84
	i32 1793755602, ; 144: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1796167890, ; 145: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 51
	i32 1808609942, ; 146: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813058853, ; 147: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 108
	i32 1813201214, ; 148: Xamarin.Google.Android.Material => 0x6c13413e => 104
	i32 1818569960, ; 149: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 93
	i32 1824175904, ; 150: System.Text.Encoding.Extensions => 0x6cbab720 => 165
	i32 1824722060, ; 151: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 157
	i32 1828688058, ; 152: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 57
	i32 1842015223, ; 153: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 154: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 155: System.Linq.Expressions => 0x6ec71a65 => 132
	i32 1870277092, ; 156: System.Reflection.Primitives => 0x6f7a29e4 => 152
	i32 1875053220, ; 157: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 101
	i32 1875935024, ; 158: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1900519031, ; 159: Grpc.Auth.dll => 0x71479e77 => 47
	i32 1908813208, ; 160: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 106
	i32 1910275211, ; 161: System.Collections.NonGeneric.dll => 0x71dc7c8b => 114
	i32 1927897671, ; 162: System.CodeDom.dll => 0x72e96247 => 70
	i32 1939592360, ; 163: System.Private.Xml.Linq => 0x739bd4a8 => 148
	i32 1961813231, ; 164: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 96
	i32 1968388702, ; 165: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 52
	i32 2003115576, ; 166: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 167: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2025202353, ; 168: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 169: System.Private.Xml => 0x79eb68ee => 149
	i32 2055257422, ; 170: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 86
	i32 2066184531, ; 171: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 172: System.Diagnostics.TraceSource => 0x7b6f419e => 125
	i32 2079903147, ; 173: System.Runtime.dll => 0x7bf8cdab => 159
	i32 2090596640, ; 174: System.Numerics.Vectors => 0x7c9bf920 => 145
	i32 2127167465, ; 175: System.Console => 0x7ec9ffe9 => 120
	i32 2142473426, ; 176: System.Collections.Specialized => 0x7fb38cd2 => 115
	i32 2159891885, ; 177: Microsoft.Maui => 0x80bd55ad => 62
	i32 2169148018, ; 178: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2178612968, ; 179: System.CodeDom => 0x81dafee8 => 70
	i32 2181898931, ; 180: Microsoft.Extensions.Options.dll => 0x820d22b3 => 58
	i32 2192057212, ; 181: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 57
	i32 2193016926, ; 182: System.ObjectModel.dll => 0x82b6c85e => 146
	i32 2201107256, ; 183: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 109
	i32 2201231467, ; 184: System.Net.Http => 0x8334206b => 135
	i32 2207618523, ; 185: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 186: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 53
	i32 2270573516, ; 187: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 188: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 94
	i32 2295906218, ; 189: System.Net.Sockets => 0x88d8bfaa => 143
	i32 2303942373, ; 190: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 191: System.Private.CoreLib.dll => 0x896b7878 => 177
	i32 2340441535, ; 192: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 153
	i32 2353062107, ; 193: System.Net.Primitives => 0x8c40e0db => 139
	i32 2368005991, ; 194: System.Xml.ReaderWriter.dll => 0x8d24e767 => 172
	i32 2371007202, ; 195: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 52
	i32 2382033717, ; 196: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 100
	i32 2395872292, ; 197: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2397347608, ; 198: Google.LongRunning.dll => 0x8ee49f18 => 45
	i32 2427813419, ; 199: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2428790861, ; 200: Plugin.Fingerprint => 0x90c4684d => 67
	i32 2435356389, ; 201: System.Console.dll => 0x912896e5 => 120
	i32 2441199521, ; 202: Google.Cloud.Firestore => 0x9181bfa1 => 42
	i32 2458678730, ; 203: System.Net.Sockets.dll => 0x928c75ca => 143
	i32 2471841756, ; 204: netstandard.dll => 0x93554fdc => 176
	i32 2475788418, ; 205: Java.Interop.dll => 0x93918882 => 178
	i32 2480646305, ; 206: Microsoft.Maui.Controls => 0x93dba8a1 => 60
	i32 2483946094, ; 207: Plugin.Fingerprint.dll => 0x940e026e => 67
	i32 2484371297, ; 208: System.Net.ServicePoint => 0x94147f61 => 142
	i32 2486847491, ; 209: Google.Api.Gax => 0x943a4803 => 37
	i32 2526443681, ; 210: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 76
	i32 2538310050, ; 211: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 151
	i32 2550873716, ; 212: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 213: Microsoft.CSharp => 0x98ba5a04 => 111
	i32 2585220780, ; 214: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 165
	i32 2593496499, ; 215: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 216: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 109
	i32 2617129537, ; 217: System.Private.Xml.dll => 0x9bfe3a41 => 149
	i32 2620871830, ; 218: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 81
	i32 2626831493, ; 219: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2635732976, ; 220: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 42
	i32 2663698177, ; 221: System.Runtime.Loader => 0x9ec4cf01 => 155
	i32 2664396074, ; 222: System.Xml.XDocument.dll => 0x9ecf752a => 173
	i32 2665622720, ; 223: System.Drawing.Primitives => 0x9ee22cc0 => 126
	i32 2676780864, ; 224: System.Data.Common.dll => 0x9f8c6f40 => 122
	i32 2717744543, ; 225: System.Security.Claims => 0xa1fd7d9f => 160
	i32 2724373263, ; 226: System.Runtime.Numerics.dll => 0xa262a30f => 156
	i32 2732626843, ; 227: Xamarin.AndroidX.Activity => 0xa2e0939b => 73
	i32 2735172069, ; 228: System.Threading.Channels => 0xa30769e5 => 167
	i32 2737747696, ; 229: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 75
	i32 2744327253, ; 230: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 38
	i32 2752995522, ; 231: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2757554483, ; 232: Google.Api.Gax.Grpc => 0xa45cf133 => 38
	i32 2758225723, ; 233: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 61
	i32 2764765095, ; 234: Microsoft.Maui.dll => 0xa4caf7a7 => 62
	i32 2778768386, ; 235: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 98
	i32 2785988530, ; 236: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 237: Microsoft.Maui.Graphics => 0xa7008e0b => 64
	i32 2804607052, ; 238: Xamarin.Firebase.Components.dll => 0xa72ae84c => 103
	i32 2806116107, ; 239: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2806986428, ; 240: Plugin.CurrentActivity.dll => 0xa74f36bc => 66
	i32 2810250172, ; 241: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 79
	i32 2818335264, ; 242: System.Linq.Async => 0xa7fc6220 => 71
	i32 2831556043, ; 243: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2839679515, ; 244: Google.LongRunning => 0xa942121b => 45
	i32 2853208004, ; 245: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 98
	i32 2861189240, ; 246: Microsoft.Maui.Essentials => 0xaa8a4878 => 63
	i32 2893550578, ; 247: Google.Apis.Core => 0xac7813f2 => 41
	i32 2898407901, ; 248: System.Management => 0xacc231dd => 72
	i32 2905242038, ; 249: mscorlib.dll => 0xad2a79b6 => 175
	i32 2909740682, ; 250: System.Private.CoreLib => 0xad6f1e8a => 177
	i32 2912646636, ; 251: Google.Api.CommonProtos => 0xad9b75ec => 36
	i32 2916838712, ; 252: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 99
	i32 2919462931, ; 253: System.Numerics.Vectors.dll => 0xae037813 => 145
	i32 2959614098, ; 254: System.ComponentModel.dll => 0xb0682092 => 119
	i32 2972252294, ; 255: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 161
	i32 2978675010, ; 256: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 83
	i32 2987532451, ; 257: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 96
	i32 2990604888, ; 258: Google.Apis => 0xb2410258 => 39
	i32 3038032645, ; 259: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 260: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 90
	i32 3058099980, ; 261: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 107
	i32 3059408633, ; 262: Mono.Android.Runtime => 0xb65adef9 => 179
	i32 3059793426, ; 263: System.ComponentModel.Primitives => 0xb660be12 => 117
	i32 3071899978, ; 264: Xamarin.Firebase.Common.dll => 0xb719794a => 102
	i32 3077302341, ; 265: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3090735792, ; 266: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 163
	i32 3099732863, ; 267: System.Security.Claims.dll => 0xb8c22b7f => 160
	i32 3103600923, ; 268: System.Formats.Asn1 => 0xb8fd311b => 128
	i32 3106263381, ; 269: Grpc.Net.Common.dll => 0xb925d155 => 50
	i32 3122689689, ; 270: PARTPICKER => 0xba207699 => 110
	i32 3124832203, ; 271: System.Threading.Tasks.Extensions => 0xba4127cb => 168
	i32 3159123045, ; 272: System.Reflection.Primitives.dll => 0xbc4c6465 => 152
	i32 3178803400, ; 273: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 91
	i32 3203277885, ; 274: Google.Api.Gax.dll => 0xbeee243d => 37
	i32 3220365878, ; 275: System.Threading => 0xbff2e236 => 170
	i32 3230466174, ; 276: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 106
	i32 3258312781, ; 277: Xamarin.AndroidX.CardView => 0xc235e84d => 77
	i32 3265893370, ; 278: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 168
	i32 3277656639, ; 279: PARTPICKER.dll => 0xc35d123f => 110
	i32 3305363605, ; 280: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 281: System.Net.Requests.dll => 0xc5b097e4 => 140
	i32 3317135071, ; 282: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 82
	i32 3346324047, ; 283: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 92
	i32 3357674450, ; 284: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 285: Xamarin.AndroidX.Core => 0xc86c06e3 => 80
	i32 3366347497, ; 286: Java.Interop => 0xc8a662e9 => 178
	i32 3374999561, ; 287: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 94
	i32 3381016424, ; 288: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 289: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 54
	i32 3430777524, ; 290: netstandard => 0xcc7d82b4 => 176
	i32 3453592554, ; 291: Google.Apis.Core.dll => 0xcdd9a3ea => 41
	i32 3463511458, ; 292: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 293: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 118
	i32 3476120550, ; 294: Mono.Android => 0xcf3163e6 => 180
	i32 3479583265, ; 295: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 296: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3499097210, ; 297: Google.Protobuf.dll => 0xd08ffc7a => 46
	i32 3509114376, ; 298: System.Xml.Linq => 0xd128d608 => 171
	i32 3539954161, ; 299: System.Net.HttpListener => 0xd2ff69f1 => 136
	i32 3580758918, ; 300: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3598063517, ; 301: Google.Cloud.Firestore.V1 => 0xd676179d => 43
	i32 3608519521, ; 302: System.Linq.dll => 0xd715a361 => 133
	i32 3612435020, ; 303: System.Management.dll => 0xd751624c => 72
	i32 3624195450, ; 304: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 153
	i32 3641597786, ; 305: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 86
	i32 3643446276, ; 306: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 307: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 91
	i32 3645630983, ; 308: Google.Protobuf => 0xd94bea07 => 46
	i32 3657292374, ; 309: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 53
	i32 3660523487, ; 310: System.Net.NetworkInformation => 0xda2f27df => 138
	i32 3672681054, ; 311: Mono.Android.dll => 0xdae8aa5e => 180
	i32 3697841164, ; 312: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 313: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 90
	i32 3732100267, ; 314: System.Net.NameResolution => 0xde7354ab => 137
	i32 3748608112, ; 315: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 123
	i32 3757995660, ; 316: Google.Cloud.Location.dll => 0xdffe768c => 44
	i32 3786282454, ; 317: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 78
	i32 3792276235, ; 318: System.Collections.NonGeneric => 0xe2098b0b => 114
	i32 3793997468, ; 319: Google.Apis.Auth.dll => 0xe223ce9c => 40
	i32 3802395368, ; 320: System.Collections.Specialized.dll => 0xe2a3f2e8 => 115
	i32 3823082795, ; 321: System.Security.Cryptography.dll => 0xe3df9d2b => 164
	i32 3841636137, ; 322: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 55
	i32 3849253459, ; 323: System.Runtime.InteropServices.dll => 0xe56ef253 => 154
	i32 3870376305, ; 324: System.Net.HttpListener.dll => 0xe6b14171 => 136
	i32 3885497537, ; 325: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 144
	i32 3889960447, ; 326: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 327: System.Collections.Concurrent.dll => 0xe839deed => 112
	i32 3896760992, ; 328: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 80
	i32 3928044579, ; 329: System.Xml.ReaderWriter => 0xea213423 => 172
	i32 3931092270, ; 330: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 93
	i32 3955647286, ; 331: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 74
	i32 3970018735, ; 332: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 107
	i32 3980434154, ; 333: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 334: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 335: System.Diagnostics.Process.dll => 0xee9f991d => 124
	i32 4025784931, ; 336: System.Memory => 0xeff49a63 => 134
	i32 4046471985, ; 337: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 61
	i32 4054681211, ; 338: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 150
	i32 4056144661, ; 339: Google.Cloud.Location => 0xf1c3db15 => 44
	i32 4059682726, ; 340: Google.Apis.dll => 0xf1f9d7a6 => 39
	i32 4068434129, ; 341: System.Private.Xml.Linq.dll => 0xf27f60d1 => 148
	i32 4073602200, ; 342: System.Threading.dll => 0xf2ce3c98 => 170
	i32 4082882467, ; 343: Google.Apis.Auth => 0xf35bd7a3 => 40
	i32 4094352644, ; 344: Microsoft.Maui.Essentials.dll => 0xf40add04 => 63
	i32 4099507663, ; 345: System.Drawing.dll => 0xf45985cf => 127
	i32 4100113165, ; 346: System.Private.Uri => 0xf462c30d => 147
	i32 4102112229, ; 347: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 348: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 349: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 54
	i32 4147896353, ; 350: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 150
	i32 4150914736, ; 351: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4151237749, ; 352: System.Core => 0xf76edc75 => 121
	i32 4181436372, ; 353: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 158
	i32 4182413190, ; 354: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4200179444, ; 355: Plugin.FirebaseAuth => 0xfa59a6f4 => 69
	i32 4213026141, ; 356: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 123
	i32 4271975918, ; 357: Microsoft.Maui.Controls.dll => 0xfea12dee => 60
	i32 4274623895, ; 358: CommunityToolkit.Mvvm.dll => 0xfec99597 => 35
	i32 4274976490, ; 359: System.Runtime.Numerics => 0xfecef6ea => 156
	i32 4284549794, ; 360: Xamarin.Firebase.Components => 0xff610aa2 => 103
	i32 4292120959 ; 361: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [362 x i32] [
	i32 138, ; 0
	i32 137, ; 1
	i32 65, ; 2
	i32 169, ; 3
	i32 33, ; 4
	i32 162, ; 5
	i32 64, ; 6
	i32 154, ; 7
	i32 167, ; 8
	i32 144, ; 9
	i32 68, ; 10
	i32 162, ; 11
	i32 78, ; 12
	i32 97, ; 13
	i32 30, ; 14
	i32 31, ; 15
	i32 119, ; 16
	i32 111, ; 17
	i32 151, ; 18
	i32 2, ; 19
	i32 30, ; 20
	i32 73, ; 21
	i32 15, ; 22
	i32 85, ; 23
	i32 14, ; 24
	i32 50, ; 25
	i32 131, ; 26
	i32 48, ; 27
	i32 142, ; 28
	i32 169, ; 29
	i32 134, ; 30
	i32 49, ; 31
	i32 34, ; 32
	i32 69, ; 33
	i32 26, ; 34
	i32 116, ; 35
	i32 84, ; 36
	i32 163, ; 37
	i32 158, ; 38
	i32 175, ; 39
	i32 174, ; 40
	i32 146, ; 41
	i32 13, ; 42
	i32 7, ; 43
	i32 59, ; 44
	i32 56, ; 45
	i32 51, ; 46
	i32 21, ; 47
	i32 161, ; 48
	i32 82, ; 49
	i32 19, ; 50
	i32 43, ; 51
	i32 112, ; 52
	i32 141, ; 53
	i32 1, ; 54
	i32 171, ; 55
	i32 16, ; 56
	i32 4, ; 57
	i32 155, ; 58
	i32 140, ; 59
	i32 131, ; 60
	i32 130, ; 61
	i32 25, ; 62
	i32 58, ; 63
	i32 122, ; 64
	i32 147, ; 65
	i32 129, ; 66
	i32 117, ; 67
	i32 76, ; 68
	i32 28, ; 69
	i32 65, ; 70
	i32 66, ; 71
	i32 68, ; 72
	i32 105, ; 73
	i32 85, ; 74
	i32 173, ; 75
	i32 116, ; 76
	i32 95, ; 77
	i32 127, ; 78
	i32 55, ; 79
	i32 3, ; 80
	i32 74, ; 81
	i32 126, ; 82
	i32 132, ; 83
	i32 36, ; 84
	i32 87, ; 85
	i32 118, ; 86
	i32 108, ; 87
	i32 174, ; 88
	i32 100, ; 89
	i32 16, ; 90
	i32 71, ; 91
	i32 22, ; 92
	i32 92, ; 93
	i32 49, ; 94
	i32 20, ; 95
	i32 124, ; 96
	i32 35, ; 97
	i32 18, ; 98
	i32 2, ; 99
	i32 83, ; 100
	i32 133, ; 101
	i32 102, ; 102
	i32 32, ; 103
	i32 95, ; 104
	i32 79, ; 105
	i32 157, ; 106
	i32 101, ; 107
	i32 0, ; 108
	i32 105, ; 109
	i32 47, ; 110
	i32 128, ; 111
	i32 141, ; 112
	i32 6, ; 113
	i32 113, ; 114
	i32 130, ; 115
	i32 75, ; 116
	i32 59, ; 117
	i32 113, ; 118
	i32 129, ; 119
	i32 10, ; 120
	i32 5, ; 121
	i32 166, ; 122
	i32 25, ; 123
	i32 89, ; 124
	i32 99, ; 125
	i32 81, ; 126
	i32 135, ; 127
	i32 166, ; 128
	i32 159, ; 129
	i32 104, ; 130
	i32 139, ; 131
	i32 164, ; 132
	i32 77, ; 133
	i32 23, ; 134
	i32 1, ; 135
	i32 125, ; 136
	i32 97, ; 137
	i32 56, ; 138
	i32 121, ; 139
	i32 179, ; 140
	i32 48, ; 141
	i32 17, ; 142
	i32 84, ; 143
	i32 9, ; 144
	i32 51, ; 145
	i32 89, ; 146
	i32 108, ; 147
	i32 104, ; 148
	i32 93, ; 149
	i32 165, ; 150
	i32 157, ; 151
	i32 57, ; 152
	i32 29, ; 153
	i32 26, ; 154
	i32 132, ; 155
	i32 152, ; 156
	i32 101, ; 157
	i32 8, ; 158
	i32 47, ; 159
	i32 106, ; 160
	i32 114, ; 161
	i32 70, ; 162
	i32 148, ; 163
	i32 96, ; 164
	i32 52, ; 165
	i32 5, ; 166
	i32 87, ; 167
	i32 0, ; 168
	i32 149, ; 169
	i32 86, ; 170
	i32 4, ; 171
	i32 125, ; 172
	i32 159, ; 173
	i32 145, ; 174
	i32 120, ; 175
	i32 115, ; 176
	i32 62, ; 177
	i32 12, ; 178
	i32 70, ; 179
	i32 58, ; 180
	i32 57, ; 181
	i32 146, ; 182
	i32 109, ; 183
	i32 135, ; 184
	i32 14, ; 185
	i32 53, ; 186
	i32 8, ; 187
	i32 94, ; 188
	i32 143, ; 189
	i32 18, ; 190
	i32 177, ; 191
	i32 153, ; 192
	i32 139, ; 193
	i32 172, ; 194
	i32 52, ; 195
	i32 100, ; 196
	i32 13, ; 197
	i32 45, ; 198
	i32 10, ; 199
	i32 67, ; 200
	i32 120, ; 201
	i32 42, ; 202
	i32 143, ; 203
	i32 176, ; 204
	i32 178, ; 205
	i32 60, ; 206
	i32 67, ; 207
	i32 142, ; 208
	i32 37, ; 209
	i32 76, ; 210
	i32 151, ; 211
	i32 11, ; 212
	i32 111, ; 213
	i32 165, ; 214
	i32 20, ; 215
	i32 109, ; 216
	i32 149, ; 217
	i32 81, ; 218
	i32 15, ; 219
	i32 42, ; 220
	i32 155, ; 221
	i32 173, ; 222
	i32 126, ; 223
	i32 122, ; 224
	i32 160, ; 225
	i32 156, ; 226
	i32 73, ; 227
	i32 167, ; 228
	i32 75, ; 229
	i32 38, ; 230
	i32 21, ; 231
	i32 38, ; 232
	i32 61, ; 233
	i32 62, ; 234
	i32 98, ; 235
	i32 27, ; 236
	i32 64, ; 237
	i32 103, ; 238
	i32 6, ; 239
	i32 66, ; 240
	i32 79, ; 241
	i32 71, ; 242
	i32 19, ; 243
	i32 45, ; 244
	i32 98, ; 245
	i32 63, ; 246
	i32 41, ; 247
	i32 72, ; 248
	i32 175, ; 249
	i32 177, ; 250
	i32 36, ; 251
	i32 99, ; 252
	i32 145, ; 253
	i32 119, ; 254
	i32 161, ; 255
	i32 83, ; 256
	i32 96, ; 257
	i32 39, ; 258
	i32 34, ; 259
	i32 90, ; 260
	i32 107, ; 261
	i32 179, ; 262
	i32 117, ; 263
	i32 102, ; 264
	i32 12, ; 265
	i32 163, ; 266
	i32 160, ; 267
	i32 128, ; 268
	i32 50, ; 269
	i32 110, ; 270
	i32 168, ; 271
	i32 152, ; 272
	i32 91, ; 273
	i32 37, ; 274
	i32 170, ; 275
	i32 106, ; 276
	i32 77, ; 277
	i32 168, ; 278
	i32 110, ; 279
	i32 7, ; 280
	i32 140, ; 281
	i32 82, ; 282
	i32 92, ; 283
	i32 24, ; 284
	i32 80, ; 285
	i32 178, ; 286
	i32 94, ; 287
	i32 3, ; 288
	i32 54, ; 289
	i32 176, ; 290
	i32 41, ; 291
	i32 11, ; 292
	i32 118, ; 293
	i32 180, ; 294
	i32 24, ; 295
	i32 23, ; 296
	i32 46, ; 297
	i32 171, ; 298
	i32 136, ; 299
	i32 31, ; 300
	i32 43, ; 301
	i32 133, ; 302
	i32 72, ; 303
	i32 153, ; 304
	i32 86, ; 305
	i32 28, ; 306
	i32 91, ; 307
	i32 46, ; 308
	i32 53, ; 309
	i32 138, ; 310
	i32 180, ; 311
	i32 33, ; 312
	i32 90, ; 313
	i32 137, ; 314
	i32 123, ; 315
	i32 44, ; 316
	i32 78, ; 317
	i32 114, ; 318
	i32 40, ; 319
	i32 115, ; 320
	i32 164, ; 321
	i32 55, ; 322
	i32 154, ; 323
	i32 136, ; 324
	i32 144, ; 325
	i32 32, ; 326
	i32 112, ; 327
	i32 80, ; 328
	i32 172, ; 329
	i32 93, ; 330
	i32 74, ; 331
	i32 107, ; 332
	i32 27, ; 333
	i32 9, ; 334
	i32 124, ; 335
	i32 134, ; 336
	i32 61, ; 337
	i32 150, ; 338
	i32 44, ; 339
	i32 39, ; 340
	i32 148, ; 341
	i32 170, ; 342
	i32 40, ; 343
	i32 63, ; 344
	i32 127, ; 345
	i32 147, ; 346
	i32 22, ; 347
	i32 17, ; 348
	i32 54, ; 349
	i32 150, ; 350
	i32 29, ; 351
	i32 121, ; 352
	i32 158, ; 353
	i32 88, ; 354
	i32 69, ; 355
	i32 123, ; 356
	i32 60, ; 357
	i32 35, ; 358
	i32 156, ; 359
	i32 103, ; 360
	i32 88 ; 361
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
