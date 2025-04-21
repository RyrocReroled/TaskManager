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

@assembly_image_cache = dso_local local_unnamed_addr global [120 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [240 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 112
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 73
	i32 195452805, ; 5: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 6: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 7: System.ComponentModel => 0xc38ff48 => 90
	i32 280992041, ; 8: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 9: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 10: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 336156722, ; 11: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 12: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 356389973, ; 13: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 14: System.Threading.Thread.dll => 0x16a510e1 => 112
	i32 385762202, ; 15: System.Memory.dll => 0x16fe439a => 97
	i32 395744057, ; 16: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 17: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 18: System.Collections => 0x1a61054f => 87
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 59
	i32 469710990, ; 20: System.dll => 0x1bff388e => 115
	i32 478266081, ; 21: TaskReminder.dll => 0x1c81c2e1 => 84
	i32 498788369, ; 22: System.ObjectModel => 0x1dbae811 => 102
	i32 500358224, ; 23: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 24: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 504143952, ; 25: Plugin.LocalNotification.dll => 0x1e0ca050 => 48
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 27: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 28: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 57
	i32 627931235, ; 30: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 31: System.Text.Encodings.Web.dll => 0x27787397 => 109
	i32 663517072, ; 32: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 74
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 85
	i32 688181140, ; 34: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 35: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 36: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 37: System.Runtime.Loader.dll => 0x2b15ed29 => 106
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 100
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 94
	i32 777317022, ; 40: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 42: System.Private.Uri.dll => 0x311247b5 => 103
	i32 830298997, ; 43: System.IO.Compression.Brotli => 0x317d5b75 => 93
	i32 904024072, ; 44: System.ComponentModel.Primitives.dll => 0x35e25008 => 88
	i32 926902833, ; 45: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 992768348, ; 47: System.Collections.dll => 0x3b2c715c => 87
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 71
	i32 1028951442, ; 49: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 50: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1044663988, ; 52: System.Linq.Expressions.dll => 0x3e444eb4 => 95
	i32 1082857460, ; 53: System.ComponentModel.TypeConverter => 0x408b17f4 => 89
	i32 1084122840, ; 54: Xamarin.Kotlin.StdLib => 0x409e66d8 => 82
	i32 1098259244, ; 55: System => 0x41761b2c => 115
	i32 1118262833, ; 56: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 57: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 68
	i32 1203215381, ; 59: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 60: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1246548578, ; 61: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 53
	i32 1260983243, ; 62: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 58
	i32 1324164729, ; 64: System.Linq => 0x4eed2679 => 96
	i32 1373134921, ; 65: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 66: Xamarin.AndroidX.SavedState => 0x52114ed3 => 71
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 54
	i32 1430672901, ; 68: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1437299793, ; 69: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 61
	i32 1441095154, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 63
	i32 1461004990, ; 71: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 94
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 51
	i32 1470490898, ; 74: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 75: System.IO.Compression.Brotli.dll => 0x583e844f => 93
	i32 1493001747, ; 76: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 77: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1524747670, ; 78: Plugin.LocalNotification => 0x5ae1cd96 => 48
	i32 1543031311, ; 79: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 111
	i32 1551623176, ; 80: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 81: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 65
	i32 1624863272, ; 82: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 76
	i32 1636350590, ; 83: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 56
	i32 1639515021, ; 84: System.Net.Http.dll => 0x61b9038d => 98
	i32 1639986890, ; 85: System.Text.RegularExpressions => 0x61c036ca => 111
	i32 1657153582, ; 86: System.Runtime => 0x62c6282e => 107
	i32 1658251792, ; 87: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 77
	i32 1677501392, ; 88: System.Net.Primitives.dll => 0x63fca3d0 => 99
	i32 1679769178, ; 89: System.Security.Cryptography => 0x641f3e5a => 108
	i32 1729485958, ; 90: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1736233607, ; 91: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 92: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 93: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 73
	i32 1770582343, ; 94: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 95: Mono.Android.Runtime.dll => 0x6a216153 => 118
	i32 1782862114, ; 96: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 97: Xamarin.AndroidX.Fragment => 0x6a96652d => 59
	i32 1793755602, ; 98: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 65
	i32 1813058853, ; 100: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 82
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 77
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 69
	i32 1828688058, ; 103: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 104: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 105: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 106: System.Linq.Expressions => 0x6ec71a65 => 95
	i32 1875935024, ; 107: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1908813208, ; 108: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 79
	i32 1910275211, ; 109: System.Collections.NonGeneric.dll => 0x71dc7c8b => 86
	i32 1961813231, ; 110: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 72
	i32 1968388702, ; 111: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 112: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2025202353, ; 113: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 114: System.Private.Xml => 0x79eb68ee => 104
	i32 2055257422, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2066184531, ; 116: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 117: System.Runtime.dll => 0x7bf8cdab => 107
	i32 2090596640, ; 118: System.Numerics.Vectors => 0x7c9bf920 => 101
	i32 2127167465, ; 119: System.Console => 0x7ec9ffe9 => 91
	i32 2129483829, ; 120: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 78
	i32 2159891885, ; 121: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 122: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 123: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 124: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 125: System.ObjectModel.dll => 0x82b6c85e => 102
	i32 2201107256, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 83
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 98
	i32 2207618523, ; 128: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 129: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 130: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 131: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 70
	i32 2303942373, ; 132: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 133: System.Private.CoreLib.dll => 0x896b7878 => 116
	i32 2353062107, ; 134: System.Net.Primitives => 0x8c40e0db => 99
	i32 2368005991, ; 135: System.Xml.ReaderWriter.dll => 0x8d24e767 => 114
	i32 2371007202, ; 136: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 137: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 138: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 139: System.Console.dll => 0x912896e5 => 91
	i32 2475788418, ; 140: Java.Interop.dll => 0x93918882 => 117
	i32 2480646305, ; 141: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2550873716, ; 142: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 143: System.Text.Encodings.Web => 0x9930ee42 => 109
	i32 2593496499, ; 144: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 145: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 83
	i32 2617129537, ; 146: System.Private.Xml.dll => 0x9bfe3a41 => 104
	i32 2620871830, ; 147: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 56
	i32 2626831493, ; 148: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 149: System.Runtime.Loader => 0x9ec4cf01 => 106
	i32 2732626843, ; 150: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2737747696, ; 151: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 51
	i32 2752995522, ; 152: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 153: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 154: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2766642685, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 63
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 75
	i32 2780199943, ; 157: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 61
	i32 2785988530, ; 158: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 159: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2806116107, ; 160: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 161: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 54
	i32 2831556043, ; 162: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2847418871, ; 163: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 78
	i32 2853208004, ; 164: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 75
	i32 2861189240, ; 165: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 166: System.Private.CoreLib => 0xad6f1e8a => 116
	i32 2916838712, ; 167: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 76
	i32 2919462931, ; 168: System.Numerics.Vectors.dll => 0xae037813 => 101
	i32 2959614098, ; 169: System.ComponentModel.dll => 0xb0682092 => 90
	i32 2978675010, ; 170: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 58
	i32 2987532451, ; 171: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 72
	i32 3038032645, ; 172: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 173: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 66
	i32 3058099980, ; 174: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 81
	i32 3059408633, ; 175: Mono.Android.Runtime => 0xb65adef9 => 118
	i32 3059793426, ; 176: System.ComponentModel.Primitives => 0xb660be12 => 88
	i32 3077302341, ; 177: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 178: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 67
	i32 3220365878, ; 179: System.Threading => 0xbff2e236 => 113
	i32 3230466174, ; 180: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 79
	i32 3258312781, ; 181: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3305363605, ; 182: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 183: System.Net.Requests.dll => 0xc5b097e4 => 100
	i32 3317135071, ; 184: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 57
	i32 3346324047, ; 185: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 68
	i32 3357674450, ; 186: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 187: System.Text.Json => 0xc82afec1 => 110
	i32 3362522851, ; 188: Xamarin.AndroidX.Core => 0xc86c06e3 => 55
	i32 3366347497, ; 189: Java.Interop => 0xc8a662e9 => 117
	i32 3374999561, ; 190: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 70
	i32 3381016424, ; 191: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 192: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 193: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 194: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 89
	i32 3476120550, ; 195: Mono.Android => 0xcf3163e6 => 119
	i32 3479583265, ; 196: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 197: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 198: System.Text.Json.dll => 0xcfbaacae => 110
	i32 3494395880, ; 199: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 80
	i32 3580758918, ; 200: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 201: System.Linq.dll => 0xd715a361 => 96
	i32 3641597786, ; 202: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3643446276, ; 203: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 204: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 67
	i32 3657292374, ; 205: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 206: Mono.Android.dll => 0xdae8aa5e => 119
	i32 3697841164, ; 207: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 208: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 66
	i32 3748608112, ; 209: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 92
	i32 3792276235, ; 210: System.Collections.NonGeneric => 0xe2098b0b => 86
	i32 3823082795, ; 211: System.Security.Cryptography.dll => 0xe3df9d2b => 108
	i32 3841636137, ; 212: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 213: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3889960447, ; 214: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 215: System.Collections.Concurrent.dll => 0xe839deed => 85
	i32 3896760992, ; 216: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 55
	i32 3910130544, ; 217: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 53
	i32 3921031405, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 74
	i32 3928044579, ; 219: System.Xml.ReaderWriter => 0xea213423 => 114
	i32 3931092270, ; 220: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 69
	i32 3955647286, ; 221: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 3967165417, ; 222: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 80
	i32 3970018735, ; 223: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 81
	i32 3980434154, ; 224: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 225: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 226: System.Memory => 0xeff49a63 => 97
	i32 4046471985, ; 227: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 228: System.Threading.dll => 0xf2ce3c98 => 113
	i32 4094352644, ; 229: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 230: System.Private.Uri => 0xf462c30d => 103
	i32 4102112229, ; 231: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 232: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 233: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 234: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4169816574, ; 235: TaskReminder => 0xf88a59fe => 84
	i32 4182413190, ; 236: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 64
	i32 4213026141, ; 237: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 92
	i32 4271975918, ; 238: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 64
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [240 x i32] [
	i32 112, ; 0
	i32 33, ; 1
	i32 47, ; 2
	i32 105, ; 3
	i32 73, ; 4
	i32 30, ; 5
	i32 31, ; 6
	i32 90, ; 7
	i32 2, ; 8
	i32 30, ; 9
	i32 49, ; 10
	i32 15, ; 11
	i32 60, ; 12
	i32 14, ; 13
	i32 112, ; 14
	i32 97, ; 15
	i32 34, ; 16
	i32 26, ; 17
	i32 87, ; 18
	i32 59, ; 19
	i32 115, ; 20
	i32 84, ; 21
	i32 102, ; 22
	i32 13, ; 23
	i32 7, ; 24
	i32 48, ; 25
	i32 42, ; 26
	i32 39, ; 27
	i32 21, ; 28
	i32 57, ; 29
	i32 19, ; 30
	i32 109, ; 31
	i32 74, ; 32
	i32 85, ; 33
	i32 1, ; 34
	i32 16, ; 35
	i32 4, ; 36
	i32 106, ; 37
	i32 100, ; 38
	i32 94, ; 39
	i32 25, ; 40
	i32 41, ; 41
	i32 103, ; 42
	i32 93, ; 43
	i32 88, ; 44
	i32 28, ; 45
	i32 60, ; 46
	i32 87, ; 47
	i32 71, ; 48
	i32 38, ; 49
	i32 3, ; 50
	i32 50, ; 51
	i32 95, ; 52
	i32 89, ; 53
	i32 82, ; 54
	i32 115, ; 55
	i32 16, ; 56
	i32 22, ; 57
	i32 68, ; 58
	i32 20, ; 59
	i32 18, ; 60
	i32 53, ; 61
	i32 2, ; 62
	i32 58, ; 63
	i32 96, ; 64
	i32 32, ; 65
	i32 71, ; 66
	i32 54, ; 67
	i32 0, ; 68
	i32 61, ; 69
	i32 63, ; 70
	i32 6, ; 71
	i32 94, ; 72
	i32 51, ; 73
	i32 42, ; 74
	i32 93, ; 75
	i32 10, ; 76
	i32 5, ; 77
	i32 48, ; 78
	i32 111, ; 79
	i32 25, ; 80
	i32 65, ; 81
	i32 76, ; 82
	i32 56, ; 83
	i32 98, ; 84
	i32 111, ; 85
	i32 107, ; 86
	i32 77, ; 87
	i32 99, ; 88
	i32 108, ; 89
	i32 52, ; 90
	i32 23, ; 91
	i32 1, ; 92
	i32 73, ; 93
	i32 39, ; 94
	i32 118, ; 95
	i32 17, ; 96
	i32 59, ; 97
	i32 9, ; 98
	i32 65, ; 99
	i32 82, ; 100
	i32 77, ; 101
	i32 69, ; 102
	i32 40, ; 103
	i32 29, ; 104
	i32 26, ; 105
	i32 95, ; 106
	i32 8, ; 107
	i32 79, ; 108
	i32 86, ; 109
	i32 72, ; 110
	i32 35, ; 111
	i32 5, ; 112
	i32 0, ; 113
	i32 104, ; 114
	i32 62, ; 115
	i32 4, ; 116
	i32 107, ; 117
	i32 101, ; 118
	i32 91, ; 119
	i32 78, ; 120
	i32 45, ; 121
	i32 12, ; 122
	i32 41, ; 123
	i32 40, ; 124
	i32 102, ; 125
	i32 83, ; 126
	i32 98, ; 127
	i32 14, ; 128
	i32 36, ; 129
	i32 8, ; 130
	i32 70, ; 131
	i32 18, ; 132
	i32 116, ; 133
	i32 99, ; 134
	i32 114, ; 135
	i32 35, ; 136
	i32 13, ; 137
	i32 10, ; 138
	i32 91, ; 139
	i32 117, ; 140
	i32 43, ; 141
	i32 11, ; 142
	i32 109, ; 143
	i32 20, ; 144
	i32 83, ; 145
	i32 104, ; 146
	i32 56, ; 147
	i32 15, ; 148
	i32 106, ; 149
	i32 49, ; 150
	i32 51, ; 151
	i32 21, ; 152
	i32 44, ; 153
	i32 45, ; 154
	i32 63, ; 155
	i32 75, ; 156
	i32 61, ; 157
	i32 27, ; 158
	i32 47, ; 159
	i32 6, ; 160
	i32 54, ; 161
	i32 19, ; 162
	i32 78, ; 163
	i32 75, ; 164
	i32 46, ; 165
	i32 116, ; 166
	i32 76, ; 167
	i32 101, ; 168
	i32 90, ; 169
	i32 58, ; 170
	i32 72, ; 171
	i32 34, ; 172
	i32 66, ; 173
	i32 81, ; 174
	i32 118, ; 175
	i32 88, ; 176
	i32 12, ; 177
	i32 67, ; 178
	i32 113, ; 179
	i32 79, ; 180
	i32 52, ; 181
	i32 7, ; 182
	i32 100, ; 183
	i32 57, ; 184
	i32 68, ; 185
	i32 24, ; 186
	i32 110, ; 187
	i32 55, ; 188
	i32 117, ; 189
	i32 70, ; 190
	i32 3, ; 191
	i32 37, ; 192
	i32 11, ; 193
	i32 89, ; 194
	i32 119, ; 195
	i32 24, ; 196
	i32 23, ; 197
	i32 110, ; 198
	i32 80, ; 199
	i32 31, ; 200
	i32 96, ; 201
	i32 62, ; 202
	i32 28, ; 203
	i32 67, ; 204
	i32 36, ; 205
	i32 119, ; 206
	i32 33, ; 207
	i32 66, ; 208
	i32 92, ; 209
	i32 86, ; 210
	i32 108, ; 211
	i32 38, ; 212
	i32 105, ; 213
	i32 32, ; 214
	i32 85, ; 215
	i32 55, ; 216
	i32 53, ; 217
	i32 74, ; 218
	i32 114, ; 219
	i32 69, ; 220
	i32 50, ; 221
	i32 80, ; 222
	i32 81, ; 223
	i32 27, ; 224
	i32 9, ; 225
	i32 97, ; 226
	i32 44, ; 227
	i32 113, ; 228
	i32 46, ; 229
	i32 103, ; 230
	i32 22, ; 231
	i32 17, ; 232
	i32 37, ; 233
	i32 29, ; 234
	i32 84, ; 235
	i32 64, ; 236
	i32 92, ; 237
	i32 43, ; 238
	i32 64 ; 239
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
