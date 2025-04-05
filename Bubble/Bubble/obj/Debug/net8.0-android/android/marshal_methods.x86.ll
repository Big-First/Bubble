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

@assembly_image_cache = dso_local local_unnamed_addr global [327 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [648 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 189
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 247
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 281
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 322
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 200
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 265
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 265
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 285
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 221
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 179691293, ; 24: Microsoft.EntityFrameworkCore.Sqlite.Design.dll => 0xab5df1d => 182
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 267
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 319
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 320
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 219
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 241
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 224
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 243
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 240
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 291
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 319
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 210
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 304
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 242
	i32 347068432, ; 49: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 204
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 303
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 323
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 315
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 225
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 238
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 240
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 253
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 302
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 296
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 194
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 285
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 190
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 278
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 276
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 310
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 230
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 308
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 236
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 272
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 217
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 99: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 290
	i32 690569205, ; 100: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 101: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 287
	i32 693804605, ; 102: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 103: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 104: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 282
	i32 700358131, ; 105: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 106: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 305
	i32 709557578, ; 107: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 293
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 286
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 111: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 202
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 207
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 46
	i32 776196412, ; 117: Microsoft.EntityFrameworkCore.Relational.Design.dll => 0x2e43d13c => 180
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 314
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 193
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 231
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 245
	i32 823281589, ; 123: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 124: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 125: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 126: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 127: Xamarin.AndroidX.Print => 0x3246f6cd => 258
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 131: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 909803075, ; 132: Bubble.dll => 0x363a7e43 => 0
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 317
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 281
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 286
	i32 960841641, ; 138: MauiIcons.Material.dll => 0x394547a9 => 174
	i32 966729478, ; 139: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 279
	i32 967690846, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 242
	i32 975236339, ; 141: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 142: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 143: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 144: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 145: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 146: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 147: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 148: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 262
	i32 1019214401, ; 149: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 150: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1029334545, ; 151: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 292
	i32 1031528504, ; 152: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 280
	i32 1035644815, ; 153: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 215
	i32 1036536393, ; 154: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 155: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 249
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 283
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 305
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 248
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 192
	i32 1149092582, ; 164: Xamarin.AndroidX.Window => 0x447dc2e6 => 275
	i32 1157931901, ; 165: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 178
	i32 1168523401, ; 166: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 311
	i32 1170634674, ; 167: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 271
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 256
	i32 1202000627, ; 170: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 178
	i32 1203215381, ; 171: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 309
	i32 1204270330, ; 172: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 217
	i32 1204575371, ; 173: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 184
	i32 1208641965, ; 174: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 175: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 176: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 307
	i32 1243150071, ; 177: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 276
	i32 1253011324, ; 178: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 179: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 291
	i32 1264511973, ; 180: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 266
	i32 1267360935, ; 181: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 270
	i32 1273260888, ; 182: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 222
	i32 1275534314, ; 183: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 287
	i32 1278448581, ; 184: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 214
	i32 1292207520, ; 185: SQLitePCLRaw.core.dll => 0x4d0585a0 => 203
	i32 1293217323, ; 186: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 233
	i32 1309188875, ; 187: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 188: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 275
	i32 1324164729, ; 189: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 190: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 191: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 192: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 321
	i32 1376866003, ; 193: Xamarin.AndroidX.SavedState => 0x52114ed3 => 262
	i32 1379779777, ; 194: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 195: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 196: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 226
	i32 1408764838, ; 197: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 198: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 199: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 200: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 289
	i32 1434145427, ; 201: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 202: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 279
	i32 1439761251, ; 203: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 204: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 205: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 206: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 207: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 208: es\Microsoft.Maui.Controls.resources => 0x57152abe => 295
	i32 1461234159, ; 209: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 210: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 211: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 212: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 216
	i32 1470490898, ; 213: Microsoft.Extensions.Primitives => 0x57a5e912 => 194
	i32 1479771757, ; 214: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 215: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 216: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 217: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 263
	i32 1490351284, ; 218: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 176
	i32 1493001747, ; 219: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 299
	i32 1514721132, ; 220: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 294
	i32 1536373174, ; 221: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 222: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 223: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 224: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 225: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 314
	i32 1565862583, ; 226: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 227: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 228: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 229: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 230: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 232
	i32 1592978981, ; 231: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 232: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 280
	i32 1601112923, ; 233: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 234: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 235: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 236: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 252
	i32 1622358360, ; 237: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 238: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 274
	i32 1635184631, ; 239: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 236
	i32 1636350590, ; 240: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 229
	i32 1639515021, ; 241: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 242: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 243: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 244: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 245: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 268
	i32 1658251792, ; 246: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 277
	i32 1670060433, ; 247: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 224
	i32 1675553242, ; 248: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 249: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 250: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 251: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 252: Microsoft.Data.Sqlite => 0x649e8ef3 => 176
	i32 1689493916, ; 253: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 177
	i32 1691477237, ; 254: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 255: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 256: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 284
	i32 1701541528, ; 257: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1703464129, ; 258: Microsoft.EntityFrameworkCore.Relational.Design => 0x6588ccc1 => 180
	i32 1711441057, ; 259: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 204
	i32 1720223769, ; 260: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 245
	i32 1726116996, ; 261: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 262: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 263: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 220
	i32 1736233607, ; 264: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 312
	i32 1743415430, ; 265: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 290
	i32 1744735666, ; 266: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 267: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 268: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 269: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 270: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 271: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 272: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 267
	i32 1770582343, ; 273: Microsoft.Extensions.Logging.dll => 0x6988f147 => 190
	i32 1776026572, ; 274: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 275: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 276: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 277: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 306
	i32 1788241197, ; 278: Xamarin.AndroidX.Fragment => 0x6a96652d => 238
	i32 1793755602, ; 279: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 298
	i32 1808609942, ; 280: Xamarin.AndroidX.Loader => 0x6bcd3296 => 252
	i32 1813058853, ; 281: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 283
	i32 1813201214, ; 282: Xamarin.Google.Android.Material => 0x6c13413e => 277
	i32 1818569960, ; 283: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 257
	i32 1818787751, ; 284: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 285: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 286: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 191
	i32 1842015223, ; 288: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 318
	i32 1847515442, ; 289: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 207
	i32 1853025655, ; 290: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 315
	i32 1858542181, ; 291: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 292: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 293: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 297
	i32 1879696579, ; 294: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 295: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 218
	i32 1886040351, ; 296: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 181
	i32 1888955245, ; 297: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 298: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 299: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 300: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 301: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 302: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 303: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 304: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 264
	i32 1968388702, ; 305: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 185
	i32 1983156543, ; 306: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 284
	i32 1985761444, ; 307: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 209
	i32 2003115576, ; 308: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 294
	i32 2011961780, ; 309: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 310: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 181
	i32 2019465201, ; 311: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 249
	i32 2025202353, ; 312: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 289
	i32 2031763787, ; 313: Xamarin.Android.Glide => 0x791a414b => 206
	i32 2045470958, ; 314: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 315: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 244
	i32 2060060697, ; 316: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 317: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 293
	i32 2070888862, ; 318: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 319: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 320: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 321: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 205
	i32 2112529142, ; 322: Microsoft.EntityFrameworkCore.Sqlite.Design => 0x7deaa2f6 => 182
	i32 2127167465, ; 323: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 324: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 325: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 326: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2155759225, ; 327: MauiIcons.Core => 0x807e4679 => 173
	i32 2159891885, ; 328: Microsoft.Maui => 0x80bd55ad => 198
	i32 2169148018, ; 329: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 301
	i32 2181898931, ; 330: Microsoft.Extensions.Options.dll => 0x820d22b3 => 193
	i32 2192057212, ; 331: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 191
	i32 2193016926, ; 332: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 333: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 189
	i32 2201107256, ; 334: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 288
	i32 2201231467, ; 335: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 336: it\Microsoft.Maui.Controls.resources => 0x839595db => 303
	i32 2217644978, ; 337: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 271
	i32 2222056684, ; 338: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 339: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 253
	i32 2252106437, ; 340: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 341: Microsoft.EntityFrameworkCore => 0x86487ec9 => 177
	i32 2256313426, ; 342: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 343: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 344: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 186
	i32 2267999099, ; 345: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 208
	i32 2270573516, ; 346: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 297
	i32 2279755925, ; 347: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 260
	i32 2293034957, ; 348: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 349: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 350: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 351: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 307
	i32 2305521784, ; 352: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 353: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 212
	i32 2320631194, ; 354: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 355: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 356: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 357: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 358: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 359: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 185
	i32 2378619854, ; 360: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 361: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 362: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 302
	i32 2401565422, ; 363: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 364: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 235
	i32 2421380589, ; 365: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 366: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 222
	i32 2427813419, ; 367: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 299
	i32 2435356389, ; 368: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 369: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 370: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 371: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 372: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 373: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 202
	i32 2465532216, ; 374: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 225
	i32 2471841756, ; 375: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 376: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 377: Microsoft.Maui.Controls => 0x93dba8a1 => 196
	i32 2483903535, ; 378: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 379: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 380: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 381: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 382: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 247
	i32 2522472828, ; 383: Xamarin.Android.Glide.dll => 0x9659e17c => 206
	i32 2538310050, ; 384: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 385: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 300
	i32 2562349572, ; 386: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 387: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 388: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 248
	i32 2581819634, ; 389: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 270
	i32 2585220780, ; 390: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 391: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 392: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 393: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 309
	i32 2605712449, ; 394: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 288
	i32 2615233544, ; 395: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 239
	i32 2616218305, ; 396: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 192
	i32 2617129537, ; 397: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 398: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 399: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 229
	i32 2624644809, ; 400: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 234
	i32 2626831493, ; 401: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 304
	i32 2627185994, ; 402: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 403: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 404: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 243
	i32 2634653062, ; 405: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 179
	i32 2663391936, ; 406: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 208
	i32 2663698177, ; 407: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 408: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 409: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 410: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 411: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 412: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 413: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 268
	i32 2715334215, ; 414: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 415: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 416: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 417: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 418: Xamarin.AndroidX.Activity => 0xa2e0939b => 210
	i32 2735172069, ; 419: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 420: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 216
	i32 2740948882, ; 421: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 422: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 423: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 310
	i32 2758225723, ; 424: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 197
	i32 2764765095, ; 425: Microsoft.Maui.dll => 0xa4caf7a7 => 198
	i32 2765824710, ; 426: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 427: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 282
	i32 2778768386, ; 428: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 273
	i32 2779977773, ; 429: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 261
	i32 2785988530, ; 430: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 316
	i32 2788224221, ; 431: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 239
	i32 2801831435, ; 432: Microsoft.Maui.Graphics => 0xa7008e0b => 200
	i32 2803228030, ; 433: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 434: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 295
	i32 2810250172, ; 435: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 226
	i32 2819470561, ; 436: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 437: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 438: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 261
	i32 2824502124, ; 439: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 440: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 308
	i32 2838993487, ; 441: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 250
	i32 2847789619, ; 442: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 179
	i32 2849599387, ; 443: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 444: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 273
	i32 2855708567, ; 445: Xamarin.AndroidX.Transition => 0xaa36a797 => 269
	i32 2861098320, ; 446: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 447: Microsoft.Maui.Essentials => 0xaa8a4878 => 199
	i32 2870099610, ; 448: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 211
	i32 2875164099, ; 449: Jsr305Binding.dll => 0xab5f85c3 => 278
	i32 2875220617, ; 450: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 451: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 237
	i32 2887636118, ; 452: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 453: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 454: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 455: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 456: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 457: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 458: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 274
	i32 2919462931, ; 459: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 460: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 213
	i32 2936416060, ; 461: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 462: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 463: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 464: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 465: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 466: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 467: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 233
	i32 2987532451, ; 468: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 264
	i32 2996846495, ; 469: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 246
	i32 3016983068, ; 470: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 266
	i32 3023353419, ; 471: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 472: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 241
	i32 3038032645, ; 473: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 323
	i32 3056245963, ; 474: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 263
	i32 3057625584, ; 475: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 254
	i32 3059408633, ; 476: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 477: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 478: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 183
	i32 3075834255, ; 479: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 480: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 301
	i32 3090735792, ; 481: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 482: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 483: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 484: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 485: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 486: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 487: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 488: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 489: GoogleGson.dll => 0xbba64c02 => 175
	i32 3159123045, ; 490: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 491: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 492: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 255
	i32 3192346100, ; 493: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 494: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 495: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 183
	i32 3204380047, ; 496: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 497: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 498: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 232
	i32 3220365878, ; 499: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 500: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 501: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 502: Xamarin.AndroidX.CardView => 0xc235e84d => 220
	i32 3265493905, ; 503: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 504: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 505: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 506: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 507: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 508: SQLite-net.dll => 0xc3e9b3a2 => 201
	i32 3290767353, ; 509: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 510: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 511: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 512: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 296
	i32 3316684772, ; 513: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 514: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 230
	i32 3317144872, ; 515: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 516: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 218
	i32 3345895724, ; 517: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 259
	i32 3346324047, ; 518: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 256
	i32 3357674450, ; 519: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 313
	i32 3358260929, ; 520: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 521: SQLitePCLRaw.core => 0xc849ca45 => 203
	i32 3362336904, ; 522: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 211
	i32 3362522851, ; 523: Xamarin.AndroidX.Core => 0xc86c06e3 => 227
	i32 3366347497, ; 524: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 525: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 260
	i32 3381016424, ; 526: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 292
	i32 3395150330, ; 527: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 528: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 529: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 231
	i32 3428513518, ; 530: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 531: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 532: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 533: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 234
	i32 3445260447, ; 534: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 535: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 195
	i32 3463511458, ; 536: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 300
	i32 3471940407, ; 537: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 538: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 539: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 313
	i32 3484440000, ; 540: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 312
	i32 3485117614, ; 541: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 542: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 543: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 223
	i32 3508420039, ; 544: Bubble => 0xd11e3dc7 => 0
	i32 3509114376, ; 545: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 546: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 547: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 548: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 549: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 550: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 551: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 320
	i32 3597029428, ; 552: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 209
	i32 3598340787, ; 553: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 554: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 555: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 556: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 258
	i32 3633644679, ; 557: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 213
	i32 3638274909, ; 558: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 559: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 244
	i32 3643446276, ; 560: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 317
	i32 3643854240, ; 561: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 255
	i32 3645089577, ; 562: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645818313, ; 563: MauiIcons.Core.dll => 0xd94ec5c9 => 173
	i32 3657292374, ; 564: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 186
	i32 3660523487, ; 565: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 566: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 567: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 219
	i32 3684561358, ; 568: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 223
	i32 3697841164, ; 569: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 322
	i32 3700866549, ; 570: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 571: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 228
	i32 3716563718, ; 572: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 573: Xamarin.AndroidX.Annotation => 0xdda814c6 => 212
	i32 3724971120, ; 574: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 254
	i32 3732100267, ; 575: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 576: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 577: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 578: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 579: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 205
	i32 3786282454, ; 580: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 221
	i32 3792276235, ; 581: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 582: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 195
	i32 3802395368, ; 583: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 584: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 585: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 586: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 587: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 588: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 589: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 590: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 591: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 592: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 593: SQLite-net => 0xe70c9739 => 201
	i32 3885497537, ; 594: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 595: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 269
	i32 3888767677, ; 596: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 259
	i32 3889960447, ; 597: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 321
	i32 3896106733, ; 598: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 599: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 227
	i32 3901907137, ; 600: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 601: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 602: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 272
	i32 3928044579, ; 603: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 604: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 605: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 257
	i32 3945713374, ; 606: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 607: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 608: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 215
	i32 3959773229, ; 609: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 246
	i32 3980434154, ; 610: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 316
	i32 3987592930, ; 611: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 298
	i32 4003436829, ; 612: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 613: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 214
	i32 4025784931, ; 614: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 615: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 197
	i32 4054681211, ; 616: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 617: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 618: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4085941452, ; 619: MauiIcons.Material => 0xf38a84cc => 174
	i32 4094352644, ; 620: Microsoft.Maui.Essentials.dll => 0xf40add04 => 199
	i32 4099507663, ; 621: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 622: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 623: Xamarin.AndroidX.Emoji2 => 0xf479582c => 235
	i32 4101842092, ; 624: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 184
	i32 4102112229, ; 625: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 311
	i32 4125707920, ; 626: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 306
	i32 4126470640, ; 627: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 628: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 629: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 630: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 631: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 318
	i32 4151237749, ; 632: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 633: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 634: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 635: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 636: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 637: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 251
	i32 4185676441, ; 638: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 639: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 640: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 641: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 228
	i32 4258378803, ; 642: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 250
	i32 4260525087, ; 643: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 644: Microsoft.Maui.Controls.dll => 0xfea12dee => 196
	i32 4274976490, ; 645: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 646: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 251
	i32 4294763496 ; 647: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 237
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [648 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 189, ; 3
	i32 247, ; 4
	i32 281, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 322, ; 10
	i32 124, ; 11
	i32 200, ; 12
	i32 102, ; 13
	i32 265, ; 14
	i32 107, ; 15
	i32 265, ; 16
	i32 139, ; 17
	i32 285, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 221, ; 22
	i32 132, ; 23
	i32 182, ; 24
	i32 267, ; 25
	i32 151, ; 26
	i32 319, ; 27
	i32 320, ; 28
	i32 18, ; 29
	i32 219, ; 30
	i32 26, ; 31
	i32 241, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 224, ; 37
	i32 147, ; 38
	i32 243, ; 39
	i32 240, ; 40
	i32 291, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 319, ; 44
	i32 210, ; 45
	i32 83, ; 46
	i32 304, ; 47
	i32 242, ; 48
	i32 204, ; 49
	i32 303, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 323, ; 58
	i32 165, ; 59
	i32 315, ; 60
	i32 225, ; 61
	i32 12, ; 62
	i32 238, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 240, ; 69
	i32 253, ; 70
	i32 84, ; 71
	i32 302, ; 72
	i32 296, ; 73
	i32 194, ; 74
	i32 150, ; 75
	i32 285, ; 76
	i32 60, ; 77
	i32 190, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 278, ; 83
	i32 276, ; 84
	i32 120, ; 85
	i32 310, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 230, ; 90
	i32 308, ; 91
	i32 236, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 272, ; 95
	i32 217, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 290, ; 99
	i32 155, ; 100
	i32 287, ; 101
	i32 154, ; 102
	i32 92, ; 103
	i32 282, ; 104
	i32 45, ; 105
	i32 305, ; 106
	i32 293, ; 107
	i32 286, ; 108
	i32 109, ; 109
	i32 129, ; 110
	i32 202, ; 111
	i32 25, ; 112
	i32 207, ; 113
	i32 72, ; 114
	i32 55, ; 115
	i32 46, ; 116
	i32 180, ; 117
	i32 314, ; 118
	i32 193, ; 119
	i32 231, ; 120
	i32 22, ; 121
	i32 245, ; 122
	i32 86, ; 123
	i32 43, ; 124
	i32 160, ; 125
	i32 71, ; 126
	i32 258, ; 127
	i32 3, ; 128
	i32 42, ; 129
	i32 63, ; 130
	i32 16, ; 131
	i32 0, ; 132
	i32 53, ; 133
	i32 317, ; 134
	i32 281, ; 135
	i32 105, ; 136
	i32 286, ; 137
	i32 174, ; 138
	i32 279, ; 139
	i32 242, ; 140
	i32 34, ; 141
	i32 158, ; 142
	i32 85, ; 143
	i32 32, ; 144
	i32 12, ; 145
	i32 51, ; 146
	i32 56, ; 147
	i32 262, ; 148
	i32 36, ; 149
	i32 188, ; 150
	i32 292, ; 151
	i32 280, ; 152
	i32 215, ; 153
	i32 35, ; 154
	i32 58, ; 155
	i32 249, ; 156
	i32 175, ; 157
	i32 17, ; 158
	i32 283, ; 159
	i32 164, ; 160
	i32 305, ; 161
	i32 248, ; 162
	i32 192, ; 163
	i32 275, ; 164
	i32 178, ; 165
	i32 311, ; 166
	i32 153, ; 167
	i32 271, ; 168
	i32 256, ; 169
	i32 178, ; 170
	i32 309, ; 171
	i32 217, ; 172
	i32 184, ; 173
	i32 29, ; 174
	i32 52, ; 175
	i32 307, ; 176
	i32 276, ; 177
	i32 5, ; 178
	i32 291, ; 179
	i32 266, ; 180
	i32 270, ; 181
	i32 222, ; 182
	i32 287, ; 183
	i32 214, ; 184
	i32 203, ; 185
	i32 233, ; 186
	i32 85, ; 187
	i32 275, ; 188
	i32 61, ; 189
	i32 112, ; 190
	i32 57, ; 191
	i32 321, ; 192
	i32 262, ; 193
	i32 99, ; 194
	i32 19, ; 195
	i32 226, ; 196
	i32 111, ; 197
	i32 101, ; 198
	i32 102, ; 199
	i32 289, ; 200
	i32 104, ; 201
	i32 279, ; 202
	i32 71, ; 203
	i32 38, ; 204
	i32 32, ; 205
	i32 103, ; 206
	i32 73, ; 207
	i32 295, ; 208
	i32 9, ; 209
	i32 123, ; 210
	i32 46, ; 211
	i32 216, ; 212
	i32 194, ; 213
	i32 9, ; 214
	i32 43, ; 215
	i32 4, ; 216
	i32 263, ; 217
	i32 176, ; 218
	i32 299, ; 219
	i32 294, ; 220
	i32 31, ; 221
	i32 138, ; 222
	i32 92, ; 223
	i32 93, ; 224
	i32 314, ; 225
	i32 49, ; 226
	i32 141, ; 227
	i32 112, ; 228
	i32 140, ; 229
	i32 232, ; 230
	i32 115, ; 231
	i32 280, ; 232
	i32 157, ; 233
	i32 76, ; 234
	i32 79, ; 235
	i32 252, ; 236
	i32 37, ; 237
	i32 274, ; 238
	i32 236, ; 239
	i32 229, ; 240
	i32 64, ; 241
	i32 138, ; 242
	i32 15, ; 243
	i32 116, ; 244
	i32 268, ; 245
	i32 277, ; 246
	i32 224, ; 247
	i32 48, ; 248
	i32 70, ; 249
	i32 80, ; 250
	i32 126, ; 251
	i32 176, ; 252
	i32 177, ; 253
	i32 94, ; 254
	i32 121, ; 255
	i32 284, ; 256
	i32 26, ; 257
	i32 180, ; 258
	i32 204, ; 259
	i32 245, ; 260
	i32 97, ; 261
	i32 28, ; 262
	i32 220, ; 263
	i32 312, ; 264
	i32 290, ; 265
	i32 149, ; 266
	i32 169, ; 267
	i32 4, ; 268
	i32 98, ; 269
	i32 33, ; 270
	i32 93, ; 271
	i32 267, ; 272
	i32 190, ; 273
	i32 21, ; 274
	i32 41, ; 275
	i32 170, ; 276
	i32 306, ; 277
	i32 238, ; 278
	i32 298, ; 279
	i32 252, ; 280
	i32 283, ; 281
	i32 277, ; 282
	i32 257, ; 283
	i32 2, ; 284
	i32 134, ; 285
	i32 111, ; 286
	i32 191, ; 287
	i32 318, ; 288
	i32 207, ; 289
	i32 315, ; 290
	i32 58, ; 291
	i32 95, ; 292
	i32 297, ; 293
	i32 39, ; 294
	i32 218, ; 295
	i32 181, ; 296
	i32 25, ; 297
	i32 94, ; 298
	i32 89, ; 299
	i32 99, ; 300
	i32 10, ; 301
	i32 87, ; 302
	i32 100, ; 303
	i32 264, ; 304
	i32 185, ; 305
	i32 284, ; 306
	i32 209, ; 307
	i32 294, ; 308
	i32 7, ; 309
	i32 181, ; 310
	i32 249, ; 311
	i32 289, ; 312
	i32 206, ; 313
	i32 88, ; 314
	i32 244, ; 315
	i32 154, ; 316
	i32 293, ; 317
	i32 33, ; 318
	i32 116, ; 319
	i32 82, ; 320
	i32 205, ; 321
	i32 182, ; 322
	i32 20, ; 323
	i32 11, ; 324
	i32 162, ; 325
	i32 3, ; 326
	i32 173, ; 327
	i32 198, ; 328
	i32 301, ; 329
	i32 193, ; 330
	i32 191, ; 331
	i32 84, ; 332
	i32 189, ; 333
	i32 288, ; 334
	i32 64, ; 335
	i32 303, ; 336
	i32 271, ; 337
	i32 143, ; 338
	i32 253, ; 339
	i32 157, ; 340
	i32 177, ; 341
	i32 41, ; 342
	i32 117, ; 343
	i32 186, ; 344
	i32 208, ; 345
	i32 297, ; 346
	i32 260, ; 347
	i32 131, ; 348
	i32 75, ; 349
	i32 66, ; 350
	i32 307, ; 351
	i32 172, ; 352
	i32 212, ; 353
	i32 143, ; 354
	i32 106, ; 355
	i32 151, ; 356
	i32 70, ; 357
	i32 156, ; 358
	i32 185, ; 359
	i32 121, ; 360
	i32 127, ; 361
	i32 302, ; 362
	i32 152, ; 363
	i32 235, ; 364
	i32 141, ; 365
	i32 222, ; 366
	i32 299, ; 367
	i32 20, ; 368
	i32 14, ; 369
	i32 135, ; 370
	i32 75, ; 371
	i32 59, ; 372
	i32 202, ; 373
	i32 225, ; 374
	i32 167, ; 375
	i32 168, ; 376
	i32 196, ; 377
	i32 15, ; 378
	i32 74, ; 379
	i32 6, ; 380
	i32 23, ; 381
	i32 247, ; 382
	i32 206, ; 383
	i32 91, ; 384
	i32 300, ; 385
	i32 1, ; 386
	i32 136, ; 387
	i32 248, ; 388
	i32 270, ; 389
	i32 134, ; 390
	i32 69, ; 391
	i32 146, ; 392
	i32 309, ; 393
	i32 288, ; 394
	i32 239, ; 395
	i32 192, ; 396
	i32 88, ; 397
	i32 96, ; 398
	i32 229, ; 399
	i32 234, ; 400
	i32 304, ; 401
	i32 31, ; 402
	i32 45, ; 403
	i32 243, ; 404
	i32 179, ; 405
	i32 208, ; 406
	i32 109, ; 407
	i32 158, ; 408
	i32 35, ; 409
	i32 22, ; 410
	i32 114, ; 411
	i32 57, ; 412
	i32 268, ; 413
	i32 144, ; 414
	i32 118, ; 415
	i32 120, ; 416
	i32 110, ; 417
	i32 210, ; 418
	i32 139, ; 419
	i32 216, ; 420
	i32 54, ; 421
	i32 105, ; 422
	i32 310, ; 423
	i32 197, ; 424
	i32 198, ; 425
	i32 133, ; 426
	i32 282, ; 427
	i32 273, ; 428
	i32 261, ; 429
	i32 316, ; 430
	i32 239, ; 431
	i32 200, ; 432
	i32 159, ; 433
	i32 295, ; 434
	i32 226, ; 435
	i32 163, ; 436
	i32 132, ; 437
	i32 261, ; 438
	i32 161, ; 439
	i32 308, ; 440
	i32 250, ; 441
	i32 179, ; 442
	i32 140, ; 443
	i32 273, ; 444
	i32 269, ; 445
	i32 169, ; 446
	i32 199, ; 447
	i32 211, ; 448
	i32 278, ; 449
	i32 40, ; 450
	i32 237, ; 451
	i32 81, ; 452
	i32 56, ; 453
	i32 37, ; 454
	i32 97, ; 455
	i32 166, ; 456
	i32 172, ; 457
	i32 274, ; 458
	i32 82, ; 459
	i32 213, ; 460
	i32 98, ; 461
	i32 30, ; 462
	i32 159, ; 463
	i32 18, ; 464
	i32 127, ; 465
	i32 119, ; 466
	i32 233, ; 467
	i32 264, ; 468
	i32 246, ; 469
	i32 266, ; 470
	i32 165, ; 471
	i32 241, ; 472
	i32 323, ; 473
	i32 263, ; 474
	i32 254, ; 475
	i32 170, ; 476
	i32 16, ; 477
	i32 183, ; 478
	i32 144, ; 479
	i32 301, ; 480
	i32 125, ; 481
	i32 118, ; 482
	i32 38, ; 483
	i32 115, ; 484
	i32 47, ; 485
	i32 142, ; 486
	i32 117, ; 487
	i32 34, ; 488
	i32 175, ; 489
	i32 95, ; 490
	i32 53, ; 491
	i32 255, ; 492
	i32 129, ; 493
	i32 153, ; 494
	i32 183, ; 495
	i32 24, ; 496
	i32 161, ; 497
	i32 232, ; 498
	i32 148, ; 499
	i32 104, ; 500
	i32 89, ; 501
	i32 220, ; 502
	i32 60, ; 503
	i32 142, ; 504
	i32 100, ; 505
	i32 5, ; 506
	i32 13, ; 507
	i32 201, ; 508
	i32 122, ; 509
	i32 135, ; 510
	i32 28, ; 511
	i32 296, ; 512
	i32 72, ; 513
	i32 230, ; 514
	i32 24, ; 515
	i32 218, ; 516
	i32 259, ; 517
	i32 256, ; 518
	i32 313, ; 519
	i32 137, ; 520
	i32 203, ; 521
	i32 211, ; 522
	i32 227, ; 523
	i32 168, ; 524
	i32 260, ; 525
	i32 292, ; 526
	i32 101, ; 527
	i32 123, ; 528
	i32 231, ; 529
	i32 187, ; 530
	i32 163, ; 531
	i32 167, ; 532
	i32 234, ; 533
	i32 39, ; 534
	i32 195, ; 535
	i32 300, ; 536
	i32 17, ; 537
	i32 171, ; 538
	i32 313, ; 539
	i32 312, ; 540
	i32 137, ; 541
	i32 150, ; 542
	i32 223, ; 543
	i32 0, ; 544
	i32 155, ; 545
	i32 130, ; 546
	i32 19, ; 547
	i32 65, ; 548
	i32 147, ; 549
	i32 47, ; 550
	i32 320, ; 551
	i32 209, ; 552
	i32 79, ; 553
	i32 61, ; 554
	i32 106, ; 555
	i32 258, ; 556
	i32 213, ; 557
	i32 49, ; 558
	i32 244, ; 559
	i32 317, ; 560
	i32 255, ; 561
	i32 14, ; 562
	i32 173, ; 563
	i32 186, ; 564
	i32 68, ; 565
	i32 171, ; 566
	i32 219, ; 567
	i32 223, ; 568
	i32 322, ; 569
	i32 78, ; 570
	i32 228, ; 571
	i32 108, ; 572
	i32 212, ; 573
	i32 254, ; 574
	i32 67, ; 575
	i32 63, ; 576
	i32 27, ; 577
	i32 160, ; 578
	i32 205, ; 579
	i32 221, ; 580
	i32 10, ; 581
	i32 195, ; 582
	i32 11, ; 583
	i32 78, ; 584
	i32 126, ; 585
	i32 83, ; 586
	i32 188, ; 587
	i32 66, ; 588
	i32 107, ; 589
	i32 65, ; 590
	i32 128, ; 591
	i32 122, ; 592
	i32 201, ; 593
	i32 77, ; 594
	i32 269, ; 595
	i32 259, ; 596
	i32 321, ; 597
	i32 8, ; 598
	i32 227, ; 599
	i32 2, ; 600
	i32 44, ; 601
	i32 272, ; 602
	i32 156, ; 603
	i32 128, ; 604
	i32 257, ; 605
	i32 23, ; 606
	i32 133, ; 607
	i32 215, ; 608
	i32 246, ; 609
	i32 316, ; 610
	i32 298, ; 611
	i32 29, ; 612
	i32 214, ; 613
	i32 62, ; 614
	i32 197, ; 615
	i32 90, ; 616
	i32 87, ; 617
	i32 148, ; 618
	i32 174, ; 619
	i32 199, ; 620
	i32 36, ; 621
	i32 86, ; 622
	i32 235, ; 623
	i32 184, ; 624
	i32 311, ; 625
	i32 306, ; 626
	i32 187, ; 627
	i32 50, ; 628
	i32 6, ; 629
	i32 90, ; 630
	i32 318, ; 631
	i32 21, ; 632
	i32 162, ; 633
	i32 96, ; 634
	i32 50, ; 635
	i32 113, ; 636
	i32 251, ; 637
	i32 130, ; 638
	i32 76, ; 639
	i32 27, ; 640
	i32 228, ; 641
	i32 250, ; 642
	i32 7, ; 643
	i32 196, ; 644
	i32 110, ; 645
	i32 251, ; 646
	i32 237 ; 647
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
