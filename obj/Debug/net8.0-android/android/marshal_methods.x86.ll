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

@assembly_image_cache = dso_local local_unnamed_addr global [322 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [638 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 242
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 278
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 40744412, ; 7: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 211
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 317
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 193
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 260
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 260
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 215
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 262
	i32 184328833, ; 24: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 25: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 314
	i32 199333315, ; 26: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 315
	i32 205061960, ; 27: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 28: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 208
	i32 220171995, ; 29: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 236
	i32 230752869, ; 31: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 32: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 33: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 35: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 219
	i32 276479776, ; 36: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 238
	i32 280482487, ; 38: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 235
	i32 280992041, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 286
	i32 291076382, ; 40: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 41: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 42: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 314
	i32 318968648, ; 43: Xamarin.AndroidX.Activity.dll => 0x13031348 => 199
	i32 321597661, ; 44: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 45: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 299
	i32 342366114, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 237
	i32 356389973, ; 47: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 298
	i32 360082299, ; 48: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 49: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 50: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 51: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 52: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 53: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 54: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 55: _Microsoft.Android.Resource.Designer => 0x17969339 => 318
	i32 403441872, ; 56: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 57: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 310
	i32 441335492, ; 58: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 220
	i32 442521989, ; 59: Xamarin.Essentials => 0x1a605985 => 272
	i32 442565967, ; 60: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 61: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 233
	i32 451504562, ; 62: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 63: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 64: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 65: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 66: System.dll => 0x1bff388e => 164
	i32 476646585, ; 67: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 235
	i32 486930444, ; 68: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 248
	i32 498788369, ; 69: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 70: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 297
	i32 503918385, ; 71: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 291
	i32 513247710, ; 72: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 187
	i32 526420162, ; 73: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 74: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 75: Microsoft.Extensions.Logging => 0x20216150 => 183
	i32 540030774, ; 76: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 77: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 78: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 79: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 80: Jsr305Binding => 0x213954e7 => 275
	i32 569601784, ; 81: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 271
	i32 577335427, ; 82: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 83: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 305
	i32 597488923, ; 84: CommunityToolkit.Maui => 0x239cf51b => 174
	i32 601371474, ; 85: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 86: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 87: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 88: Xamarin.AndroidX.CustomView => 0x2568904f => 225
	i32 627931235, ; 89: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 303
	i32 639843206, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 231
	i32 643868501, ; 91: System.Net => 0x2660a755 => 81
	i32 662205335, ; 92: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 93: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 267
	i32 666292255, ; 94: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 206
	i32 672442732, ; 95: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 96: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 97: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 285
	i32 690569205, ; 98: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 99: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 281
	i32 693804605, ; 100: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 101: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 102: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 279
	i32 700358131, ; 103: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 104: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 300
	i32 709557578, ; 105: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 288
	i32 722857257, ; 106: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 107: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 108: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 109: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 196
	i32 759454413, ; 110: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 111: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 112: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 113: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 309
	i32 782533833, ; 114: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 274
	i32 789151979, ; 115: Microsoft.Extensions.Options => 0x2f0980eb => 186
	i32 790371945, ; 116: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 226
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 240
	i32 823281589, ; 119: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 120: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 121: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 122: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 123: Xamarin.AndroidX.Print => 0x3246f6cd => 253
	i32 873119928, ; 124: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 125: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 126: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 127: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 128: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 129: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 312
	i32 928116545, ; 130: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 278
	i32 952186615, ; 131: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 966729478, ; 132: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 276
	i32 967690846, ; 133: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 237
	i32 975236339, ; 134: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 135: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 136: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 137: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 138: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 139: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 140: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 141: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 257
	i32 1019214401, ; 142: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 143: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 182
	i32 1029334545, ; 144: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 287
	i32 1031528504, ; 145: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 277
	i32 1035644815, ; 146: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 204
	i32 1036536393, ; 147: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 148: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 149: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 244
	i32 1061503568, ; 150: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 274
	i32 1067306892, ; 151: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 152: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 153: Xamarin.Kotlin.StdLib => 0x409e66d8 => 280
	i32 1098259244, ; 154: System => 0x41761b2c => 164
	i32 1118262833, ; 155: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 300
	i32 1121599056, ; 156: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 243
	i32 1127624469, ; 157: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 185
	i32 1149092582, ; 158: Xamarin.AndroidX.Window => 0x447dc2e6 => 270
	i32 1168523401, ; 159: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 306
	i32 1170634674, ; 160: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 161: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 266
	i32 1175944061, ; 162: Camera.MAUI => 0x46177b7d => 173
	i32 1178241025, ; 163: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 251
	i32 1203215381, ; 164: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 304
	i32 1204270330, ; 165: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 206
	i32 1208641965, ; 166: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 167: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 168: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 302
	i32 1243150071, ; 169: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 271
	i32 1246548578, ; 170: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 216
	i32 1253011324, ; 171: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 172: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 286
	i32 1264511973, ; 173: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 261
	i32 1264890200, ; 174: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 282
	i32 1267360935, ; 175: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 265
	i32 1273260888, ; 176: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 217
	i32 1275534314, ; 177: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 281
	i32 1278448581, ; 178: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 203
	i32 1293217323, ; 179: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 228
	i32 1309188875, ; 180: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 181: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 270
	i32 1324164729, ; 182: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 183: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 184: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 185: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 316
	i32 1376866003, ; 186: Xamarin.AndroidX.SavedState => 0x52114ed3 => 257
	i32 1379779777, ; 187: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 188: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 189: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 221
	i32 1408764838, ; 190: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 191: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 192: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 193: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 284
	i32 1434145427, ; 194: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 195: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 276
	i32 1439761251, ; 196: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 197: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 198: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 199: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 200: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 201: es\Microsoft.Maui.Controls.resources => 0x57152abe => 290
	i32 1461234159, ; 202: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 203: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 204: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 205: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 205
	i32 1470490898, ; 206: Microsoft.Extensions.Primitives => 0x57a5e912 => 187
	i32 1479771757, ; 207: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 208: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 209: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 210: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 258
	i32 1493001747, ; 211: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 294
	i32 1514721132, ; 212: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 289
	i32 1536373174, ; 213: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 214: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 215: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 216: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 217: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 309
	i32 1565862583, ; 218: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 219: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 220: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 221: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 222: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 227
	i32 1592978981, ; 223: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 224: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 277
	i32 1601112923, ; 225: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 226: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618067638, ; 227: System.Speech => 0x6071c0b6 => 194
	i32 1618516317, ; 228: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 229: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 247
	i32 1622358360, ; 230: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 231: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 269
	i32 1634654947, ; 232: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 233: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 231
	i32 1636350590, ; 234: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 224
	i32 1639515021, ; 235: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 236: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 237: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 238: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 239: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 263
	i32 1658251792, ; 240: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 273
	i32 1670060433, ; 241: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 219
	i32 1675553242, ; 242: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 243: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 244: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 245: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 246: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 247: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 248: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 249: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 240
	i32 1726116996, ; 250: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 251: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 252: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 214
	i32 1736233607, ; 253: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 307
	i32 1743415430, ; 254: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 285
	i32 1744735666, ; 255: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 256: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 257: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 258: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 259: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 260: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 261: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 262
	i32 1770582343, ; 262: Microsoft.Extensions.Logging.dll => 0x6988f147 => 183
	i32 1776026572, ; 263: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 264: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 265: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 266: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 301
	i32 1788241197, ; 267: Xamarin.AndroidX.Fragment => 0x6a96652d => 233
	i32 1793755602, ; 268: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 293
	i32 1808609942, ; 269: Xamarin.AndroidX.Loader => 0x6bcd3296 => 247
	i32 1813058853, ; 270: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 280
	i32 1813201214, ; 271: Xamarin.Google.Android.Material => 0x6c13413e => 273
	i32 1818569960, ; 272: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 252
	i32 1818787751, ; 273: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 274: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 275: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 276: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 184
	i32 1842015223, ; 277: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 313
	i32 1847515442, ; 278: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 196
	i32 1853025655, ; 279: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 310
	i32 1858542181, ; 280: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1866818530, ; 281: Xamarin.AndroidX.Camera.Video => 0x6f4563e2 => 212
	i32 1867746548, ; 282: Xamarin.Essentials.dll => 0x6f538cf4 => 272
	i32 1870277092, ; 283: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 284: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 292
	i32 1879696579, ; 285: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 286: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 207
	i32 1888955245, ; 287: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 288: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 289: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 290: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 291: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 292: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 293: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 294: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 259
	i32 1968388702, ; 295: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 179
	i32 1985761444, ; 296: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 198
	i32 2003115576, ; 297: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 289
	i32 2011961780, ; 298: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2016668428, ; 299: CommunityToolkit.Maui.Camera.dll => 0x7833eb0c => 175
	i32 2019465201, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 244
	i32 2025202353, ; 301: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 284
	i32 2031763787, ; 302: Xamarin.Android.Glide => 0x791a414b => 195
	i32 2045470958, ; 303: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 304: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 239
	i32 2060060697, ; 305: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 306: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 288
	i32 2070888862, ; 307: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 308: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 309: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2107842382, ; 310: NicolaBlindAssistant.dll => 0x7da31f4e => 0
	i32 2127167465, ; 311: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 312: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 313: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 314: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 315: Microsoft.Maui => 0x80bd55ad => 191
	i32 2169148018, ; 316: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 296
	i32 2179622097, ; 317: Emgu.CV => 0x81ea64d1 => 177
	i32 2181898931, ; 318: Microsoft.Extensions.Options.dll => 0x820d22b3 => 186
	i32 2192057212, ; 319: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 184
	i32 2193016926, ; 320: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 321: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 283
	i32 2201231467, ; 322: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 323: it\Microsoft.Maui.Controls.resources => 0x839595db => 298
	i32 2217644978, ; 324: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 266
	i32 2222056684, ; 325: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 326: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 248
	i32 2252106437, ; 327: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 328: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 329: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 330: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 180
	i32 2267999099, ; 331: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 197
	i32 2270573516, ; 332: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 292
	i32 2279755925, ; 333: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 255
	i32 2293034957, ; 334: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 335: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 336: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 337: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 302
	i32 2305521784, ; 338: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 339: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 201
	i32 2320631194, ; 340: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 341: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 342: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 343: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 344: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 345: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 179
	i32 2378619854, ; 346: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 347: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 348: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 297
	i32 2401565422, ; 349: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 350: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 230
	i32 2418341376, ; 351: Xamarin.AndroidX.Camera.Video.dll => 0x9024f600 => 212
	i32 2421380589, ; 352: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 353: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 217
	i32 2427813419, ; 354: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 294
	i32 2435356389, ; 355: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 356: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 357: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 358: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 359: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 360: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 220
	i32 2471841756, ; 361: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 362: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 363: Microsoft.Maui.Controls => 0x93dba8a1 => 189
	i32 2483903535, ; 364: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 365: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 366: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 367: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 368: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 242
	i32 2522472828, ; 369: Xamarin.Android.Glide.dll => 0x9659e17c => 195
	i32 2538310050, ; 370: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 371: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 295
	i32 2562349572, ; 372: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 373: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 374: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 243
	i32 2581819634, ; 375: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 265
	i32 2585220780, ; 376: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 377: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 378: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 379: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 304
	i32 2605712449, ; 380: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 283
	i32 2615233544, ; 381: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 234
	i32 2616218305, ; 382: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 185
	i32 2617129537, ; 383: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 384: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 385: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 224
	i32 2624644809, ; 386: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 229
	i32 2626831493, ; 387: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 299
	i32 2627185994, ; 388: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 389: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 390: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 238
	i32 2663391936, ; 391: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 197
	i32 2663698177, ; 392: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 393: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 394: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 395: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 282
	i32 2676780864, ; 396: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 397: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 398: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 399: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 263
	i32 2701298998, ; 400: Emgu.CV.dll => 0xa1028d36 => 177
	i32 2715334215, ; 401: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 402: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 403: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 404: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 405: Xamarin.AndroidX.Activity => 0xa2e0939b => 199
	i32 2735172069, ; 406: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 407: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 205
	i32 2740948882, ; 408: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 409: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 410: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 305
	i32 2758225723, ; 411: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 190
	i32 2764765095, ; 412: Microsoft.Maui.dll => 0xa4caf7a7 => 191
	i32 2765824710, ; 413: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 414: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 279
	i32 2778768386, ; 415: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 268
	i32 2779977773, ; 416: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 256
	i32 2785988530, ; 417: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 311
	i32 2788224221, ; 418: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 234
	i32 2801831435, ; 419: Microsoft.Maui.Graphics => 0xa7008e0b => 193
	i32 2803228030, ; 420: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 421: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 290
	i32 2810250172, ; 422: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 221
	i32 2819470561, ; 423: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 424: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 425: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 256
	i32 2824502124, ; 426: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 427: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 303
	i32 2838993487, ; 428: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 245
	i32 2849599387, ; 429: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 430: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 268
	i32 2855708567, ; 431: Xamarin.AndroidX.Transition => 0xaa36a797 => 264
	i32 2861098320, ; 432: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 433: Microsoft.Maui.Essentials => 0xaa8a4878 => 192
	i32 2868488919, ; 434: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 435: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 200
	i32 2875164099, ; 436: Jsr305Binding.dll => 0xab5f85c3 => 275
	i32 2875220617, ; 437: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 438: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 232
	i32 2887636118, ; 439: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 440: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 441: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 442: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 443: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 444: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 445: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 269
	i32 2918854544, ; 446: System.Speech.dll => 0xadfa2f90 => 194
	i32 2919462931, ; 447: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 448: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 202
	i32 2936416060, ; 449: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 450: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 451: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 452: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2965157864, ; 453: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 213
	i32 2968338931, ; 454: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 455: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 456: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 228
	i32 2987532451, ; 457: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 259
	i32 2991449226, ; 458: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 210
	i32 2996846495, ; 459: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 241
	i32 3000842441, ; 460: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 213
	i32 3016983068, ; 461: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 261
	i32 3023353419, ; 462: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 463: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 236
	i32 3038032645, ; 464: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 318
	i32 3047751430, ; 465: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 210
	i32 3056245963, ; 466: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 258
	i32 3057625584, ; 467: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 249
	i32 3059408633, ; 468: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 469: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 470: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 471: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 296
	i32 3090735792, ; 472: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 473: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 474: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 475: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 476: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 477: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 478: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 479: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 480: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 481: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 482: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 483: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 250
	i32 3192346100, ; 484: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 485: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 486: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 487: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 488: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 227
	i32 3220365878, ; 489: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 490: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 491: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 492: Xamarin.AndroidX.CardView => 0xc235e84d => 214
	i32 3265493905, ; 493: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 494: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 495: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 496: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 497: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 498: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 499: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 500: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 501: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 291
	i32 3316684772, ; 502: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 503: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 225
	i32 3317144872, ; 504: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 505: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 207
	i32 3345895724, ; 506: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 254
	i32 3346324047, ; 507: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 251
	i32 3357674450, ; 508: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 308
	i32 3358260929, ; 509: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 510: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 200
	i32 3362522851, ; 511: Xamarin.AndroidX.Core => 0xc86c06e3 => 222
	i32 3366347497, ; 512: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 513: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 255
	i32 3381016424, ; 514: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 287
	i32 3395150330, ; 515: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 516: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 517: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 226
	i32 3408777319, ; 518: NicolaBlindAssistant => 0xcb2dd067 => 0
	i32 3412610236, ; 519: CommunityToolkit.Maui.Camera => 0xcb684cbc => 175
	i32 3413944578, ; 520: Xamarin.AndroidX.Camera.Camera2.dll => 0xcb7ca902 => 209
	i32 3421910702, ; 521: Xamarin.AndroidX.Camera.Camera2 => 0xcbf636ae => 209
	i32 3428513518, ; 522: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 181
	i32 3429136800, ; 523: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 524: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 525: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 229
	i32 3445260447, ; 526: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 527: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 188
	i32 3463511458, ; 528: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 295
	i32 3471940407, ; 529: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 530: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 531: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 308
	i32 3484440000, ; 532: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 307
	i32 3485117614, ; 533: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 534: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 535: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 218
	i32 3509114376, ; 536: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 537: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 538: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 539: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 540: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 541: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 542: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 315
	i32 3597029428, ; 543: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 198
	i32 3598340787, ; 544: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 545: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 546: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 547: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 253
	i32 3633644679, ; 548: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 202
	i32 3638274909, ; 549: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 550: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 239
	i32 3643446276, ; 551: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 312
	i32 3643854240, ; 552: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 250
	i32 3645089577, ; 553: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 554: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 180
	i32 3660523487, ; 555: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 556: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676461095, ; 557: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 211
	i32 3682565725, ; 558: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 208
	i32 3684561358, ; 559: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 218
	i32 3697841164, ; 560: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 317
	i32 3700866549, ; 561: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 562: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 223
	i32 3716563718, ; 563: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 564: Xamarin.AndroidX.Annotation => 0xdda814c6 => 201
	i32 3724971120, ; 565: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 249
	i32 3732100267, ; 566: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 567: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 568: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 569: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 570: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 215
	i32 3792276235, ; 571: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 572: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 188
	i32 3802395368, ; 573: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 574: CommunityToolkit.Maui.dll => 0xe3886bf7 => 174
	i32 3819260425, ; 575: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 576: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 577: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 578: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 182
	i32 3844307129, ; 579: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 580: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 581: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 582: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 583: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 584: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 585: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 264
	i32 3888767677, ; 586: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 254
	i32 3889960447, ; 587: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 316
	i32 3896106733, ; 588: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 589: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 222
	i32 3901907137, ; 590: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 591: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 216
	i32 3920810846, ; 592: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 593: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 267
	i32 3928044579, ; 594: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 595: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 596: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 252
	i32 3945713374, ; 597: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 598: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 599: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 204
	i32 3959773229, ; 600: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 241
	i32 3980434154, ; 601: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 311
	i32 3987592930, ; 602: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 293
	i32 4003436829, ; 603: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 604: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 203
	i32 4025784931, ; 605: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 606: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 190
	i32 4054681211, ; 607: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 608: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 609: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 610: Microsoft.Maui.Essentials.dll => 0xf40add04 => 192
	i32 4099507663, ; 611: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 612: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 613: Xamarin.AndroidX.Emoji2 => 0xf479582c => 230
	i32 4102112229, ; 614: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 306
	i32 4125707920, ; 615: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 301
	i32 4126470640, ; 616: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 181
	i32 4127667938, ; 617: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 618: System.AppContext => 0xf6318da0 => 6
	i32 4142654081, ; 619: Camera.MAUI.dll => 0xf6ebe281 => 173
	i32 4147896353, ; 620: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 621: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 313
	i32 4151237749, ; 622: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 623: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 624: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 625: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 626: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 627: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 246
	i32 4185676441, ; 628: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 629: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 630: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 631: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 223
	i32 4258378803, ; 632: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 245
	i32 4260525087, ; 633: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 634: Microsoft.Maui.Controls.dll => 0xfea12dee => 189
	i32 4274976490, ; 635: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 636: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 246
	i32 4294763496 ; 637: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 232
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [638 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 242, ; 3
	i32 278, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 211, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 317, ; 10
	i32 124, ; 11
	i32 193, ; 12
	i32 102, ; 13
	i32 260, ; 14
	i32 107, ; 15
	i32 260, ; 16
	i32 139, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 215, ; 21
	i32 132, ; 22
	i32 262, ; 23
	i32 151, ; 24
	i32 314, ; 25
	i32 315, ; 26
	i32 18, ; 27
	i32 208, ; 28
	i32 26, ; 29
	i32 236, ; 30
	i32 1, ; 31
	i32 59, ; 32
	i32 42, ; 33
	i32 91, ; 34
	i32 219, ; 35
	i32 147, ; 36
	i32 238, ; 37
	i32 235, ; 38
	i32 286, ; 39
	i32 54, ; 40
	i32 69, ; 41
	i32 314, ; 42
	i32 199, ; 43
	i32 83, ; 44
	i32 299, ; 45
	i32 237, ; 46
	i32 298, ; 47
	i32 131, ; 48
	i32 55, ; 49
	i32 149, ; 50
	i32 74, ; 51
	i32 145, ; 52
	i32 62, ; 53
	i32 146, ; 54
	i32 318, ; 55
	i32 165, ; 56
	i32 310, ; 57
	i32 220, ; 58
	i32 272, ; 59
	i32 12, ; 60
	i32 233, ; 61
	i32 125, ; 62
	i32 152, ; 63
	i32 113, ; 64
	i32 166, ; 65
	i32 164, ; 66
	i32 235, ; 67
	i32 248, ; 68
	i32 84, ; 69
	i32 297, ; 70
	i32 291, ; 71
	i32 187, ; 72
	i32 150, ; 73
	i32 60, ; 74
	i32 183, ; 75
	i32 51, ; 76
	i32 103, ; 77
	i32 114, ; 78
	i32 40, ; 79
	i32 275, ; 80
	i32 271, ; 81
	i32 120, ; 82
	i32 305, ; 83
	i32 174, ; 84
	i32 52, ; 85
	i32 44, ; 86
	i32 119, ; 87
	i32 225, ; 88
	i32 303, ; 89
	i32 231, ; 90
	i32 81, ; 91
	i32 136, ; 92
	i32 267, ; 93
	i32 206, ; 94
	i32 8, ; 95
	i32 73, ; 96
	i32 285, ; 97
	i32 155, ; 98
	i32 281, ; 99
	i32 154, ; 100
	i32 92, ; 101
	i32 279, ; 102
	i32 45, ; 103
	i32 300, ; 104
	i32 288, ; 105
	i32 109, ; 106
	i32 129, ; 107
	i32 25, ; 108
	i32 196, ; 109
	i32 72, ; 110
	i32 55, ; 111
	i32 46, ; 112
	i32 309, ; 113
	i32 274, ; 114
	i32 186, ; 115
	i32 226, ; 116
	i32 22, ; 117
	i32 240, ; 118
	i32 86, ; 119
	i32 43, ; 120
	i32 160, ; 121
	i32 71, ; 122
	i32 253, ; 123
	i32 3, ; 124
	i32 42, ; 125
	i32 63, ; 126
	i32 16, ; 127
	i32 53, ; 128
	i32 312, ; 129
	i32 278, ; 130
	i32 105, ; 131
	i32 276, ; 132
	i32 237, ; 133
	i32 34, ; 134
	i32 158, ; 135
	i32 85, ; 136
	i32 32, ; 137
	i32 12, ; 138
	i32 51, ; 139
	i32 56, ; 140
	i32 257, ; 141
	i32 36, ; 142
	i32 182, ; 143
	i32 287, ; 144
	i32 277, ; 145
	i32 204, ; 146
	i32 35, ; 147
	i32 58, ; 148
	i32 244, ; 149
	i32 274, ; 150
	i32 178, ; 151
	i32 17, ; 152
	i32 280, ; 153
	i32 164, ; 154
	i32 300, ; 155
	i32 243, ; 156
	i32 185, ; 157
	i32 270, ; 158
	i32 306, ; 159
	i32 153, ; 160
	i32 266, ; 161
	i32 173, ; 162
	i32 251, ; 163
	i32 304, ; 164
	i32 206, ; 165
	i32 29, ; 166
	i32 52, ; 167
	i32 302, ; 168
	i32 271, ; 169
	i32 216, ; 170
	i32 5, ; 171
	i32 286, ; 172
	i32 261, ; 173
	i32 282, ; 174
	i32 265, ; 175
	i32 217, ; 176
	i32 281, ; 177
	i32 203, ; 178
	i32 228, ; 179
	i32 85, ; 180
	i32 270, ; 181
	i32 61, ; 182
	i32 112, ; 183
	i32 57, ; 184
	i32 316, ; 185
	i32 257, ; 186
	i32 99, ; 187
	i32 19, ; 188
	i32 221, ; 189
	i32 111, ; 190
	i32 101, ; 191
	i32 102, ; 192
	i32 284, ; 193
	i32 104, ; 194
	i32 276, ; 195
	i32 71, ; 196
	i32 38, ; 197
	i32 32, ; 198
	i32 103, ; 199
	i32 73, ; 200
	i32 290, ; 201
	i32 9, ; 202
	i32 123, ; 203
	i32 46, ; 204
	i32 205, ; 205
	i32 187, ; 206
	i32 9, ; 207
	i32 43, ; 208
	i32 4, ; 209
	i32 258, ; 210
	i32 294, ; 211
	i32 289, ; 212
	i32 31, ; 213
	i32 138, ; 214
	i32 92, ; 215
	i32 93, ; 216
	i32 309, ; 217
	i32 49, ; 218
	i32 141, ; 219
	i32 112, ; 220
	i32 140, ; 221
	i32 227, ; 222
	i32 115, ; 223
	i32 277, ; 224
	i32 157, ; 225
	i32 76, ; 226
	i32 194, ; 227
	i32 79, ; 228
	i32 247, ; 229
	i32 37, ; 230
	i32 269, ; 231
	i32 176, ; 232
	i32 231, ; 233
	i32 224, ; 234
	i32 64, ; 235
	i32 138, ; 236
	i32 15, ; 237
	i32 116, ; 238
	i32 263, ; 239
	i32 273, ; 240
	i32 219, ; 241
	i32 48, ; 242
	i32 70, ; 243
	i32 80, ; 244
	i32 126, ; 245
	i32 94, ; 246
	i32 121, ; 247
	i32 26, ; 248
	i32 240, ; 249
	i32 97, ; 250
	i32 28, ; 251
	i32 214, ; 252
	i32 307, ; 253
	i32 285, ; 254
	i32 149, ; 255
	i32 169, ; 256
	i32 4, ; 257
	i32 98, ; 258
	i32 33, ; 259
	i32 93, ; 260
	i32 262, ; 261
	i32 183, ; 262
	i32 21, ; 263
	i32 41, ; 264
	i32 170, ; 265
	i32 301, ; 266
	i32 233, ; 267
	i32 293, ; 268
	i32 247, ; 269
	i32 280, ; 270
	i32 273, ; 271
	i32 252, ; 272
	i32 2, ; 273
	i32 134, ; 274
	i32 111, ; 275
	i32 184, ; 276
	i32 313, ; 277
	i32 196, ; 278
	i32 310, ; 279
	i32 58, ; 280
	i32 212, ; 281
	i32 272, ; 282
	i32 95, ; 283
	i32 292, ; 284
	i32 39, ; 285
	i32 207, ; 286
	i32 25, ; 287
	i32 94, ; 288
	i32 89, ; 289
	i32 99, ; 290
	i32 10, ; 291
	i32 87, ; 292
	i32 100, ; 293
	i32 259, ; 294
	i32 179, ; 295
	i32 198, ; 296
	i32 289, ; 297
	i32 7, ; 298
	i32 175, ; 299
	i32 244, ; 300
	i32 284, ; 301
	i32 195, ; 302
	i32 88, ; 303
	i32 239, ; 304
	i32 154, ; 305
	i32 288, ; 306
	i32 33, ; 307
	i32 116, ; 308
	i32 82, ; 309
	i32 0, ; 310
	i32 20, ; 311
	i32 11, ; 312
	i32 162, ; 313
	i32 3, ; 314
	i32 191, ; 315
	i32 296, ; 316
	i32 177, ; 317
	i32 186, ; 318
	i32 184, ; 319
	i32 84, ; 320
	i32 283, ; 321
	i32 64, ; 322
	i32 298, ; 323
	i32 266, ; 324
	i32 143, ; 325
	i32 248, ; 326
	i32 157, ; 327
	i32 41, ; 328
	i32 117, ; 329
	i32 180, ; 330
	i32 197, ; 331
	i32 292, ; 332
	i32 255, ; 333
	i32 131, ; 334
	i32 75, ; 335
	i32 66, ; 336
	i32 302, ; 337
	i32 172, ; 338
	i32 201, ; 339
	i32 143, ; 340
	i32 106, ; 341
	i32 151, ; 342
	i32 70, ; 343
	i32 156, ; 344
	i32 179, ; 345
	i32 121, ; 346
	i32 127, ; 347
	i32 297, ; 348
	i32 152, ; 349
	i32 230, ; 350
	i32 212, ; 351
	i32 141, ; 352
	i32 217, ; 353
	i32 294, ; 354
	i32 20, ; 355
	i32 14, ; 356
	i32 135, ; 357
	i32 75, ; 358
	i32 59, ; 359
	i32 220, ; 360
	i32 167, ; 361
	i32 168, ; 362
	i32 189, ; 363
	i32 15, ; 364
	i32 74, ; 365
	i32 6, ; 366
	i32 23, ; 367
	i32 242, ; 368
	i32 195, ; 369
	i32 91, ; 370
	i32 295, ; 371
	i32 1, ; 372
	i32 136, ; 373
	i32 243, ; 374
	i32 265, ; 375
	i32 134, ; 376
	i32 69, ; 377
	i32 146, ; 378
	i32 304, ; 379
	i32 283, ; 380
	i32 234, ; 381
	i32 185, ; 382
	i32 88, ; 383
	i32 96, ; 384
	i32 224, ; 385
	i32 229, ; 386
	i32 299, ; 387
	i32 31, ; 388
	i32 45, ; 389
	i32 238, ; 390
	i32 197, ; 391
	i32 109, ; 392
	i32 158, ; 393
	i32 35, ; 394
	i32 282, ; 395
	i32 22, ; 396
	i32 114, ; 397
	i32 57, ; 398
	i32 263, ; 399
	i32 177, ; 400
	i32 144, ; 401
	i32 118, ; 402
	i32 120, ; 403
	i32 110, ; 404
	i32 199, ; 405
	i32 139, ; 406
	i32 205, ; 407
	i32 54, ; 408
	i32 105, ; 409
	i32 305, ; 410
	i32 190, ; 411
	i32 191, ; 412
	i32 133, ; 413
	i32 279, ; 414
	i32 268, ; 415
	i32 256, ; 416
	i32 311, ; 417
	i32 234, ; 418
	i32 193, ; 419
	i32 159, ; 420
	i32 290, ; 421
	i32 221, ; 422
	i32 163, ; 423
	i32 132, ; 424
	i32 256, ; 425
	i32 161, ; 426
	i32 303, ; 427
	i32 245, ; 428
	i32 140, ; 429
	i32 268, ; 430
	i32 264, ; 431
	i32 169, ; 432
	i32 192, ; 433
	i32 176, ; 434
	i32 200, ; 435
	i32 275, ; 436
	i32 40, ; 437
	i32 232, ; 438
	i32 81, ; 439
	i32 56, ; 440
	i32 37, ; 441
	i32 97, ; 442
	i32 166, ; 443
	i32 172, ; 444
	i32 269, ; 445
	i32 194, ; 446
	i32 82, ; 447
	i32 202, ; 448
	i32 98, ; 449
	i32 30, ; 450
	i32 159, ; 451
	i32 18, ; 452
	i32 213, ; 453
	i32 127, ; 454
	i32 119, ; 455
	i32 228, ; 456
	i32 259, ; 457
	i32 210, ; 458
	i32 241, ; 459
	i32 213, ; 460
	i32 261, ; 461
	i32 165, ; 462
	i32 236, ; 463
	i32 318, ; 464
	i32 210, ; 465
	i32 258, ; 466
	i32 249, ; 467
	i32 170, ; 468
	i32 16, ; 469
	i32 144, ; 470
	i32 296, ; 471
	i32 125, ; 472
	i32 118, ; 473
	i32 38, ; 474
	i32 115, ; 475
	i32 47, ; 476
	i32 142, ; 477
	i32 117, ; 478
	i32 34, ; 479
	i32 178, ; 480
	i32 95, ; 481
	i32 53, ; 482
	i32 250, ; 483
	i32 129, ; 484
	i32 153, ; 485
	i32 24, ; 486
	i32 161, ; 487
	i32 227, ; 488
	i32 148, ; 489
	i32 104, ; 490
	i32 89, ; 491
	i32 214, ; 492
	i32 60, ; 493
	i32 142, ; 494
	i32 100, ; 495
	i32 5, ; 496
	i32 13, ; 497
	i32 122, ; 498
	i32 135, ; 499
	i32 28, ; 500
	i32 291, ; 501
	i32 72, ; 502
	i32 225, ; 503
	i32 24, ; 504
	i32 207, ; 505
	i32 254, ; 506
	i32 251, ; 507
	i32 308, ; 508
	i32 137, ; 509
	i32 200, ; 510
	i32 222, ; 511
	i32 168, ; 512
	i32 255, ; 513
	i32 287, ; 514
	i32 101, ; 515
	i32 123, ; 516
	i32 226, ; 517
	i32 0, ; 518
	i32 175, ; 519
	i32 209, ; 520
	i32 209, ; 521
	i32 181, ; 522
	i32 163, ; 523
	i32 167, ; 524
	i32 229, ; 525
	i32 39, ; 526
	i32 188, ; 527
	i32 295, ; 528
	i32 17, ; 529
	i32 171, ; 530
	i32 308, ; 531
	i32 307, ; 532
	i32 137, ; 533
	i32 150, ; 534
	i32 218, ; 535
	i32 155, ; 536
	i32 130, ; 537
	i32 19, ; 538
	i32 65, ; 539
	i32 147, ; 540
	i32 47, ; 541
	i32 315, ; 542
	i32 198, ; 543
	i32 79, ; 544
	i32 61, ; 545
	i32 106, ; 546
	i32 253, ; 547
	i32 202, ; 548
	i32 49, ; 549
	i32 239, ; 550
	i32 312, ; 551
	i32 250, ; 552
	i32 14, ; 553
	i32 180, ; 554
	i32 68, ; 555
	i32 171, ; 556
	i32 211, ; 557
	i32 208, ; 558
	i32 218, ; 559
	i32 317, ; 560
	i32 78, ; 561
	i32 223, ; 562
	i32 108, ; 563
	i32 201, ; 564
	i32 249, ; 565
	i32 67, ; 566
	i32 63, ; 567
	i32 27, ; 568
	i32 160, ; 569
	i32 215, ; 570
	i32 10, ; 571
	i32 188, ; 572
	i32 11, ; 573
	i32 174, ; 574
	i32 78, ; 575
	i32 126, ; 576
	i32 83, ; 577
	i32 182, ; 578
	i32 66, ; 579
	i32 107, ; 580
	i32 65, ; 581
	i32 128, ; 582
	i32 122, ; 583
	i32 77, ; 584
	i32 264, ; 585
	i32 254, ; 586
	i32 316, ; 587
	i32 8, ; 588
	i32 222, ; 589
	i32 2, ; 590
	i32 216, ; 591
	i32 44, ; 592
	i32 267, ; 593
	i32 156, ; 594
	i32 128, ; 595
	i32 252, ; 596
	i32 23, ; 597
	i32 133, ; 598
	i32 204, ; 599
	i32 241, ; 600
	i32 311, ; 601
	i32 293, ; 602
	i32 29, ; 603
	i32 203, ; 604
	i32 62, ; 605
	i32 190, ; 606
	i32 90, ; 607
	i32 87, ; 608
	i32 148, ; 609
	i32 192, ; 610
	i32 36, ; 611
	i32 86, ; 612
	i32 230, ; 613
	i32 306, ; 614
	i32 301, ; 615
	i32 181, ; 616
	i32 50, ; 617
	i32 6, ; 618
	i32 173, ; 619
	i32 90, ; 620
	i32 313, ; 621
	i32 21, ; 622
	i32 162, ; 623
	i32 96, ; 624
	i32 50, ; 625
	i32 113, ; 626
	i32 246, ; 627
	i32 130, ; 628
	i32 76, ; 629
	i32 27, ; 630
	i32 223, ; 631
	i32 245, ; 632
	i32 7, ; 633
	i32 189, ; 634
	i32 110, ; 635
	i32 246, ; 636
	i32 232 ; 637
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

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
