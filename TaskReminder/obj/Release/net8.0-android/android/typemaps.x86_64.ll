; ModuleID = 'typemaps.x86_64.ll'
source_filename = "typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 41, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1133, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [41 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0A*\0C]\88\BE%D\9F\0A\DC\15\CF\D4\D1\CE", ; module_uuid: 5d0c2a0a-be88-4425-9f0a-dc15cfd4d1ce
		i32 86, ; uint32_t entry_count (0x56)
		i32 27, ; uint32_t duplicate_count (0x1b)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\0D\C9\A8*\E5\91\D0N\81\10\FE\B4\DB\14\9C\F0", ; module_uuid: 2aa8c90d-91e5-4ed0-8110-feb4db149cf0
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\1Cr\E7\DEN\A2\18E\B65<\DD\19\BC\07\C5", ; module_uuid: dee7721c-a24e-4518-b635-3cdd19bc07c5
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"!_9\B0\A4\8E.J\BD\15\18\1Ca\7F\CA\86", ; module_uuid: b0395f21-8ea4-4a2e-bd15-181c617fca86
		i32 5, ; uint32_t entry_count (0x5)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c"\22\DF\B4\B1\C2\D7\18H\82\AEe1\7F\E9\ADf", ; module_uuid: b1b4df22-d7c2-4818-82ae-65317fe9ad66
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"(U\16\EA\AC\C1\D9C\80\DAr\5C)\964 ", ; module_uuid: ea165528-c1ac-43d9-80da-725c29963420
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"4\D8\93\A1\DA\B1\D7F\BA\8Ej~bhd\97", ; module_uuid: a193d834-b1da-46d7-ba8e-6a7e62686497
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"6\F3\C6\919\00CO\BF\13K\8A\16\04\96\B0", ; module_uuid: 91c6f336-0039-4f43-bf13-4b8a160496b0
		i32 482, ; uint32_t entry_count (0x1e2)
		i32 189, ; uint32_t duplicate_count (0xbd)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c"6\FA\05\F3\B03\08G\8B%v\C2\121~\AA", ; module_uuid: f305fa36-33b0-4708-8b25-76c212317eaa
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c";\F6S\80-d\A8L\A0\EA\AF\A4\C0J!\04", ; module_uuid: 8053f63b-642d-4ca8-a0ea-afa4c04a2104
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c"<@\81\1F\0A\B3mH\8B\E2\99\D8J;\E2\A1", ; module_uuid: 1f81403c-b30a-486d-8be2-99d84a3be2a1
		i32 25, ; uint32_t entry_count (0x19)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c"<\9CnN[\A5\81H\8BL\9F\F5\8BV\C2x", ; module_uuid: 4e6e9c3c-a55b-4881-8b4c-9ff58b56c278
		i32 13, ; uint32_t entry_count (0xd)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"D\CF\9F\DD\B8XD@\96P\B6\A2\9B\B7\09\EF", ; module_uuid: dd9fcf44-58b8-4044-9650-b6a29bb709ef
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Plugin.LocalNotification
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"G(9\B461wM\A3\C8]9S\B1\E1A", ; module_uuid: b4392847-3136-4d77-a3c8-5d3953b1e141
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c"Hd'r\06i\B9G\A6,\C5\C5\16\F0\A7\A8", ; module_uuid: 72276448-6906-47b9-a62c-c5c516f0a7a8
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c"I\9C\E9\A0_ \D1K\9B\1A\83\A7\82\E7f\D6", ; module_uuid: a0e99c49-205f-4bd1-9b1a-83a782e766d6
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"K\A3u\C5:\DE\DAE\A5B\12/f\F63\FE", ; module_uuid: c575a34b-de3a-45da-a542-122f66f633fe
		i32 11, ; uint32_t entry_count (0xb)
		i32 9, ; uint32_t duplicate_count (0x9)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module16_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Tasks
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"Ml)VjOqA\BAH\5C\AE\F4?\EA;", ; module_uuid: 56296c4d-4f6a-4171-ba48-5caef43fea3b
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"N\BEIW\D6Y\9EN\AE\EB\05\02\22\5C\0A\D0", ; module_uuid: 5749be4e-59d6-4e9e-aeeb-0502225c0ad0
		i32 67, ; uint32_t entry_count (0x43)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"W4\9E\D9\15\93~M\85x\EB\80\B3\F0\D8\A3", ; module_uuid: d99e3457-9315-4d7e-8578-eb80b3f0d8a3
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"W\B7~Tt\D7\9EK\AE,n\0A\A7\AB\C6}", ; module_uuid: 547eb757-d774-4b9e-ae2c-6e0aa7abc67d
		i32 67, ; uint32_t entry_count (0x43)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"Y6\A8M\0B\BDRH\ADF\B4\8A\0F1\B1\10", ; module_uuid: 4da83659-bd0b-4852-ad46-b48a0f31b110
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: TaskReminder
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"q\AA\22\CD9\A2mI\B6\B8vd\B6\0F\1A\BB", ; module_uuid: cd22aa71-a239-496d-b6b8-7664b60f1abb
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"u \EFW\8Eq\03I\9A\DB\ECtc\BA\82T", ; module_uuid: 57ef2075-718e-4903-9adb-ec7463ba8254
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"\8CGj\EF\18\F9\8DL\9E7\AC\0A\A0k;\EF", ; module_uuid: ef6a478c-f918-4c8d-9e37-ac0aa06b3bef
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"\90z4P\86\81\F7N\86\08\D0e\86.\DFu", ; module_uuid: 50347a90-8186-4ef7-8608-d065862edf75
		i32 7, ; uint32_t entry_count (0x7)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Basement
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"\96\EFhG\C7H\F9O\81M\01\C0\91\F6K\FA", ; module_uuid: 4768ef96-48c7-4ff9-814d-01c091f64bfa
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"\9A\E9\B68'\95\D5J\9B\B8\8D\8B\DD\84R]", ; module_uuid: 38b6e99a-9527-4ad5-9bb8-8d8bdd84525d
		i32 56, ; uint32_t entry_count (0x38)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\A6[\A4\F6YhWA\A4\D5\BA\A5M\D6\A86", ; module_uuid: f6a45ba6-6859-4157-a4d5-baa54dd6a836
		i32 27, ; uint32_t entry_count (0x1b)
		i32 11, ; uint32_t duplicate_count (0xb)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Location
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\A7\DDpx\CD\80\F1H\A2\01\88\83x\B4$`", ; module_uuid: 7870dda7-80cd-48f1-a201-888378b42460
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\AE\C8W\94\FC\12\CEA\92\0F\0D\1At\AB\D7\EA", ; module_uuid: 9457c8ae-12fc-41ce-920f-0d1a74abd7ea
		i32 21, ; uint32_t entry_count (0x15)
		i32 14, ; uint32_t duplicate_count (0xe)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Base
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\B10\89\D1\97\E3\E0I\AE\E3\D6\5C\CF\05\22\CF", ; module_uuid: d18930b1-e397-49e0-aee3-d65ccf0522cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\BB\B2a\EAH\DF\B6J\A9b\02h0\0Dd/", ; module_uuid: ea61b2bb-df48-4ab6-a962-0268300d642f
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\D1}\EE\14\14\EC\1AH\A2\CA\C2\A2\93\ED\F7\88", ; module_uuid: 14ee7dd1-ec14-481a-a2ca-c2a293edf788
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] c"\D2;-b)\F3\E5C\94X\18\EE\E1\8D\07I", ; module_uuid: 622d3bd2-f329-43e5-9458-18eee18d0749
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] c"\E4\B3(\A5/\AF\A5M\88\1A\95\91\F4Zy\EB", ; module_uuid: a528b3e4-af2f-4da5-881a-9591f45a79eb
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module35_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] c"\E9&\19$O!\ECD\88W\F3\FE\0D\B6l\C8", ; module_uuid: 241926e9-214f-44ec-8857-f3fe0db66cc8
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module36_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.AndroidX.VersionedParcelable
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] c"\E91\C9.\E1j\A5I\90%.\AA\8Bw\F9\93", ; module_uuid: 2ec931e9-6ae1-49a5-9025-2eaa8b77f993
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] c"\E9\B1\F5\FE5]\B8G\90\0D\D3}\0A\8C\06\EB", ; module_uuid: fef5b1e9-5d35-47b8-900d-d37d0a8c06eb
		i32 6, ; uint32_t entry_count (0x6)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Xamarin.AndroidX.Security.SecurityCrypto
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] c"\F00\BC&g\12\0DN\87\C4e\E9\8D\B0\0EY", ; module_uuid: 26bc30f0-1267-4e0d-87c4-65e98db00e59
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module39_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 39
	%struct.TypeMapModule {
		[16 x i8] c"\F8Y\ECa\1A\C4\EDL\B8\CB\95\1B\00^\9F\AA", ; module_uuid: 61ec59f8-c41a-4ced-b8cb-951b005e9faa
		i32 106, ; uint32_t entry_count (0x6a)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module40_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.40_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 40
], align 16

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1133 x i64] [
	i64 2855423375672055, ; 0: 0xa24fe0ffd82f7 => com/google/android/gms/location/SettingsClient
	i64 40394948990796659, ; 1: 0x8f82fdf9510373 => crc64e1fb321c08285b90/EntryCellEditText
	i64 52093131593007030, ; 2: 0xb9126d5bd6bfb6 => android/graphics/drawable/Animatable
	i64 123128373651107449, ; 3: 0x1b5709a7d3eee79 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i64 128182020419974451, ; 4: 0x1c764de51b97533 => java/lang/String
	i64 146042335049966109, ; 5: 0x206d8baded2621d => java/util/concurrent/Executor
	i64 164896704060212347, ; 6: 0x249d4adbe24447b => kotlin/coroutines/Continuation
	i64 176627442730137433, ; 7: 0x27381b92d83f759 => android/content/pm/Signature
	i64 179924752871835988, ; 8: 0x27f389c0539c954 => androidx/core/app/ComponentActivity
	i64 212011099207366628, ; 9: 0x2f136f8b0b1f7e4 => com/google/android/material/badge/BadgeDrawable
	i64 276050983113093313, ; 10: 0x3d4bae8145a70c1 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i64 280409858434120304, ; 11: 0x3e43747d37bba70 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i64 288436644922149331, ; 12: 0x400bb99b0ca49d3 => android/graphics/Paint$Cap
	i64 305303872570400021, ; 13: 0x43ca841291c1d15 => android/view/View$OnHoverListener
	i64 313029130739313069, ; 14: 0x4581a55fe10e9ad => android/graphics/drawable/shapes/Shape
	i64 318564728890166633, ; 15: 0x46bc4eedf778d69 => android/widget/Button
	i64 336734988557421638, ; 16: 0x4ac52b020690c46 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i64 361870449891484378, ; 17: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 18: 0x50b1e841ce2e57a => android/widget/TextView
	i64 374702298598502009, ; 19: 0x53335c15c7c6e79 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i64 381033654718824648, ; 20: 0x549b41714fc00c8 => crc6452ffdc5b34af3a0f/WrapperView
	i64 382408712250526578, ; 21: 0x54e96b29cb50b72 => androidx/core/util/Predicate
	i64 403762510766094389, ; 22: 0x59a73dd43d53835 => crc64338477404e88479c/FragmentContainer
	i64 412836909682626269, ; 23: 0x5bab0fb67cd8edd => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i64 426040045525745741, ; 24: 0x5e9992a05a7404d => androidx/core/app/Person
	i64 439133414594709010, ; 25: 0x6181d8391ec0612 => android/widget/DatePicker
	i64 497701358617613252, ; 26: 0x6e830bfaca1d3c4 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i64 515916014736443504, ; 27: 0x728e6e1c84d0870 => android/webkit/ValueCallback
	i64 535364814668407723, ; 28: 0x76dff76638da3ab => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i64 582128946798849863, ; 29: 0x81423315f6aef47 => android/view/ActionProvider
	i64 591405550240679337, ; 30: 0x8351836ec4a45a9 => android/graphics/Path$FillType
	i64 619638459439082186, ; 31: 0x89965e558096aca => java/text/NumberFormat
	i64 654924058700157350, ; 32: 0x916c1f621ae11a6 => android/widget/SectionIndexer
	i64 660107968369555556, ; 33: 0x9292cb328127864 => java/util/List
	i64 698692053645229055, ; 34: 0x9b240b890e97bff => javax/net/ssl/HttpsURLConnection
	i64 698738878519169148, ; 35: 0x9b26b4ed4e3d07c => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 705175846315662030, ; 36: 0x9c949b22fd49ace => android/view/MotionEvent
	i64 713241699942045525, ; 37: 0x9e5f18c140a9755 => crc64e1fb321c08285b90/SwitchCellView
	i64 721515218677255058, ; 38: 0xa035644c54bcb92 => com/google/android/gms/tasks/OnCanceledListener
	i64 753213119692529150, ; 39: 0xa73f357776fddfe => android/animation/TimeInterpolator
	i64 769314120471534533, ; 40: 0xaad271dd765dbc5 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 816513157356790819, ; 41: 0xb54d663faaf2423 => android/text/TextUtils$TruncateAt
	i64 844845191340040045, ; 42: 0xbb97e39b0051f6d => android/widget/TimePicker
	i64 868122344904594316, ; 43: 0xc0c30ac559e138c => android/text/TextPaint
	i64 870874870088288028, ; 44: 0xc15f8148b6d471c => java/lang/Exception
	i64 872223982470459621, ; 45: 0xc1ac3173fba70e5 => android/graphics/Shader
	i64 891089673577469184, ; 46: 0xc5dc956409a9500 => androidx/core/content/res/ResourcesCompat$FontCallback
	i64 918764874599828123, ; 47: 0xcc01bc91ea10a9b => crc64e1fb321c08285b90/FrameRenderer
	i64 963739547087029502, ; 48: 0xd5fe403101e44fe => android/widget/RadioButton
	i64 994850409983335970, ; 49: 0xdce6b2d4bb55e22 => android/app/NotificationManager
	i64 1012479094131298382, ; 50: 0xe0d0c5f2c34904e => com/google/android/gms/common/api/internal/ListenerHolder
	i64 1042816948562317609, ; 51: 0xe78d47d58d05129 => android/graphics/Path$Direction
	i64 1047274886995206934, ; 52: 0xe88aaf605896316 => crc64338477404e88479c/MauiViewPager
	i64 1058288277257806020, ; 53: 0xeafcb94c3e960c4 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i64 1071931666502492146, ; 54: 0xee0442bdd5f9ff2 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i64 1079586186822872943, ; 55: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1087315166910411745, ; 56: 0xf16eb622a96f3e1 => androidx/appcompat/widget/AppCompatEditText
	i64 1093289771861447773, ; 57: 0xf2c2541485e945d => android/text/Spanned
	i64 1129615369612962765, ; 58: 0xfad3331969a2bcd => android/text/style/LineHeightSpan
	i64 1162204341407583715, ; 59: 0x1020fab0de040de3 => crc6452ffdc5b34af3a0f/MauiTextView
	i64 1175590042387538510, ; 60: 0x105088ea3dfee24e => android/view/animation/LinearInterpolator
	i64 1210920456359698245, ; 61: 0x10ce0dbd4492df45 => androidx/appcompat/widget/TooltipCompat
	i64 1217044833273073796, ; 62: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1248298339946314785, ; 63: 0x1152d8b9f635bc21 => kotlin/jvm/functions/Function2
	i64 1262086929885099221, ; 64: 0x1183d5603b76f4d5 => kotlin/reflect/KFunction
	i64 1283121375857603354, ; 65: 0x11ce9017d3b3f31a => java/net/ConnectException
	i64 1309713578889228674, ; 66: 0x122d098f9332b182 => android/animation/AnimatorListenerAdapter
	i64 1312315937130052437, ; 67: 0x1236486451b87b55 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i64 1317579852464953526, ; 68: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 69: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1331792513324286723, ; 70: 0x127b7a3c17380303 => com/google/android/gms/location/GeofencingRequest
	i64 1340245152876570335, ; 71: 0x129981dd9925a6df => androidx/core/util/Consumer
	i64 1351596142494714808, ; 72: 0x12c1d587d12f8bb8 => androidx/appcompat/view/menu/MenuView
	i64 1356236609822008698, ; 73: 0x12d25202cfd2257a => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i64 1362204976567274499, ; 74: 0x12e786357b8fcc03 => androidx/navigation/NavOptions
	i64 1362770524300979611, ; 75: 0x12e9889253552d9b => java/util/Iterator
	i64 1363008265218827226, ; 76: 0x12ea60cbb24a23da => androidx/core/view/MenuItemCompat
	i64 1378412563428261745, ; 77: 0x13211aec5d13bf71 => kotlin/jvm/internal/markers/KMappedMarker
	i64 1378526132265832386, ; 78: 0x13218236ab4c4fc2 => com/google/android/material/tabs/TabLayout
	i64 1379266653454234386, ; 79: 0x132423b6b1ae7312 => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i64 1387289802307557894, ; 80: 0x1340a4b99b105a06 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i64 1388766292909739546, ; 81: 0x1345e395dcebce1a => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i64 1390944573830823017, ; 82: 0x134da0b869717c69 => com/google/android/gms/location/DeviceOrientationListener
	i64 1396711346358256981, ; 83: 0x13621d91c5710555 => com/google/android/gms/tasks/OnTokenCanceledListener
	i64 1407244619530254470, ; 84: 0x138789868b2e3886 => android/widget/AdapterView$OnItemLongClickListener
	i64 1433124019402031604, ; 85: 0x13e37ab3df89c1f4 => crc640ec207abc449b2ca/ShellSearchView
	i64 1441304590135825040, ; 86: 0x14008ae36c2f9290 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i64 1441774642277557196, ; 87: 0x14023665f71ea3cc => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i64 1450903687219826498, ; 88: 0x1422a537600acf42 => crc645d80431ce5f73f11/NongreedySnapHelper
	i64 1455431774243506807, ; 89: 0x1432bb7cca99ca77 => plugin/LocalNotification/NotificationActionReceiver
	i64 1471437350001669807, ; 90: 0x146b98794c1776af => androidx/core/content/res/ResourcesCompat
	i64 1484717914214221266, ; 91: 0x149ac7139c65c5d2 => android/text/style/SuperscriptSpan
	i64 1485931295180209339, ; 92: 0x149f16a3e1da3cbb => android/text/Layout$Alignment
	i64 1494974867389571991, ; 93: 0x14bf37b89ee46397 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i64 1500343592614924887, ; 94: 0x14d24a8c5ed89257 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i64 1541538811043856098, ; 95: 0x1564a56197bf3ee2 => crc640ec207abc449b2ca/ShellPageContainer
	i64 1550860884384862055, ; 96: 0x1585c3c1edcecf67 => java/net/ProtocolException
	i64 1553575153728360906, ; 97: 0x158f685f01da11ca => com/google/android/material/navigation/NavigationBarPresenter
	i64 1554440221627438146, ; 98: 0x15927b2552aed442 => android/graphics/drawable/Icon
	i64 1585010481244597099, ; 99: 0x15ff16a28bdaeb6b => android/graphics/drawable/GradientDrawable
	i64 1603037949398414562, ; 100: 0x163f22858f5cf4e2 => android/content/DialogInterface$OnMultiChoiceClickListener
	i64 1610464427476120569, ; 101: 0x165984dd3b1df3f9 => androidx/core/app/SharedElementCallback
	i64 1613636342437143453, ; 102: 0x1664c9b43ba0639d => android/view/WindowInsetsController
	i64 1614800872838357676, ; 103: 0x1668ecd6988562ac => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i64 1620318094642314671, ; 104: 0x167c86b8e64afdaf => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i64 1633393020343953050, ; 105: 0x16aafa4c4434269a => android/text/method/KeyListener
	i64 1644779904733773429, ; 106: 0x16d36e9be35b7e75 => android/graphics/BlurMaskFilter$Blur
	i64 1685482256286101756, ; 107: 0x1764092e992830fc => androidx/activity/BackEventCompat
	i64 1687552701322874432, ; 108: 0x176b643da619ce40 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i64 1700544758422703156, ; 109: 0x17998c72aa700c34 => kotlin/reflect/KType
	i64 1739308160026767747, ; 110: 0x1823438e69557183 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i64 1747499027921055994, ; 111: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1818439532979151601, ; 112: 0x193c651ee8bfe2f1 => androidx/appcompat/app/ActionBar$TabListener
	i64 1822438921100964747, ; 113: 0x194a9a8b0511b38b => androidx/core/view/MenuProvider
	i64 1827611961367173634, ; 114: 0x195cfb65508b9a02 => android/view/View$AccessibilityDelegate
	i64 1831728799718484971, ; 115: 0x196b9ba37012abeb => java/io/IOException
	i64 1844760744016486967, ; 116: 0x1999e81f6ab02237 => android/text/format/DateFormat
	i64 1853552035664219559, ; 117: 0x19b923c18277cda7 => android/animation/ValueAnimator
	i64 1859272559660710869, ; 118: 0x19cd768acb353bd5 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i64 1877272793125324469, ; 119: 0x1a0d69a8bcbd86b5 => java/net/Proxy
	i64 1878806388185091404, ; 120: 0x1a12dc74a981cd4c => androidx/lifecycle/ViewModelStore
	i64 1891509142727870308, ; 121: 0x1a3ffd8b2db2c764 => android/database/Cursor
	i64 1903059501350258092, ; 122: 0x1a6906889c6a05ac => com/google/android/material/bottomnavigation/BottomNavigationView
	i64 1910760924702700175, ; 123: 0x1a8462eff799f28f => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i64 1920667697910321371, ; 124: 0x1aa79518598310db => androidx/loader/content/Loader
	i64 1941234859008890695, ; 125: 0x1af0a6d1b4d49747 => android/util/TypedValue
	i64 1970400480939886480, ; 126: 0x1b5844cc3bae4790 => androidx/appcompat/widget/AppCompatImageView
	i64 1984480781877804166, ; 127: 0x1b8a4ac1c36a7c86 => androidx/viewpager2/adapter/FragmentViewHolder
	i64 2009769534521005831, ; 128: 0x1be422be5186d707 => android/text/style/TypefaceSpan
	i64 2011266387142458950, ; 129: 0x1be9741f7a4f3e46 => crc640ec207abc449b2ca/RecyclerViewContainer
	i64 2015282576494675565, ; 130: 0x1bf7b8d36dffc66d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i64 2027001557442772014, ; 131: 0x1c215b2d4e8a3c2e => androidx/versionedparcelable/CustomVersionedParcelable
	i64 2085653432605498429, ; 132: 0x1cf1babf27065c3d => android/app/AlarmManager
	i64 2091945087796016600, ; 133: 0x1d0814f947b475d8 => android/view/MenuInflater
	i64 2103360364221246790, ; 134: 0x1d30a31b700b2d46 => androidx/fragment/app/FragmentManager
	i64 2111352555338672611, ; 135: 0x1d4d07f6709329e3 => android/view/InputEvent
	i64 2128291229747518775, ; 136: 0x1d893598e7ae1d37 => com/google/android/material/appbar/AppBarLayout$Behavior
	i64 2146917528506713388, ; 137: 0x1dcb621e08b3c52c => androidx/recyclerview/widget/RecyclerView$Adapter
	i64 2156356945290632642, ; 138: 0x1deceb3784fe9dc2 => androidx/lifecycle/Lifecycle
	i64 2157468975174833820, ; 139: 0x1df0de9a2738d69c => org/xmlpull/v1/XmlPullParserException
	i64 2164140653916027403, ; 140: 0x1e08927568a57a0b => java/io/InputStream
	i64 2173847856803601638, ; 141: 0x1e2b0f1bb485dce6 => android/app/TimePickerDialog$OnTimeSetListener
	i64 2179099327615755049, ; 142: 0x1e3db74b08d46329 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i64 2198886843581711497, ; 143: 0x1e8403ef1cf7c489 => android/util/Pair
	i64 2201816183325057292, ; 144: 0x1e8e6c272bcbe10c => android/os/CancellationSignal
	i64 2208930198539504994, ; 145: 0x1ea7b24fe9948d62 => android/view/View$MeasureSpec
	i64 2226060781910726129, ; 146: 0x1ee48e7caa3795f1 => android/widget/AbsListView
	i64 2251816740797555390, ; 147: 0x1f400f65268422be => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i64 2261358779623026332, ; 148: 0x1f61f5d431242e9c => android/text/style/ClickableSpan
	i64 2266689907793747123, ; 149: 0x1f74e67632025cb3 => java/net/HttpURLConnection
	i64 2317137210756387550, ; 150: 0x2028200436f952de => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i64 2319268360137032813, ; 151: 0x202fb24918c5446d => java/security/SecureRandom
	i64 2320453782643024598, ; 152: 0x2033e86bc82622d6 => kotlin/reflect/KVariance
	i64 2348872543734748881, ; 153: 0x2098df2237fa56d1 => com/google/android/gms/common/api/internal/ApiKey
	i64 2349580542494205303, ; 154: 0x209b630e06896577 => android/view/SubMenu
	i64 2357387754135176159, ; 155: 0x20b71fac231543df => java/io/File
	i64 2371646188211964694, ; 156: 0x20e9c7a485488b16 => androidx/viewpager/widget/ViewPager$PageTransformer
	i64 2375243497726607572, ; 157: 0x20f68f60690d00d4 => java/lang/System
	i64 2459346298715867829, ; 158: 0x22215a6db2a18ab5 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i64 2463092707438669875, ; 159: 0x222ea9c473bcb033 => crc645d80431ce5f73f11/SizedItemContentView
	i64 2463909603826170827, ; 160: 0x223190baf6bb7bcb => androidx/core/app/ActivityOptionsCompat
	i64 2487165067737985186, ; 161: 0x22842f73984870a2 => crc640ec207abc449b2ca/ShellItemRendererBase
	i64 2542240576253902638, ; 162: 0x2347da55b132bf2e => android/app/NotificationChannelGroup
	i64 2542726837267699812, ; 163: 0x2349949628319864 => android/view/Window
	i64 2556174521866237421, ; 164: 0x23795b2f37bdb5ed => com/google/android/material/appbar/MaterialToolbar
	i64 2592719635570013650, ; 165: 0x23fb30c59054b5d2 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i64 2600674482769555637, ; 166: 0x241773a9c1e6f0b5 => android/os/PowerManager
	i64 2603260641783996945, ; 167: 0x2420a3c2d34a6211 => android/view/inputmethod/InputMethodManager
	i64 2617258777567259524, ; 168: 0x24525efdca2b6b84 => androidx/fragment/app/FragmentManager$BackStackEntry
	i64 2638117222333619937, ; 169: 0x249c79a2e9091ee1 => crc6452ffdc5b34af3a0f/MauiSearchView
	i64 2648491985637290578, ; 170: 0x24c1556dba613252 => android/view/autofill/AutofillId
	i64 2651308274382996518, ; 171: 0x24cb56d40ca70426 => crc64338477404e88479c/TapAndPanGestureDetector
	i64 2716088215127637102, ; 172: 0x25b17bd7594ebc6e => com/google/android/gms/common/api/TransformedResult
	i64 2752941965278863903, ; 173: 0x26346a21b7b6621f => androidx/navigation/NavDeepLinkRequest
	i64 2756350410967651318, ; 174: 0x26408618523a93f6 => com/microsoft/maui/PlatformInterop
	i64 2803312063028526139, ; 175: 0x26e75d77ff61fc3b => com/google/android/material/appbar/AppBarLayout
	i64 2846152699003131831, ; 176: 0x277f90ccd899d7b7 => mono/java/lang/Runnable
	i64 2875386311327125492, ; 177: 0x27e76c9d9eac8ff4 => android/graphics/drawable/AnimationDrawable
	i64 2877567288675703671, ; 178: 0x27ef2c33facc9b77 => androidx/core/graphics/Insets
	i64 2885364006830175112, ; 179: 0x280adf46e2cf7388 => android/content/IntentFilter
	i64 2897230707376911941, ; 180: 0x283507fa698df645 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i64 2918035570847029626, ; 181: 0x287ef1e42a4a997a => androidx/core/app/Person$Builder
	i64 2927215136274531841, ; 182: 0x289f8ea84aca4601 => kotlinx/coroutines/flow/Flow
	i64 2943981444848205315, ; 183: 0x28db1f86b584be03 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i64 2949523039309837599, ; 184: 0x28eecf93b6e4b51f => android/view/animation/AnimationUtils
	i64 2968152967169336397, ; 185: 0x2930ff65cf26644d => androidx/appcompat/content/res/AppCompatResources
	i64 2972252214977986258, ; 186: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3018121850479589018, ; 187: 0x29e285d512ae369a => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i64 3058182385761881316, ; 188: 0x2a70d8ad49b18ce4 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i64 3071747017624329461, ; 189: 0x2aa109a3415d1cf5 => android/os/Build
	i64 3107623337225989922, ; 190: 0x2b207ef5d711af22 => android/location/Location
	i64 3155261737265476761, ; 191: 0x2bc9bdd52f173499 => android/content/ClipData
	i64 3171452383522110633, ; 192: 0x2c034323c5e6bca9 => android/view/MenuItem
	i64 3176842606959065297, ; 193: 0x2c166984f71ef8d1 => androidx/appcompat/widget/AppCompatButton
	i64 3184253821526941284, ; 194: 0x2c30bdfad2cb1e64 => kotlin/enums/EnumEntries
	i64 3213996194751771492, ; 195: 0x2c9a6882b9a2f364 => androidx/appcompat/widget/TintTypedArray
	i64 3230266667917055639, ; 196: 0x2cd4366b76fb1697 => android/app/DatePickerDialog$OnDateSetListener
	i64 3311365047123382586, ; 197: 0x2df454f74b6f113a => androidx/navigation/NavDestination
	i64 3312753486604898190, ; 198: 0x2df943be8d858f8e => android/app/Dialog
	i64 3321451588128007402, ; 199: 0x2e182a9f2106e4ea => com/google/android/material/shape/CornerTreatment
	i64 3338289054904600959, ; 200: 0x2e53fc355b29c97f => microsoft/maui/platform/MauiNavHostFragment
	i64 3348270271503902806, ; 201: 0x2e77721270fda856 => crc645d80431ce5f73f11/EmptyViewAdapter
	i64 3351507757710206225, ; 202: 0x2e82f28c70486511 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i64 3371417764163457944, ; 203: 0x2ec9ae980e679398 => android/widget/TextView$BufferType
	i64 3407524337605236775, ; 204: 0x2f49f554ca755827 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i64 3409385869268749592, ; 205: 0x2f50926268000d18 => androidx/viewpager2/widget/ViewPager2
	i64 3409776279075562360, ; 206: 0x2f51f575c5da2378 => androidx/lifecycle/LiveData
	i64 3423930440400858719, ; 207: 0x2f843e9843bd6e5f => androidx/core/app/NotificationCompat
	i64 3443619838097558668, ; 208: 0x2fca31ff674b0c8c => android/view/WindowInsetsAnimationController
	i64 3462954715912111105, ; 209: 0x300ee2f773348401 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i64 3463222012655579408, ; 210: 0x300fd61252a63110 => androidx/appcompat/widget/Toolbar
	i64 3476617847597562063, ; 211: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3480992816410333166, ; 212: 0x304ef885ffd30fee => kotlinx/coroutines/flow/StateFlow
	i64 3481315469795932841, ; 213: 0x30501df998423aa9 => androidx/lifecycle/SavedStateHandle
	i64 3487642848378226015, ; 214: 0x306698b13904055f => androidx/appcompat/view/menu/SubMenuBuilder
	i64 3492966660860961054, ; 215: 0x307982abe8e6611e => android/widget/AdapterView
	i64 3499331509520825070, ; 216: 0x30901f77b851faee => kotlinx/coroutines/flow/FlowCollector
	i64 3523214698873108952, ; 217: 0x30e4f91a11c439d8 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i64 3530631042196079534, ; 218: 0x30ff523a0f1083ae => android/content/DialogInterface
	i64 3531967851957559493, ; 219: 0x3104120c5607a0c5 => androidx/core/content/ContextCompat
	i64 3560635333444528101, ; 220: 0x3169eaf880aa67e5 => android/os/Parcelable$Creator
	i64 3602161531208416675, ; 221: 0x31fd72d3db413da3 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i64 3606789160940313841, ; 222: 0x320de3a1dd939cf1 => androidx/appcompat/app/ActionBar
	i64 3638635082376706332, ; 223: 0x327f07544056791c => androidx/lifecycle/viewmodel/CreationExtras$Key
	i64 3648679180818523925, ; 224: 0x32a2b662280d2715 => android/content/pm/PackageManager
	i64 3656396631051491790, ; 225: 0x32be215d0fc259ce => java/net/InetSocketAddress
	i64 3664445150084014760, ; 226: 0x32dab972eda922a8 => android/text/InputFilter
	i64 3668991680153232620, ; 227: 0x32eae07e7365a4ec => android/view/MenuItem$OnMenuItemClickListener
	i64 3689136595673991541, ; 228: 0x33327230190ac975 => androidx/appcompat/widget/DecorToolbar
	i64 3710250570247091010, ; 229: 0x337d753c6344b342 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i64 3715390174298437201, ; 230: 0x338fb7adb508f651 => android/graphics/BlendMode
	i64 3725746463137408145, ; 231: 0x33b482ab1a792491 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i64 3744735303238863079, ; 232: 0x33f7f8eaf76ac8e7 => androidx/core/os/LocaleListCompat
	i64 3804259243029590846, ; 233: 0x34cb71a02e46733e => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i64 3840930880540434390, ; 234: 0x354dba492570dfd6 => android/graphics/drawable/GradientDrawable$Orientation
	i64 3851157429295671005, ; 235: 0x35720f47134666dd => android/graphics/Paint$FontMetrics
	i64 3852940616739286617, ; 236: 0x35786513c16b6e59 => android/text/method/NumberKeyListener
	i64 3875416832529181358, ; 237: 0x35c83f138b78aaae => crc6488302ad6e9e4df1a/MauiApplication
	i64 3880992763041431256, ; 238: 0x35dc0e5b08f23ed8 => android/widget/SpinnerAdapter
	i64 3893923358819291733, ; 239: 0x3609fea9f9051255 => crc64e1fb321c08285b90/ListViewRenderer
	i64 3894539018839858856, ; 240: 0x360c2e9a7dd91ea8 => androidx/core/util/Pair
	i64 3894608914144198532, ; 241: 0x360c6e2c42a27f84 => android/media/AudioAttributes
	i64 3919736965617219737, ; 242: 0x3665b400a894f899 => crc640ec207abc449b2ca/ShellFragmentContainer
	i64 3936478700004404583, ; 243: 0x36a12e8573a76d67 => java/net/SocketAddress
	i64 3940353796168302121, ; 244: 0x36aef2e695f93e29 => android/graphics/Canvas
	i64 3957166361670620563, ; 245: 0x36eaadd708809593 => javax/security/cert/Certificate
	i64 3960555047841620114, ; 246: 0x36f6b7d503fae092 => com/google/android/gms/common/api/internal/SignInConnectionListener
	i64 3965607035774982021, ; 247: 0x3708aa969e285785 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i64 3984314613533678044, ; 248: 0x374b2107fd1299dc => com/google/android/gms/common/api/internal/ConnectionCallbacks
	i64 3987338666338875411, ; 249: 0x3755df64264ef813 => com/google/android/gms/tasks/OnSuccessListener
	i64 4032644632170534830, ; 250: 0x37f6d4ed55e917ae => android/text/GetChars
	i64 4033429712169049384, ; 251: 0x37f99ef404579d28 => androidx/lifecycle/ViewModelProvider$Factory
	i64 4058549526270185901, ; 252: 0x3852dd4a80aa11ad => android/os/PersistableBundle
	i64 4074005787519580853, ; 253: 0x3889c6adc1fd7ab5 => android/view/animation/Interpolator
	i64 4104154920565321793, ; 254: 0x38f4e327cf77b041 => android/preference/PreferenceManager
	i64 4109074850654656120, ; 255: 0x39065dce4cc31678 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i64 4130165489315611710, ; 256: 0x39514ba1463c043e => android/graphics/drawable/ColorDrawable
	i64 4143115911838098129, ; 257: 0x397f4df87c60e2d1 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i64 4154483228285186197, ; 258: 0x39a7b07c1741b095 => androidx/appcompat/app/AppCompatDialog
	i64 4200728372439161058, ; 259: 0x3a4bfc32c52418e2 => android/text/style/ForegroundColorSpan
	i64 4216519898928517408, ; 260: 0x3a8416820c001120 => android/os/IInterface
	i64 4234344718569147786, ; 261: 0x3ac36a1646dd8d8a => crc645d80431ce5f73f11/SimpleViewHolder
	i64 4300416241721128614, ; 262: 0x3bae25c98a1bb6a6 => android/content/DialogInterface$OnDismissListener
	i64 4305371449952891808, ; 263: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 4328468547648071486, ; 264: 0x3c11cf35fc03a73e => android/net/Uri
	i64 4348168546437780602, ; 265: 0x3c57cc4161f3547a => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i64 4355178866544485793, ; 266: 0x3c70b41ab9ac25a1 => kotlin/reflect/KTypeProjection
	i64 4358625020334866226, ; 267: 0x3c7cf25cee307f32 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i64 4365920733137736669, ; 268: 0x3c96ddc6703013dd => com/google/android/gms/tasks/OnCompleteListener
	i64 4368187459060775074, ; 269: 0x3c9eeb59b1a238a2 => crc64338477404e88479c/GenericAnimatorListener
	i64 4392730638380572422, ; 270: 0x3cf61d3deea61f06 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i64 4397070217501049681, ; 271: 0x3d058810ee998351 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i64 4406641945990788791, ; 272: 0x3d278980a31df6b7 => android/content/BroadcastReceiver
	i64 4424452416381353675, ; 273: 0x3d66d007ec077ecb => androidx/fragment/app/FragmentOnAttachListener
	i64 4443498772478509003, ; 274: 0x3daa7a9745773fcb => android/text/style/UnderlineSpan
	i64 4504302345287347834, ; 275: 0x3e827f1e43cfae7a => android/window/OnBackInvokedCallback
	i64 4544552304279233283, ; 276: 0x3f117e3e1fbf2303 => android/content/DialogInterface$OnKeyListener
	i64 4547751580410723029, ; 277: 0x3f1cdbf7a51a3ad5 => android/content/res/Resources$Theme
	i64 4552905414023119785, ; 278: 0x3f2f2b5a0acd03a9 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i64 4590799101254748484, ; 279: 0x3fb5cb75a178c944 => javax/net/ssl/TrustManagerFactory
	i64 4622649712627763794, ; 280: 0x4026f36bfa3d4a52 => crc645d80431ce5f73f11/StartSnapHelper
	i64 4627003729261783485, ; 281: 0x40366b60790e69bd => com/google/android/material/appbar/CollapsingToolbarLayout
	i64 4642866827801349258, ; 282: 0x406ec6c7ea8b4c8a => android/text/Spannable
	i64 4657718675205956216, ; 283: 0x40a38a751b5aa278 => android/view/ActionMode$Callback
	i64 4670057858260774363, ; 284: 0x40cf60e10a27addb => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i64 4672418894112007217, ; 285: 0x40d7c43a895ea431 => android/webkit/WebSettings
	i64 4697026815471874820, ; 286: 0x412f3100b4af7304 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i64 4709865806769841699, ; 287: 0x415ccdff50466623 => androidx/navigation/NavAction
	i64 4714314902586562790, ; 288: 0x416c9c6d280098e6 => android/widget/AbsListView$OnScrollListener
	i64 4718542789084137320, ; 289: 0x417ba1aab0d74768 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i64 4721440782757463965, ; 290: 0x4185ed606c4d079d => android/view/Menu
	i64 4728550804089827080, ; 291: 0x419f2fe744296f08 => android/text/TextUtils
	i64 4731100047365685390, ; 292: 0x41a83e6d3810c08e => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i64 4736390534106549806, ; 293: 0x41bb0a18a6f18e2e => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i64 4740665257139828038, ; 294: 0x41ca39ef2adaf546 => android/widget/Switch
	i64 4740724644572720007, ; 295: 0x41ca6ff261b26b87 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i64 4745606114980505205, ; 296: 0x41dbc79e4755a675 => androidx/activity/result/contract/ActivityResultContract
	i64 4756101769800025001, ; 297: 0x4201115c588983a9 => javax/net/SocketFactory
	i64 4767374780372439158, ; 298: 0x42291e1aa7415076 => androidx/navigation/fragment/FragmentNavigator$Destination
	i64 4813887237269061198, ; 299: 0x42ce5cefee357e4e => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i64 4837197082485161987, ; 300: 0x43212d1e32158003 => androidx/appcompat/view/ActionMode
	i64 4849170862723298580, ; 301: 0x434bb73527cbf514 => com/microsoft/maui/PlatformFontSpan
	i64 4871072858788003099, ; 302: 0x439986f4ff1afd1b => crc6452ffdc5b34af3a0f/MauiPicker
	i64 4919249705507088493, ; 303: 0x4444af8b3a31e86d => android/view/ContextMenu
	i64 4959838116221829671, ; 304: 0x44d4e27d04d84227 => androidx/appcompat/app/ActionBar$LayoutParams
	i64 4975918358601069938, ; 305: 0x450e036233c2f572 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i64 4979108282683510661, ; 306: 0x4519589a478e4f85 => android/text/TextDirectionHeuristic
	i64 5067355848399572953, ; 307: 0x4652dd4bce5acfd9 => androidx/lifecycle/ViewModelProvider
	i64 5098392237163656829, ; 308: 0x46c120ba2dbfb67d => com/google/android/material/tabs/TabLayoutMediator
	i64 5099603885957472034, ; 309: 0x46c56eb725b25f22 => kotlin/Function
	i64 5121018397111246860, ; 310: 0x47118319900e600c => android/widget/RemoteViews
	i64 5180434130187613241, ; 311: 0x47e49964f0247439 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i64 5182512798889215594, ; 312: 0x47ebfbeeb5b5066a => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i64 5191481922773524551, ; 313: 0x480bd94d98c72047 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i64 5207449722149223037, ; 314: 0x484493ee9a693a7d => kotlin/jvm/functions/Function1
	i64 5207893280228753221, ; 315: 0x48462758842dbf45 => java/lang/annotation/Annotation
	i64 5214467817578676657, ; 316: 0x485d82da477bc1b1 => java/lang/Error
	i64 5244624840439226646, ; 317: 0x48c8a6815291e116 => androidx/security/crypto/MasterKey$Builder
	i64 5251140270356514289, ; 318: 0x48dfcc41105945f1 => java/lang/AutoCloseable
	i64 5271295239434318331, ; 319: 0x492767177cb0b1fb => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i64 5273367786484979320, ; 320: 0x492ec40ff36cd678 => android/text/InputFilter$LengthFilter
	i64 5284111793688697262, ; 321: 0x4954efae104459ae => androidx/collection/SparseArrayCompat
	i64 5316905010693685758, ; 322: 0x49c970efe2e441fe => crc64e1fb321c08285b90/VisualElementRenderer_1
	i64 5318185584737426782, ; 323: 0x49cdfd9cc3e09d5e => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i64 5340832762153484109, ; 324: 0x4a1e7319a8ed3f4d => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i64 5367760951850986098, ; 325: 0x4a7e1e25664a6a72 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i64 5386283435113439196, ; 326: 0x4abfec3f1981dfdc => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i64 5395622369430182331, ; 327: 0x4ae119f5300999bb => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i64 5397707764748188610, ; 328: 0x4ae8829d1f2efbc2 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i64 5415641819925984136, ; 329: 0x4b28398abb703388 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i64 5464633097221434266, ; 330: 0x4bd646d95bb9eb9a => crc64e1fb321c08285b90/ConditionalFocusLayout
	i64 5466832252367671256, ; 331: 0x4bde16f811060fd8 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i64 5517358870160988903, ; 332: 0x4c9198a9024bdae7 => android/text/NoCopySpan
	i64 5618336483967093590, ; 333: 0x4df85743d379cb56 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i64 5619483153547007314, ; 334: 0x4dfc6a27a4761552 => android/animation/Animator$AnimatorListener
	i64 5640220797240722407, ; 335: 0x4e4616ee924dc3e7 => android/view/ViewGroup$OnHierarchyChangeListener
	i64 5642493887972642468, ; 336: 0x4e4e2a4bbfec0ea4 => android/graphics/drawable/LayerDrawable
	i64 5642528231169355553, ; 337: 0x4e4e4987e5f66f21 => android/view/View$OnAttachStateChangeListener
	i64 5646917630193404304, ; 338: 0x4e5de1aa7f918990 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i64 5657780495434239337, ; 339: 0x4e847962677dcd69 => androidx/navigation/NavDestination$DeepLinkMatch
	i64 5670648573481752791, ; 340: 0x4eb230d54c7498d7 => com/google/android/gms/tasks/OnFailureListener
	i64 5696965654747052638, ; 341: 0x4f0fb01444cc7a5e => androidx/core/view/ViewStructureCompat
	i64 5700592894481602885, ; 342: 0x4f1c9308d4b11945 => androidx/navigation/NavigatorState
	i64 5711826783282435557, ; 343: 0x4f447c32641c95e5 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i64 5769270564821428901, ; 344: 0x50109103054c6aa5 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i64 5783881719663270525, ; 345: 0x504479c79b679a7d => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i64 5788385766688147453, ; 346: 0x50547a2fc65fc7fd => com/google/android/material/internal/ScrimInsetsFrameLayout
	i64 5788584975648159211, ; 347: 0x50552f5db9abf5eb => androidx/appcompat/widget/LinearLayoutCompat
	i64 5793982059409158284, ; 348: 0x50685bfc3611b08c => java/net/URLConnection
	i64 5838060704937632400, ; 349: 0x5104f5479ef96290 => android/text/style/SubscriptSpan
	i64 5856823971975629766, ; 350: 0x51479e5f29998bc6 => android/widget/LinearLayout$LayoutParams
	i64 5866051512250042973, ; 351: 0x516866c54dce8a5d => android/database/ContentObserver
	i64 5880236631793339455, ; 352: 0x519acc0fd1480c3f => android/content/pm/PackageInfo
	i64 5881696174894196984, ; 353: 0x519ffb822d57a8f8 => kotlin/reflect/KParameter$Kind
	i64 5890385405214755341, ; 354: 0x51beda5143f88a0d => android/widget/FrameLayout
	i64 5898685796340291262, ; 355: 0x51dc577aac8156be => androidx/activity/OnBackPressedCallback
	i64 5902220174995442397, ; 356: 0x51e8e5fa54bf4add => android/view/accessibility/AccessibilityRecord
	i64 5908028809052366783, ; 357: 0x51fd88e6565727bf => crc64338477404e88479c/ColorChangeRevealDrawable
	i64 5916786898001085367, ; 358: 0x521ca655d30a43b7 => android/text/style/WrapTogetherSpan
	i64 5928119462157283979, ; 359: 0x5244e93e07f6f28b => android/widget/Adapter
	i64 5932994801697972382, ; 360: 0x52563b567972609e => com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable
	i64 5933291542840177326, ; 361: 0x52574938e7d172ae => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i64 5937877007168703121, ; 362: 0x526793ad84400a91 => android/view/ViewStructure
	i64 5945637832127768378, ; 363: 0x5283261b6319673a => com/google/android/gms/common/api/ResultCallback
	i64 5974281808001166189, ; 364: 0x52e8e9a6b9fceb6d => crc64f728827fec74e9c3/Toolbar_Container
	i64 5991054489085362647, ; 365: 0x53248050dbf141d7 => javax/security/cert/X509Certificate
	i64 6000768439507874839, ; 366: 0x5347031a303df417 => java/lang/Enum
	i64 6002054437900843800, ; 367: 0x534b94b605a2fb18 => com/google/android/gms/location/Geofence$Builder
	i64 6012758298688632601, ; 368: 0x53719bd0d19e3719 => android/text/method/DigitsKeyListener
	i64 6015413085409403949, ; 369: 0x537b0a548510642d => kotlin/reflect/KCallable
	i64 6038550797406471446, ; 370: 0x53cd3df4e5908516 => androidx/core/view/PointerIconCompat
	i64 6082559832693444876, ; 371: 0x546997f0e8c0910c => android/text/SpannableStringBuilder
	i64 6116679261601087867, ; 372: 0x54e2cf6180bb417b => android/widget/LinearLayout
	i64 6127537489962729811, ; 373: 0x550962e1cd1e0153 => crc64338477404e88479c/InnerGestureListener
	i64 6160296053631453721, ; 374: 0x557dc49f43f18a19 => android/graphics/PorterDuff
	i64 6190038067490173605, ; 375: 0x55e76ed37ee5b2a5 => androidx/core/app/ComponentActivity$ExtraData
	i64 6193589699106797389, ; 376: 0x55f40d042bc7774d => android/view/ActionMode
	i64 6202640532551873668, ; 377: 0x561434b38c31b484 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i64 6204908697973250647, ; 378: 0x561c4395f66d5a57 => android/app/Application$ActivityLifecycleCallbacks
	i64 6216810235712202870, ; 379: 0x56468bf8a7a36876 => crc645d80431ce5f73f11/CenterSnapHelper
	i64 6283887777065464784, ; 380: 0x5734daa3c867f3d0 => androidx/appcompat/app/AlertDialog$Builder
	i64 6288369407718046879, ; 381: 0x5744c6a8bb77bc9f => androidx/navigation/Navigator
	i64 6296800472137223880, ; 382: 0x5762baaae3404ec8 => androidx/loader/content/Loader$OnLoadCompleteListener
	i64 6312114910038555662, ; 383: 0x57992311524b7c0e => android/graphics/drawable/ShapeDrawable
	i64 6317594897563382175, ; 384: 0x57ac9b165815f19f => kotlin/coroutines/CoroutineContext$Key
	i64 6351822608111181092, ; 385: 0x5826350238c31d24 => androidx/appcompat/widget/AppCompatRadioButton
	i64 6360797179963918470, ; 386: 0x58461755900e4886 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i64 6364569032989959824, ; 387: 0x58537dd087d16690 => android/view/KeyboardShortcutGroup
	i64 6368200640279435473, ; 388: 0x586064bdfe4558d1 => androidx/navigation/NavController
	i64 6372223310668282668, ; 389: 0x586eaf56edd8bb2c => com/google/android/material/bottomsheet/BottomSheetBehavior
	i64 6373415978121019041, ; 390: 0x5872ec1075b3bea1 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i64 6377194307404745913, ; 391: 0x5880586f4c80ccb9 => com/google/android/gms/location/LastLocationRequest
	i64 6435837332721058469, ; 392: 0x5950aff4a10942a5 => android/text/Layout
	i64 6446708716262054708, ; 393: 0x59774f6bdb36db34 => android/text/Html
	i64 6448463832069935326, ; 394: 0x597d8bb0997b90de => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i64 6471278565172645060, ; 395: 0x59ce999197b70cc4 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i64 6485460119900587756, ; 396: 0x5a00fb9e1ba306ec => android/view/DragEvent
	i64 6492732295776037053, ; 397: 0x5a1ad19f7f6fe8bd => androidx/core/app/NotificationCompat$Style
	i64 6545321162758640842, ; 398: 0x5ad5a6eb3f1354ca => android/graphics/drawable/PaintDrawable
	i64 6559521101221494528, ; 399: 0x5b0819b00efc7f00 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i64 6575421132961433232, ; 400: 0x5b4096aeaec34690 => com/google/android/material/shape/CornerSize
	i64 6577678479794931002, ; 401: 0x5b489bba32e8853a => androidx/appcompat/view/ActionMode$Callback
	i64 6606571485385333215, ; 402: 0x5baf41c3499e19df => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i64 6614034307282298093, ; 403: 0x5bc9c528e9cee4ed => androidx/core/app/NotificationBuilderWithBuilderAccessor
	i64 6686699664156607880, ; 404: 0x5ccbedeab9c74588 => androidx/fragment/app/FragmentFactory
	i64 6687740929511417890, ; 405: 0x5ccfa0f1355e6822 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i64 6732005985592855696, ; 406: 0x5d6ce3c6b510cc90 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i64 6737402552719891314, ; 407: 0x5d800fece7addb72 => android/content/ClipData$Item
	i64 6740334783866200195, ; 408: 0x5d8a7ac62b8de083 => javax/net/ssl/SSLSession
	i64 6788014833141418870, ; 409: 0x5e33df86bb7a0b76 => android/graphics/Shader$TileMode
	i64 6804602249961354267, ; 410: 0x5e6ecdb1aac5341b => android/view/Window$Callback
	i64 6828642768849235381, ; 411: 0x5ec4366b274c6db5 => android/text/style/MetricAffectingSpan
	i64 6844154811223275857, ; 412: 0x5efb5289f6be7951 => crc645d80431ce5f73f11/TextViewHolder
	i64 6845548855192212761, ; 413: 0x5f00466a1e505519 => androidx/core/content/LocusIdCompat
	i64 6873002302698470465, ; 414: 0x5f61cf2df8c8bc41 => androidx/core/view/ScaleGestureDetectorCompat
	i64 6873453922512352052, ; 415: 0x5f6369ece75d3334 => android/app/Person
	i64 6875961628645093091, ; 416: 0x5f6c52abbc9b6ee3 => android/content/ContentResolver
	i64 6890188429085646662, ; 417: 0x5f9eddded7281f46 => android/app/SearchableInfo
	i64 6895655229236794186, ; 418: 0x5fb249e57039534a => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i64 6917527850199332409, ; 419: 0x5ffffeeddb00b639 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i64 6944519480758605639, ; 420: 0x605fe3ac92659747 => androidx/navigation/NavHostController
	i64 6962963354349051291, ; 421: 0x60a16a4788099d9b => androidx/recyclerview/widget/RecyclerView$State
	i64 6963894354111060225, ; 422: 0x60a4b904ce235901 => com/google/android/gms/tasks/CancellationToken
	i64 6986254017918385287, ; 423: 0x60f42903b8abbc87 => androidx/navigation/NavigatorProvider
	i64 7017970021919054493, ; 424: 0x6164d68d58d35a9d => androidx/appcompat/app/AppCompatActivity
	i64 7045610246270173703, ; 425: 0x61c7093092c94207 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i64 7045700695332650314, ; 426: 0x61c75b73e3067d4a => crc64e1fb321c08285b90/EntryCellView
	i64 7048179316721281784, ; 427: 0x61d029bee66d6af8 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i64 7051550052972173441, ; 428: 0x61dc2369974b1881 => android/media/RingtoneManager
	i64 7088459779947002328, ; 429: 0x625f449d146279d8 => com/google/android/material/shape/ShapePathModel
	i64 7097363012129668510, ; 430: 0x627ee60e5bfc3d9e => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i64 7121581024859586825, ; 431: 0x62d4f035d9eb0109 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i64 7177952650586447618, ; 432: 0x639d35e7c0c75f02 => java/text/DecimalFormatSymbols
	i64 7181616943456565684, ; 433: 0x63aa3a8f6ba7b9b4 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i64 7208505001873526273, ; 434: 0x6409c11b5e4c4e01 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i64 7234103110495206036, ; 435: 0x6464b273799d7a94 => android/graphics/Bitmap$Config
	i64 7244392534668770169, ; 436: 0x648940a0ba6c7b79 => android/graphics/RadialGradient
	i64 7251551689043245100, ; 437: 0x64a2afd73fce782c => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i64 7282188369651690282, ; 438: 0x650f87bd5091eb2a => android/os/Parcelable
	i64 7291810569935423650, ; 439: 0x6531b714667088a2 => android/os/Build$VERSION
	i64 7312906538941252399, ; 440: 0x657ca9c07139832f => com/google/android/material/navigation/NavigationBarItemView
	i64 7351379750238478805, ; 441: 0x660558eefdf6e1d5 => crc64338477404e88479c/PointerGestureHandler
	i64 7359209775714103835, ; 442: 0x66212a4cdd05721b => android/content/pm/PackageItemInfo
	i64 7376341374681065466, ; 443: 0x665e076613e1a7fa => androidx/security/crypto/EncryptedSharedPreferences
	i64 7404595276730345374, ; 444: 0x66c2682c470c279e => mono/android/view/View_OnKeyListenerImplementor
	i64 7406443753550440758, ; 445: 0x66c8f95a5348e936 => crc6452ffdc5b34af3a0f/MauiScrollView
	i64 7409799135806871516, ; 446: 0x66d4e50e22c3d7dc => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i64 7435834490012150186, ; 447: 0x6731641269c5a9aa => crc64338477404e88479c/GenericGlobalLayoutListener
	i64 7437796681088239247, ; 448: 0x67385cac9fd8068f => java/io/FileDescriptor
	i64 7472244136216057313, ; 449: 0x67b2be73c62755e1 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i64 7516290617095606990, ; 450: 0x684f3a7e4495d2ce => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i64 7538647566659605431, ; 451: 0x689ea805399bd3b7 => android/view/WindowManager$LayoutParams
	i64 7543760211319933178, ; 452: 0x68b0d1f1927348fa => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i64 7545390795723370996, ; 453: 0x68b69cf39697f1f4 => androidx/core/app/NotificationCompat$Builder
	i64 7570501070567637873, ; 454: 0x690fd29d0ae60371 => kotlinx/coroutines/flow/SharedFlow
	i64 7605367724016209675, ; 455: 0x698bb1a668350f0b => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i64 7606121740798224536, ; 456: 0x698e5f6c9ea76898 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i64 7620119821450638162, ; 457: 0x69c01a9abf7a7352 => java/io/InterruptedIOException
	i64 7626091922154612119, ; 458: 0x69d55232cc806597 => com/google/android/material/elevation/ElevationOverlayProvider
	i64 7643734333815795607, ; 459: 0x6a13ffe0dc8c2f97 => android/view/View$OnFocusChangeListener
	i64 7649779996619039646, ; 460: 0x6a297a606c5de39e => crc645d80431ce5f73f11/EndSnapHelper
	i64 7658195837123306865, ; 461: 0x6a476089fc1c2571 => java/lang/Character
	i64 7681872310366473403, ; 462: 0x6a9b7e2a7d4d8cbb => android/widget/ListAdapter
	i64 7691739891202254295, ; 463: 0x6abe8cadafcfe5d7 => androidx/core/view/WindowInsetsAnimationCompat
	i64 7705986769563355672, ; 464: 0x6af12a238baf0a18 => crc6452ffdc5b34af3a0f/MauiBoxView
	i64 7707137187261173951, ; 465: 0x6af5407009e7d0bf => crc645d80431ce5f73f11/SelectableViewHolder
	i64 7731510726439183081, ; 466: 0x6b4bd80ada87a2e9 => android/animation/ValueAnimator$AnimatorUpdateListener
	i64 7742963657184098828, ; 467: 0x6b74886c1737ba0c => androidx/appcompat/widget/Toolbar$LayoutParams
	i64 7749032626649128185, ; 468: 0x6b8a181e28555cf9 => android/graphics/drawable/RippleDrawable
	i64 7798613346913539658, ; 469: 0x6c3a3d852b66d64a => com/google/android/material/checkbox/MaterialCheckBox
	i64 7803133828481253567, ; 470: 0x6c4a4cdfcd7580bf => android/animation/ValueAnimator$DurationScaleChangeListener
	i64 7843055997313835077, ; 471: 0x6cd821e011636045 => kotlin/reflect/KAnnotatedElement
	i64 7847572377475219603, ; 472: 0x6ce82d7fc4940093 => kotlin/reflect/KClassifier
	i64 7864467029396250131, ; 473: 0x6d24331872ef5e13 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i64 7864855107911594701, ; 474: 0x6d25940d04fcb2cd => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i64 7865688982361293915, ; 475: 0x6d288a748b59445b => android/view/View$OnScrollChangeListener
	i64 7875199854262555871, ; 476: 0x6d4a548af88714df => android/content/ClipDescription
	i64 7885044884479929607, ; 477: 0x6d6d4e8bb16fed07 => androidx/lifecycle/ViewModel
	i64 7888810119934589243, ; 478: 0x6d7aaf01e335393b => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i64 7890605003148928414, ; 479: 0x6d810f71b39ca59e => androidx/appcompat/widget/AppCompatCheckBox
	i64 7933543037734065265, ; 480: 0x6e199b5bee699471 => java/util/HashMap
	i64 7949315060988846129, ; 481: 0x6e51a3ee41e72031 => android/content/res/TypedArray
	i64 7964504604216117954, ; 482: 0x6e879abd6243cac2 => androidx/security/crypto/MasterKey$KeyScheme
	i64 7977746367831656039, ; 483: 0x6eb6a60dbac4c667 => android/widget/ProgressBar
	i64 7983078697141197390, ; 484: 0x6ec997c76516da4e => mono/android/view/View_OnTouchListenerImplementor
	i64 7984385532120790879, ; 485: 0x6ece3c569fd3f75f => android/text/method/MetaKeyKeyListener
	i64 7995168442746702247, ; 486: 0x6ef48b56a55489a7 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i64 7999688050061220247, ; 487: 0x6f0499e5b9d61997 => android/security/keystore/KeyGenParameterSpec
	i64 8007624256973279022, ; 488: 0x6f20cbd5e3b18f2e => androidx/security/crypto/MasterKey
	i64 8037825913650420308, ; 489: 0x6f8c18150d901a54 => java/util/concurrent/atomic/AtomicReference
	i64 8045985209002586618, ; 490: 0x6fa914eb0aa571fa => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i64 8058145963905469793, ; 491: 0x6fd4490f6ed54d61 => android/view/ContextMenu$ContextMenuInfo
	i64 8062358743859858152, ; 492: 0x6fe3408fb3880ae8 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i64 8074648518520542053, ; 493: 0x700eea0bd88d1365 => mono/android/view/View_OnFocusChangeListenerImplementor
	i64 8078560296882758705, ; 494: 0x701ccfc9b8456431 => androidx/core/view/autofill/AutofillIdCompat
	i64 8113256564074339257, ; 495: 0x709813dbf141dbb9 => crc6452ffdc5b34af3a0f/ScopedFragment
	i64 8128307717584548501, ; 496: 0x70cd8ccdb3b17295 => kotlin/jvm/functions/Function0
	i64 8144041705376199321, ; 497: 0x710572c834ea3299 => android/app/NotificationChannel
	i64 8178596677272620685, ; 498: 0x718036588e064e8d => android/view/View$OnDragListener
	i64 8188592205440608210, ; 499: 0x71a3b939cfd1e7d2 => androidx/appcompat/view/menu/MenuBuilder
	i64 8190305621607579207, ; 500: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8209608963639478488, ; 501: 0x71ee63db269808d8 => java/util/function/Function
	i64 8233717759971265430, ; 502: 0x72440aadb7e98b96 => androidx/fragment/app/FragmentContainer
	i64 8252554373049789286, ; 503: 0x7286f67a773aab66 => crc64338477404e88479c/DragAndDropGestureHandler
	i64 8278064317100257641, ; 504: 0x72e197a32898f169 => androidx/navigation/NavDeepLinkBuilder
	i64 8285028404156604688, ; 505: 0x72fa557007c6a110 => androidx/core/app/RemoteInput
	i64 8297633541287010709, ; 506: 0x73271dbe38c76195 => android/app/Notification$Builder
	i64 8362058396472415889, ; 507: 0x740bffceb8cf9691 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i64 8372779371615156560, ; 508: 0x7432167a43d6f950 => android/widget/SeekBar
	i64 8394886757576584589, ; 509: 0x7480a1072afbad8d => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i64 8416619862292774857, ; 510: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8421791132995673144, ; 511: 0x74e0366a36bddc38 => androidx/recyclerview/widget/ItemTouchHelper
	i64 8425647329628860924, ; 512: 0x74ede99af53f31fc => crc6452ffdc5b34af3a0f/MauiShapeView
	i64 8427024478828076046, ; 513: 0x74f2ce1d7e119c0e => android/text/TextWatcher
	i64 8437033726010721180, ; 514: 0x75165d78f4dc039c => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i64 8462361838522003613, ; 515: 0x75705941b1ecf09d => android/os/IBinder
	i64 8469710080902461022, ; 516: 0x758a7471b2bc765e => kotlin/sequences/Sequence
	i64 8471012062094864289, ; 517: 0x758f1496d136afa1 => com/google/android/gms/common/api/Api$ClientKey
	i64 8487642170263250902, ; 518: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8549089476185573369, ; 519: 0x76a47795651247f9 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i64 8574675756585218473, ; 520: 0x76ff5e2b876a71a9 => androidx/navigation/NavViewModelStoreProvider
	i64 8587172038193766563, ; 521: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8618892606698062027, ; 522: 0x779c7529337a80cb => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i64 8655205006257707444, ; 523: 0x781d7718902c59b4 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i64 8667795546213253293, ; 524: 0x784a322015c100ad => androidx/navigation/Navigator$Extras
	i64 8712284566595978930, ; 525: 0x78e840a7561246b2 => android/view/MenuItem$OnActionExpandListener
	i64 8719122993390795943, ; 526: 0x79008c2aa5ffbca7 => android/view/OrientationEventListener
	i64 8722435519081898203, ; 527: 0x790c50e4232060db => android/app/PendingIntent
	i64 8726223063428673037, ; 528: 0x7919c5a4867cae0d => kotlin/reflect/KParameter
	i64 8728590358298650346, ; 529: 0x79222eaf504a66ea => com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks
	i64 8733961911020773980, ; 530: 0x79354415642f625c => com/google/android/gms/location/LocationServices
	i64 8784751650103882924, ; 531: 0x79e9b5150877f4ac => android/content/res/Configuration
	i64 8808233201678771961, ; 532: 0x7a3d216dccdd66f9 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i64 8815982235821639925, ; 533: 0x7a58a922684d88f5 => androidx/core/widget/TextViewCompat
	i64 8816314156964839346, ; 534: 0x7a59d703d222ffb2 => com/google/android/gms/location/GeofencingRequest$Builder
	i64 8818441445812352019, ; 535: 0x7a6165c5da3a3413 => androidx/recyclerview/widget/OrientationHelper
	i64 8820163834125063958, ; 536: 0x7a678446a1c59716 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i64 8844400343224702393, ; 537: 0x7abd9f40a54055b9 => androidx/appcompat/view/menu/MenuItemImpl
	i64 8851962138467402791, ; 538: 0x7ad87caa4c8e8427 => com/google/android/gms/common/api/Response
	i64 8853215855731863812, ; 539: 0x7adcf0ea18c0f104 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i64 8914810474906455838, ; 540: 0x7bb7c4e4ecbb0f1e => com/microsoft/maui/PlatformAppCompatTextView
	i64 8931605240031794265, ; 541: 0x7bf36fa4e61cd459 => com/google/android/material/shape/EdgeTreatment
	i64 8950391188589719199, ; 542: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 8972627133644507939, ; 543: 0x7c852cd6cae98b23 => android/view/LayoutInflater
	i64 8979848056199665951, ; 544: 0x7c9ed43ad6c3591f => androidx/core/view/ActionProvider
	i64 8981516335682015417, ; 545: 0x7ca4c1856cb1d0b9 => android/graphics/Paint$Style
	i64 8984696751965337035, ; 546: 0x7cb00e17cb7ff5cb => android/text/style/StyleSpan
	i64 9000742728442691829, ; 547: 0x7ce90fd2d381c0f5 => java/io/Reader
	i64 9013544160697135900, ; 548: 0x7d168aa889a6331c => android/view/ViewConfiguration
	i64 9026643144054951887, ; 549: 0x7d45141d439c4fcf => androidx/core/text/PrecomputedTextCompat
	i64 9036096474510254000, ; 550: 0x7d66a9de4757dfb0 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i64 9039115063128758362, ; 551: 0x7d71634235ac185a => android/webkit/CookieManager
	i64 9052904945156302472, ; 552: 0x7da26115516b2688 => android/graphics/Paint
	i64 9065084893191776779, ; 553: 0x7dcda6ae7574aa0b => com/google/android/gms/tasks/Continuation
	i64 9090354662222454056, ; 554: 0x7e276d670c15dd28 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i64 9090573862148084054, ; 555: 0x7e2834c381c99156 => androidx/lifecycle/viewmodel/CreationExtras
	i64 9154019302997878316, ; 556: 0x7f099c0e5641e62c => javax/net/ssl/KeyManager
	i64 9187009981601112352, ; 557: 0x7f7ed0e7454d6120 => android/view/ViewGroup$MarginLayoutParams
	i64 9217569019755338609, ; 558: 0x7feb622fcb299b71 => java/security/Principal
	i64 9223813467167136034, ; 559: 0x8001917a80f61922 => androidx/appcompat/app/ActionBarDrawerToggle
	i64 9261475547774197607, ; 560: 0x80875ef0f90c1f67 => android/widget/ImageView
	i64 9263999828566228768, ; 561: 0x809056c2e4f83f20 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i64 9266054422632426471, ; 562: 0x8097a3675a716be7 => android/text/SpannableStringInternal
	i64 9267880512747732096, ; 563: 0x809e20391717fc80 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i64 9273509983330139147, ; 564: 0x80b22032596e7c0b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i64 9313201588916243318, ; 565: 0x813f23806cf4cb76 => androidx/core/graphics/drawable/DrawableCompat
	i64 9354128719103063801, ; 566: 0x81d08a827d6af6f9 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i64 9355021183435591253, ; 567: 0x81d3b63388eece55 => android/graphics/drawable/Drawable
	i64 9367788077672619287, ; 568: 0x8201119fbcd0dd17 => android/graphics/PathEffect
	i64 9374080444557732201, ; 569: 0x82176c7f91cca969 => android/os/IBinder$DeathRecipient
	i64 9387983273234612227, ; 570: 0x8248d10c1e754003 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i64 9472253597416177494, ; 571: 0x83743475f0683f56 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i64 9490804761146227161, ; 572: 0x83b61ca554b4f9d9 => androidx/core/view/ActionProvider$VisibilityListener
	i64 9507464054666394215, ; 573: 0x83f14c2f5d2f7a67 => android/widget/AbsSeekBar
	i64 9508416549184848137, ; 574: 0x83f4ae79469bc109 => java/lang/ClassLoader
	i64 9511744497939342886, ; 575: 0x84008139b9f36626 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i64 9521006120370395580, ; 576: 0x8421689f3cff59bc => androidx/viewpager/widget/ViewPager
	i64 9525517866534212039, ; 577: 0x84317008006891c7 => androidx/core/app/NotificationCompat$Action
	i64 9546328148326883335, ; 578: 0x847b5edf4e562007 => com/google/android/gms/common/api/PendingResult
	i64 9561326475558871143, ; 579: 0x84b0a7c57d396067 => com/microsoft/maui/MauiViewGroup
	i64 9653796168998115956, ; 580: 0x85f92c77bb28da74 => android/view/accessibility/AccessibilityEvent
	i64 9656994348200431989, ; 581: 0x86048931da711175 => android/text/SpannableString
	i64 9667515047141612341, ; 582: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9712620497184332666, ; 583: 0x86ca28e1ecd99b7a => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i64 9733439219601035317, ; 584: 0x87141f66772cd035 => androidx/activity/contextaware/OnContextAvailableListener
	i64 9785570804745343508, ; 585: 0x87cd54ccfd479214 => java/net/URL
	i64 9800253854282402593, ; 586: 0x88017ef4dd27cb21 => android/view/ViewPropertyAnimator
	i64 9864125463926107429, ; 587: 0x88e469d8d9336d25 => androidx/activity/ComponentDialog
	i64 9866983915955550238, ; 588: 0x88ee91981305f81e => java/lang/SecurityException
	i64 9869939015140501507, ; 589: 0x88f9113db837e803 => android/app/Activity
	i64 9876054856643157065, ; 590: 0x890ecb91087c9c49 => crc64e1fb321c08285b90/ListViewAdapter
	i64 9876202071173388047, ; 591: 0x890f51751644570f => androidx/core/content/pm/ShortcutInfoCompat
	i64 9879649068864214155, ; 592: 0x891b907bc72b948b => android/media/AudioAttributes$Builder
	i64 9891313474396361641, ; 593: 0x89450132d36e13a9 => androidx/core/internal/view/SupportMenuItem
	i64 9907358733905502342, ; 594: 0x897e0246eccd2086 => crc64b5e713d400f589b7/MauiDrawable
	i64 9921777852642371167, ; 595: 0x89b13c639f16265f => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i64 9924230831254210082, ; 596: 0x89b9f35c35e30622 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i64 9929704669852541671, ; 597: 0x89cd65c9931922e7 => androidx/navigation/fragment/FragmentNavigator
	i64 9937229904387729072, ; 598: 0x89e821f2c66b66b0 => com/google/android/gms/common/api/Api$AbstractClientBuilder
	i64 9977296435420958008, ; 599: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 9995467285110801699, ; 600: 0x8ab708899d114523 => com/google/android/material/appbar/HeaderBehavior
	i64 10002475813170388786, ; 601: 0x8acfeec1b6751f32 => android/graphics/Insets
	i64 10012846325985404475, ; 602: 0x8af4c6aee2ef663b => crc645d80431ce5f73f11/PositionalSmoothScroller
	i64 10018881518736268144, ; 603: 0x8b0a37a8b3005b70 => android/view/WindowInsetsAnimationControlListener
	i64 10066722417169108808, ; 604: 0x8bb42eb3dfd38f48 => crc64338477404e88479c/GenericMenuClickListener
	i64 10077040829496644253, ; 605: 0x8bd8d73e7541529d => kotlin/reflect/KTypeProjection$Companion
	i64 10083342998336719661, ; 606: 0x8bef3b087c484b2d => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i64 10091524575743969799, ; 607: 0x8c0c4c226b580a07 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i64 10095829318087436361, ; 608: 0x8c1b974659936849 => androidx/fragment/app/Fragment
	i64 10116006898471457589, ; 609: 0x8c6346ad60cad335 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i64 10128540585303438051, ; 610: 0x8c8fcdffc02372e3 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i64 10161219523932954642, ; 611: 0x8d03e75210c9a012 => androidx/recyclerview/widget/SnapHelper
	i64 10171982482575768634, ; 612: 0x8d2a242ca76cbc3a => com/google/android/gms/location/FusedOrientationProviderClient
	i64 10199805429783807289, ; 613: 0x8d8cfcff5c5d4539 => com/google/android/gms/tasks/SuccessContinuation
	i64 10230811296040817611, ; 614: 0x8dfb24ab289113cb => androidx/lifecycle/ViewModelStoreOwner
	i64 10266059374509936169, ; 615: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10293068996586880171, ; 616: 0x8ed853b7a625bcab => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i64 10293479692282140573, ; 617: 0x8ed9c93e312c979d => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i64 10343814437336902217, ; 618: 0x8f8c9c6d4805ea49 => java/util/function/UnaryOperator
	i64 10365934324252812416, ; 619: 0x8fdb3258ca1e2480 => android/graphics/drawable/StateListDrawable
	i64 10369805750189513392, ; 620: 0x8fe8f36361d95ab0 => android/widget/AutoCompleteTextView
	i64 10373704809055737018, ; 621: 0x8ff6cd8fc48754ba => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i64 10396963593911974655, ; 622: 0x90496f4d9dcabaff => androidx/lifecycle/LifecycleObserver
	i64 10446292634862201785, ; 623: 0x90f8afcdf8bdabb9 => android/widget/Filter$FilterResults
	i64 10466912235619695019, ; 624: 0x9141f138e34d39ab => android/text/StaticLayout$Builder
	i64 10486969556178867945, ; 625: 0x9189333fbe6096e9 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i64 10499957734077086001, ; 626: 0x91b757ed9047b931 => android/view/ViewGroup$LayoutParams
	i64 10528560983360194325, ; 627: 0x921cf66e8138c715 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 10529189084302795258, ; 628: 0x921f31afa6c9e1fa => crc645d80431ce5f73f11/SpacingItemDecoration
	i64 10532452268255264688, ; 629: 0x922ac988df1cbfb0 => kotlin/reflect/KDeclarationContainer
	i64 10534599278228167471, ; 630: 0x92326a3a95e05b2f => crc64e95e69e34d869711/LocationCallback
	i64 10556732314164660806, ; 631: 0x92810c1b96ac0a46 => android/view/WindowManager
	i64 10565471938346028939, ; 632: 0x92a018bfe9790f8b => android/content/pm/ShortcutInfo
	i64 10589642565195629679, ; 633: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10592509549452171395, ; 634: 0x930027504f079883 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i64 10596685970650905969, ; 635: 0x930efdbf25033d71 => androidx/core/app/TaskStackBuilder
	i64 10612931704630082588, ; 636: 0x9348b527d7f4fc1c => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i64 10647948239400402802, ; 637: 0x93c51c822c34ff72 => com/google/android/material/tabs/TabLayout$Tab
	i64 10655477448226598286, ; 638: 0x93dfdc48b5bb6d8e => androidx/navigation/NavDeepLink
	i64 10655658609895831411, ; 639: 0x93e0810cb2ac7773 => android/content/res/ColorStateList
	i64 10669273640681975941, ; 640: 0x9410dfd91449b085 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i64 10677704381882915324, ; 641: 0x942ed38ffac359fc => android/widget/FilterQueryProvider
	i64 10721574239302262859, ; 642: 0x94caaef71e97204b => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i64 10722894652849872693, ; 643: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 10735323890841457132, ; 644: 0x94fb8833565e91ec => crc64cd5e4cacae602ef1/MainApplication
	i64 10749607925354851574, ; 645: 0x952e4774497fecf6 => androidx/navigation/NavBackStackEntry
	i64 10783898034563810276, ; 646: 0x95a81a207c3583e4 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i64 10799644280525089146, ; 647: 0x95e00b411146e97a => android/view/View$OnLayoutChangeListener
	i64 10799850913504254972, ; 648: 0x95e0c72f8e995bfc => crc640ec207abc449b2ca/CustomFrameLayout
	i64 10804287674762873921, ; 649: 0x95f08a65895f4c41 => androidx/fragment/app/Fragment$SavedState
	i64 10807464319380525259, ; 650: 0x95fbd389bf6290cb => android/window/OnBackInvokedDispatcher
	i64 10808978037618020601, ; 651: 0x96013441bd3890f9 => android/database/DataSetObserver
	i64 10846083286812210570, ; 652: 0x96850748cabe358a => android/widget/CheckBox
	i64 10848177494516672777, ; 653: 0x968c77f4850da909 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i64 10882406340763957480, ; 654: 0x970612e8d2b1b8e8 => crc64e1fb321c08285b90/TableViewRenderer
	i64 10941052169733558586, ; 655: 0x97d66cfaedfc513a => com/google/android/material/navigation/NavigationBarView
	i64 10954308252324574527, ; 656: 0x980585512befb53f => androidx/recyclerview/widget/LinearSnapHelper
	i64 10971842169477510975, ; 657: 0x9843d052635bb73f => java/io/RandomAccessFile
	i64 11005920483369566278, ; 658: 0x98bce25e25704046 => java/util/Random
	i64 11011592790621755141, ; 659: 0x98d1094d18431705 => androidx/recyclerview/widget/PagerSnapHelper
	i64 11013759639154314179, ; 660: 0x98d8bc09d553cbc3 => crc6452ffdc5b34af3a0f/BorderDrawable
	i64 11055023287189350860, ; 661: 0x996b551b9097a9cc => androidx/recyclerview/widget/GridLayoutManager
	i64 11068121910117196641, ; 662: 0x9999de3c5f40e361 => androidx/recyclerview/widget/LinearLayoutManager
	i64 11082526234099387957, ; 663: 0x99cd0ae465710e35 => androidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme
	i64 11112718717483603117, ; 664: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11122547060090108130, ; 665: 0x9a5b399f123c78e2 => com/google/android/gms/location/LocationAvailability
	i64 11139934129755664080, ; 666: 0x9a98ff11b1562ed0 => android/graphics/Region
	i64 11160671548185282843, ; 667: 0x9ae2aba42c64891b => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i64 11198249491814670955, ; 668: 0x9b682c94f9cfe26b => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i64 11219748541155570913, ; 669: 0x9bb48dda78c8f4e1 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i64 11223175285536439019, ; 670: 0x9bc0ba759257baeb => kotlin/reflect/KVisibility
	i64 11240308327273157113, ; 671: 0x9bfd98deb4fb51f9 => android/graphics/RectF
	i64 11253024261992253531, ; 672: 0x9c2ac5f1f8e6885b => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i64 11257397215974795791, ; 673: 0x9c3a4f1fa9a62a0f => com/google/android/gms/common/api/Api$AnyClientKey
	i64 11280841333105678042, ; 674: 0x9c8d996c8b4ed6da => java/util/function/IntConsumer
	i64 11291374328304676105, ; 675: 0x9cb305209890ad09 => android/view/GestureDetector
	i64 11300391941134751458, ; 676: 0x9cd30e99320616e2 => android/view/WindowInsetsAnimation
	i64 11303092492513440383, ; 677: 0x9cdca6bc4fa5f27f => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i64 11316980762789968198, ; 678: 0x9d0dfe0b38067946 => androidx/navigation/fragment/NavHostFragment
	i64 11318214316270108732, ; 679: 0x9d125ff44505403c => androidx/core/view/DisplayCutoutCompat
	i64 11319579417811750335, ; 680: 0x9d173981bd7e0dbf => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i64 11347448736908623594, ; 681: 0x9d7a3c813e64beea => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i64 11348321151605279956, ; 682: 0x9d7d55f61e7c0cd4 => android/view/animation/Animation
	i64 11350043478091902911, ; 683: 0x9d83746880e82fbf => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i64 11351869846565280406, ; 684: 0x9d89f17b0cfdda96 => java/util/Comparator
	i64 11362626114661944393, ; 685: 0x9db0283fe0008c49 => crc640ec207abc449b2ca/ScrollLayoutManager
	i64 11373498917253313136, ; 686: 0x9dd6c901802c7270 => android/graphics/Bitmap$CompressFormat
	i64 11382222561093279360, ; 687: 0x9df5c71d1c66de80 => androidx/appcompat/widget/AppCompatImageButton
	i64 11393831178655295976, ; 688: 0x9e1f05170284e9e8 => javax/net/ssl/SSLContext
	i64 11414604930377451637, ; 689: 0x9e68d2b4fe920875 => androidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme
	i64 11418789088580397297, ; 690: 0x9e77b02d3df0e8f1 => java/util/function/IntFunction
	i64 11433447159505902538, ; 691: 0x9eabc39d548c5bca => crc64e1fb321c08285b90/ViewRenderer
	i64 11450474772635999718, ; 692: 0x9ee84223748a5de6 => androidx/core/view/OnApplyWindowInsetsListener
	i64 11453358337200194823, ; 693: 0x9ef280b9a6138507 => java/lang/Iterable
	i64 11455013877405489018, ; 694: 0x9ef8626e23ec977a => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i64 11458704622197203966, ; 695: 0x9f057f24a030e3fe => androidx/fragment/app/FragmentContainerView
	i64 11477624228043221414, ; 696: 0x9f48b66ca1eee9a6 => kotlin/reflect/KClass
	i64 11502418447837245771, ; 697: 0x9fa0cca2c93d314b => androidx/core/view/AccessibilityDelegateCompat
	i64 11535591933768018538, ; 698: 0xa016a7bede1aaa6a => android/widget/CompoundButton
	i64 11559083904147049039, ; 699: 0xa06a1d91739eca4f => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i64 11573301743732151818, ; 700: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11583143563284489324, ; 701: 0xa0bf97b35feca46c => android/util/StateSet
	i64 11585998938245262039, ; 702: 0xa0c9bca62a296ad7 => mono/android/runtime/JavaArray
	i64 11598024117237361233, ; 703: 0xa0f4757c5458aa51 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i64 11599884267556258346, ; 704: 0xa0fb11485355422a => android/graphics/Paint$Join
	i64 11602363698226276253, ; 705: 0xa103e04fc3aa279d => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i64 11645903917753074926, ; 706: 0xa19e8fe91a0084ee => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i64 11652834085301598403, ; 707: 0xa1b72edc78f738c3 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i64 11674634942540717397, ; 708: 0xa204a2a018809d55 => com/microsoft/maui/PlatformLineHeightSpan
	i64 11699825756741853333, ; 709: 0xa25e218994906095 => androidx/core/view/contentcapture/ContentCaptureSessionCompat
	i64 11712899692065226922, ; 710: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11727968597912444134, ; 711: 0xa2c21d4d6781dce6 => androidx/appcompat/widget/AppCompatTextView
	i64 11733033384446672514, ; 712: 0xa2d41bb2e9be3e82 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i64 11746098886186715163, ; 713: 0xa30286b417c5481b => crc6452ffdc5b34af3a0f/MauiWebView
	i64 11763058807128842702, ; 714: 0xa33ec7a966f1e1ce => java/security/cert/Certificate
	i64 11772704798930040391, ; 715: 0xa3610ca3e1c2f647 => androidx/recyclerview/widget/RecyclerView
	i64 11803136239818375911, ; 716: 0xa3cd29dfd9ea02e7 => com/microsoft/maui/ImageLoaderCallback
	i64 11815547073218641318, ; 717: 0xa3f941762e1a7da6 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i64 11852070525194104598, ; 718: 0xa47b035903126f16 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i64 11862840459039463804, ; 719: 0xa4a1468ba42dd97c => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i64 11881882108125626106, ; 720: 0xa4e4ecd30de5befa => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i64 11886035554516586888, ; 721: 0xa4f3ae5ca69fd188 => androidx/core/widget/CompoundButtonCompat
	i64 11887610981211642202, ; 722: 0xa4f947344327195a => crc645d80431ce5f73f11/DataChangeObserver
	i64 11887946763374938247, ; 723: 0xa4fa7898a3b7c887 => android/view/accessibility/AccessibilityNodeInfo
	i64 11893890523420890567, ; 724: 0xa50f966a1de315c7 => java/util/concurrent/Future
	i64 11895525870086415889, ; 725: 0xa51565c0eef86611 => java/util/concurrent/TimeUnit
	i64 11904910774208243445, ; 726: 0xa536bd46336726f5 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i64 11916781626688848330, ; 727: 0xa560e9c06cb0c1ca => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i64 11934798350699665373, ; 728: 0xa5a0ebdddf5f17dd => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i64 11954228872253987625, ; 729: 0xa5e5f3d2b66adb29 => android/view/View
	i64 11964861904226695339, ; 730: 0xa60bba82640938ab => android/view/animation/DecelerateInterpolator
	i64 11999052403845373657, ; 731: 0xa68532966c801ed9 => androidx/activity/ComponentActivity
	i64 12016049636675011370, ; 732: 0xa6c1957b1579c32a => android/widget/EditText
	i64 12038506047031854553, ; 733: 0xa7115d778fb9c5d9 => androidx/navigation/ui/AppBarConfiguration$Builder
	i64 12058030931184860355, ; 734: 0xa756bb3ee7f23cc3 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i64 12073113755568574408, ; 735: 0xa78c50fe9d8c0fc8 => androidx/navigation/NavDirections
	i64 12087035618859132646, ; 736: 0xa7bdc6db0197a6e6 => androidx/navigation/NavController$OnDestinationChangedListener
	i64 12095812086181006791, ; 737: 0xa7dcf5018ab20dc7 => java/text/DecimalFormat
	i64 12121692130554347282, ; 738: 0xa838e6c4ee56ff12 => android/content/DialogInterface$OnShowListener
	i64 12140364777871027762, ; 739: 0xa87b3d716caaae32 => com/google/android/material/button/MaterialButton
	i64 12170573762016350767, ; 740: 0xa8e6905aa5ac922f => androidx/coordinatorlayout/widget/CoordinatorLayout
	i64 12177184876160314206, ; 741: 0xa8fe0d209bcb6b5e => crc640ec207abc449b2ca/ShellToolbarTracker
	i64 12178551107760647509, ; 742: 0xa902e7b531036d55 => android/content/pm/ShortcutInfo$Builder
	i64 12188243356700996345, ; 743: 0xa92556c1c02d72f9 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i64 12204817298245236931, ; 744: 0xa96038ab3a7338c3 => android/animation/Animator
	i64 12228984007958404582, ; 745: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12243761174021165547, ; 746: 0xa9ea93eae44051eb => com/google/android/gms/tasks/TaskCompletionSource
	i64 12306474914099529673, ; 747: 0xaac961bb5c2887c9 => java/util/ListIterator
	i64 12357628517981024779, ; 748: 0xab7f1da9e07ef20b => com/google/android/material/tabs/TabLayout$TabView
	i64 12394252047178846529, ; 749: 0xac013a91c0c0d141 => androidx/core/view/ViewPropertyAnimatorListener
	i64 12406331470302940810, ; 750: 0xac2c24bd9d280e8a => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i64 12418532417713721361, ; 751: 0xac577d700d7fd011 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i64 12424155630573804649, ; 752: 0xac6b77b852855c69 => androidx/cursoradapter/widget/CursorAdapter
	i64 12426529965699990912, ; 753: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 754: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12459958381958228342, ; 755: 0xaceaaa21f8c56976 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i64 12476375190645835422, ; 756: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 757: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12498190180125277945, ; 758: 0xad727dc025a47ef9 => android/view/animation/AccelerateInterpolator
	i64 12507292395611969941, ; 759: 0xad92d42ad6655995 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i64 12519182673097780081, ; 760: 0xadbd124fcc37eb71 => crc640ec207abc449b2ca/ShellItemRenderer
	i64 12521855745784279582, ; 761: 0xadc691750827f21e => android/graphics/drawable/Drawable$ConstantState
	i64 12532121860257401396, ; 762: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12552175079452445066, ; 763: 0xae3248bb0146098a => androidx/lifecycle/Lifecycle$Event
	i64 12560095818944596910, ; 764: 0xae4e6c99e10fcbae => androidx/core/app/NotificationCompat$BigTextStyle
	i64 12562806007935242682, ; 765: 0xae580d80ed1f91ba => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i64 12617938093516012652, ; 766: 0xaf1bebd7e5e43c6c => crc640ec207abc449b2ca/ShellSectionRenderer
	i64 12620927486094336076, ; 767: 0xaf268aae189de04c => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i64 12636253712611178016, ; 768: 0xaf5cfdcd47e67620 => android/text/style/ParagraphStyle
	i64 12636367776980213416, ; 769: 0xaf5d658af6191ea8 => androidx/fragment/app/strictmode/Violation
	i64 12688064143538323190, ; 770: 0xb0150f1d42f8fef6 => com/google/android/gms/location/LocationResult
	i64 12693819786861733279, ; 771: 0xb02981d766b7e59f => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i64 12710812532019973712, ; 772: 0xb065e0a731a24e50 => androidx/navigation/NavGraphNavigator
	i64 12728286941582258848, ; 773: 0xb0a3f5893840f2a0 => android/text/StaticLayout
	i64 12743457539483353118, ; 774: 0xb0d9db1d4b2dc01e => androidx/lifecycle/Lifecycle$State
	i64 12774266387958735952, ; 775: 0xb1474f99507e2450 => androidx/core/content/pm/PackageInfoCompat
	i64 12779280579384883315, ; 776: 0xb1591ffabb48b873 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i64 12787245097144369327, ; 777: 0xb1756baa872540af => android/text/style/CharacterStyle
	i64 12792955789176512524, ; 778: 0xb189b582a124a00c => androidx/core/view/ViewPropertyAnimatorCompat
	i64 12805546267304270225, ; 779: 0xb1b6707bc1801991 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i64 12806567541869262104, ; 780: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 12807831994208149158, ; 781: 0xb1be8f5705a8dea6 => com/google/android/material/bottomsheet/BottomSheetDialog
	i64 12811923833721965587, ; 782: 0xb1cd18d8a65bcc13 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i64 12829421241662982594, ; 783: 0xb20b42a5672c49c2 => androidx/appcompat/app/AppCompatDelegate
	i64 12834769660475362759, ; 784: 0xb21e430132984dc7 => android/widget/Filter
	i64 12849974230675558933, ; 785: 0xb254477b10571215 => android/widget/ImageButton
	i64 12860500274240197627, ; 786: 0xb279acdc8fe693fb => androidx/lifecycle/viewmodel/ViewModelInitializer
	i64 12882710959019299141, ; 787: 0xb2c8955c98609145 => java/net/SocketTimeoutException
	i64 12888661543481730055, ; 788: 0xb2ddb96301776407 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i64 12915473442100513285, ; 789: 0xb33cfaaa9e648a05 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i64 12961895021666395627, ; 790: 0xb3e1e6d8de5465eb => crc6452ffdc5b34af3a0f/ContainerView
	i64 12972298771783691784, ; 791: 0xb406dd00b4672e08 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i64 13009226340247381357, ; 792: 0xb48a0e6e3d19a56d => kotlinx/coroutines/CoroutineScope
	i64 13016710968238440211, ; 793: 0xb4a4a5a8fdc87f13 => com/google/android/gms/common/api/PendingResult$StatusListener
	i64 13035766792522807275, ; 794: 0xb4e858d4d327b7eb => com/google/android/gms/common/api/Scope
	i64 13046320909237610371, ; 795: 0xb50dd7be9cdbe783 => android/content/res/XmlResourceParser
	i64 13093392672838054310, ; 796: 0xb5b51343a136f1a6 => android/os/Message
	i64 13096039480881423512, ; 797: 0xb5be7a85a66da498 => java/util/function/ToLongFunction
	i64 13096056689640900747, ; 798: 0xb5be8a2c606c888b => android/widget/Filterable
	i64 13096165904162462397, ; 799: 0xb5beed80dd2f9abd => java/security/GeneralSecurityException
	i64 13098653679835327793, ; 800: 0xb5c7c41f4672ad31 => crc645d80431ce5f73f11/ScrollHelper
	i64 13110294641226230201, ; 801: 0xb5f11f83ceff29b9 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i64 13120818853233679472, ; 802: 0xb616833add3ddc70 => android/widget/AdapterView$OnItemClickListener
	i64 13147524012913224524, ; 803: 0xb675636e619c6b4c => androidx/drawerlayout/widget/DrawerLayout
	i64 13162079438830684735, ; 804: 0xb6a9198390f9ca3f => androidx/activity/result/ActivityResultCallback
	i64 13175207352963982748, ; 805: 0xb6d7bd484388659c => com/google/android/gms/location/DeviceOrientation
	i64 13181023607377592394, ; 806: 0xb6ec672285c7804a => androidx/core/app/NotificationCompat$BigPictureStyle
	i64 13182567943790513355, ; 807: 0xb6f1e3b35d15cccb => androidx/recyclerview/widget/RecyclerView$Recycler
	i64 13187874560596224239, ; 808: 0xb704be0a5ebfa8ef => com/google/android/gms/common/api/internal/OnConnectionFailedListener
	i64 13190940126609738208, ; 809: 0xb70fa228140509e0 => crc64e1fb321c08285b90/BaseCellView
	i64 13191394589072141775, ; 810: 0xb7113f7cdda7adcf => android/app/AlertDialog$Builder
	i64 13210945690397914619, ; 811: 0xb756b51c5f2535fb => android/view/View$OnKeyListener
	i64 13268016443183773138, ; 812: 0xb82176a87a02b5d2 => com/google/android/material/navigation/NavigationBarMenuView
	i64 13289276415019534080, ; 813: 0xb86cfe7d67374700 => crc640ec207abc449b2ca/ShellContentFragment
	i64 13291009470876803657, ; 814: 0xb87326b1e9f6e249 => android/app/Notification
	i64 13291089739636035741, ; 815: 0xb8736fb2f0d8509d => android/content/ComponentName
	i64 13311117679692485447, ; 816: 0xb8ba97011d7e1347 => android/widget/HorizontalScrollView
	i64 13328282303989574758, ; 817: 0xb8f79223a36c6c66 => crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1
	i64 13328964012539637362, ; 818: 0xb8f9fe264763ee72 => crc6452ffdc5b34af3a0f/MauiStepper
	i64 13335777145830317192, ; 819: 0xb91232a87cfd1c88 => android/graphics/Point
	i64 13350193320460643475, ; 820: 0xb9456a17b4d96c93 => android/graphics/Region$Op
	i64 13359432545762049632, ; 821: 0xb9663d1e7af07e60 => android/view/contentcapture/ContentCaptureSession
	i64 13392547762908668185, ; 822: 0xb9dbe33bcd9fa119 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i64 13402681668680117407, ; 823: 0xb9ffe3f79b516c9f => android/view/ViewManager
	i64 13402779434266666368, ; 824: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13405960943385116839, ; 825: 0xba0b8a733f3b00a7 => com/google/android/gms/location/DeviceOrientationRequest
	i64 13428863503685738205, ; 826: 0xba5ce8351a655edd => androidx/appcompat/view/menu/MenuPresenter
	i64 13431868251608748947, ; 827: 0xba6795027efc9393 => android/content/LocusId
	i64 13455380521827779074, ; 828: 0xbabb1d4b81414202 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i64 13481151543294994875, ; 829: 0xbb16abe7054ea9bb => androidx/navigation/NavInflater
	i64 13491848569179882038, ; 830: 0xbb3cacca71544236 => android/app/AlertDialog
	i64 13493236796125990997, ; 831: 0xbb419b603751d055 => android/graphics/Rect
	i64 13496056631819609460, ; 832: 0xbb4ba0006029a574 => androidx/loader/app/LoaderManager
	i64 13501119006686247638, ; 833: 0xbb5d9c345fcefad6 => android/content/IntentSender
	i64 13502560151794130917, ; 834: 0xbb62baeb1e089fe5 => javax/security/auth/Subject
	i64 13504893900460985028, ; 835: 0xbb6b057352510ac4 => androidx/activity/OnBackPressedDispatcher
	i64 13523980973848974312, ; 836: 0xbbaed50ae768d3e8 => crc6452ffdc5b34af3a0f/MauiPageControl
	i64 13538702551831216454, ; 837: 0xbbe3223d61930146 => androidx/core/text/PrecomputedTextCompat$Params
	i64 13549049598049389944, ; 838: 0xbc07e4d2cfe20d78 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i64 13556576098032765635, ; 839: 0xbc22a222a5cb4ac3 => android/util/DisplayMetrics
	i64 13564741051355351458, ; 840: 0xbc3fa41dfc31c9a2 => crc640ec207abc449b2ca/ContainerView
	i64 13570449615737423646, ; 841: 0xbc53ec06b45d871e => androidx/fragment/app/FragmentResultListener
	i64 13664354974869333647, ; 842: 0xbda18a73e9eda68f => androidx/appcompat/app/AppCompatCallback
	i64 13667817128403725814, ; 843: 0xbdadd7435980edf6 => android/content/DialogInterface$OnCancelListener
	i64 13753163933648662796, ; 844: 0xbedd0dbaf2d7b10c => android/view/accessibility/AccessibilityWindowInfo
	i64 13768816776394003597, ; 845: 0xbf14a9e86667548d => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i64 13770727111868296170, ; 846: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13780597133996308832, ; 847: 0xbf3e8414a49db960 => android/graphics/Xfermode
	i64 13789203013919682202, ; 848: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13791871322112145521, ; 849: 0xbf6691e51e643871 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i64 13805562342397192842, ; 850: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13814726415558267663, ; 851: 0xbfb7c47b3c8e530f => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i64 13854972641976575186, ; 852: 0xc046c03609c4e4d2 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i64 13864679446917576892, ; 853: 0xc0693c7fae2e78bc => java/util/function/ToDoubleFunction
	i64 13877554026709814142, ; 854: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 13947259019881283147, ; 855: 0xc18e9e2ece62fe4b => androidx/core/view/WindowInsetsCompat$Type
	i64 13959986462581077347, ; 856: 0xc1bbd5b97b683563 => java/net/UnknownServiceException
	i64 13963521009268026143, ; 857: 0xc1c86460431feb1f => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i64 13975325537152167595, ; 858: 0xc1f2548816666eab => android/graphics/Typeface
	i64 13981492061668866838, ; 859: 0xc2083cf3f5b77b16 => crc64338477404e88479c/GradientStrokeDrawable
	i64 13999439648138060820, ; 860: 0xc248003011c9e414 => crc645d80431ce5f73f11/EdgeSnapHelper
	i64 14019895060012318725, ; 861: 0xc290ac46c849c005 => android/widget/SearchView
	i64 14024183407882682596, ; 862: 0xc29fe88193c640e4 => android/webkit/WebChromeClient$FileChooserParams
	i64 14026198496754459692, ; 863: 0xc2a71138042ae42c => com/google/android/gms/location/LocationSettingsResponse
	i64 14031640676547298208, ; 864: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14043684570532002328, ; 865: 0xc2e530b5d431ba18 => androidx/appcompat/app/ActionBar$Tab
	i64 14047598317436139102, ; 866: 0xc2f3183e0a27f65e => android/graphics/drawable/DrawableWrapper
	i64 14048987852729596032, ; 867: 0xc2f808046fb9b880 => android/graphics/ColorFilter
	i64 14069218185658513049, ; 868: 0xc33fe765dfa43699 => com/google/android/gms/location/LocationRequest
	i64 14105780303820480374, ; 869: 0xc3c1cc7360ebdf76 => com/google/android/material/shape/MaterialShapeDrawable
	i64 14106376025425781447, ; 870: 0xc3c3ea419f9722c7 => androidx/appcompat/app/AlertDialog
	i64 14112586515800836564, ; 871: 0xc3d9faaa1846c9d4 => androidx/viewpager/widget/PagerAdapter
	i64 14116135994739045768, ; 872: 0xc3e696e58f86b588 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i64 14146902927644867185, ; 873: 0xc453e5425a34ba71 => android/widget/CompoundButton$OnCheckedChangeListener
	i64 14155244942094649191, ; 874: 0xc4718846f2324767 => crc645d80431ce5f73f11/SingleSnapHelper
	i64 14160925941038085484, ; 875: 0xc485b71d9630756c => javax/net/ssl/KeyManagerFactory
	i64 14166708697631601657, ; 876: 0xc49a428086c4b3f9 => androidx/savedstate/SavedStateRegistry
	i64 14167891754637755728, ; 877: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 878: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 879: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14232617762048217248, ; 880: 0xc5846a726acc90a0 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i64 14253600974846093496, ; 881: 0xc5cef6915bdce8b8 => androidx/core/view/WindowInsetsControllerCompat
	i64 14258149992133074876, ; 882: 0xc5df1fdffb549fbc => android/os/UserHandle
	i64 14279287371309537477, ; 883: 0xc62a383594a058c5 => android/view/View$OnTouchListener
	i64 14284032202517437988, ; 884: 0xc63b139baf4ade24 => androidx/fragment/app/FragmentActivity
	i64 14296237994325564878, ; 885: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14302633742771949387, ; 886: 0xc67d299c46700f4b => crc6452ffdc5b34af3a0f/ViewFragment
	i64 14328901088261815086, ; 887: 0xc6da7b9f3b8dbb2e => android/view/ViewParent
	i64 14348164000481939304, ; 888: 0xc71eeb237bc60f68 => android/app/Notification$BubbleMetadata
	i64 14348802445188264590, ; 889: 0xc7212fccf9b3f28e => android/widget/ImageView$ScaleType
	i64 14361620789319229198, ; 890: 0xc74eba044a3cdf0e => android/os/Parcel
	i64 14373035975141672420, ; 891: 0xc77748115a3ac5e4 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i64 14383499576874121735, ; 892: 0xc79c74a87a903a07 => androidx/navigation/NavGraph
	i64 14388002076679644731, ; 893: 0xc7ac73a86812a63b => android/graphics/drawable/shapes/OvalShape
	i64 14409437776328802396, ; 894: 0xc7f89b50272c405c => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i64 14409679416056247518, ; 895: 0xc7f97715494a74de => androidx/customview/widget/Openable
	i64 14410455096550147880, ; 896: 0xc7fc388f7996c728 => android/graphics/drawable/InsetDrawable
	i64 14422032024339414819, ; 897: 0xc82559b7060eff23 => com/google/android/gms/location/GeofencingApi
	i64 14428829850836958935, ; 898: 0xc83d804d57b07ed7 => java/util/Spliterator
	i64 14428889120397035945, ; 899: 0xc83db6351cc389a9 => com/google/android/gms/common/api/ResultCallbacks
	i64 14473677460123656210, ; 900: 0xc8dcd4f7143fa012 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i64 14477118653081573042, ; 901: 0xc8e90eb6401bd6b2 => androidx/navigation/NavType
	i64 14480243895569103343, ; 902: 0xc8f4291a786a39ef => androidx/core/app/ActivityCompat
	i64 14501341618205132561, ; 903: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14511787718764536802, ; 904: 0xc9643a0b20d623e2 => android/app/DatePickerDialog
	i64 14524258068897415822, ; 905: 0xc99087c2c6bb428e => androidx/core/app/NotificationCompat$BubbleMetadata
	i64 14529413187006755165, ; 906: 0xc9a2d8503e69f15d => androidx/cardview/widget/CardView
	i64 14543183985021006585, ; 907: 0xc9d3c4c80253b2f9 => com/google/android/gms/location/LocationSettingsRequest
	i64 14569564621816213537, ; 908: 0xca317dd4a7743021 => androidx/core/app/ActivityCompat$PermissionCompatDelegate
	i64 14569790583249546864, ; 909: 0xca324b57666bae70 => crc64e1fb321c08285b90/CellAdapter
	i64 14580999150803139285, ; 910: 0xca5a1d7965e4bad5 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i64 14640111878662023944, ; 911: 0xcb2c202fdfa06b08 => android/webkit/WebChromeClient
	i64 14646637314621902207, ; 912: 0xcb434f0954050d7f => androidx/navigation/NavArgument
	i64 14649586819325063784, ; 913: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 914: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14696990417030334583, ; 915: 0xcbf632ea9269c877 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i64 14717452127296789712, ; 916: 0xcc3ee4bbbe579cd0 => android/widget/TextView$OnEditorActionListener
	i64 14767308754462789278, ; 917: 0xccf0051256454e9e => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i64 14818810280168306327, ; 918: 0xcda6fd6fb756b697 => kotlin/reflect/KTypeParameter
	i64 14830759644181035942, ; 919: 0xcdd17151d49bfba6 => android/content/res/AssetManager
	i64 14839707784907493044, ; 920: 0xcdf13b9b32028eb4 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i64 14871549625697939253, ; 921: 0xce625b977b51af35 => androidx/core/view/WindowInsetsCompat
	i64 14940408132235664607, ; 922: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 14940704599466395126, ; 923: 0xcf580bac893d45f6 => android/util/Log
	i64 14958061161715232945, ; 924: 0xcf95b560189a70b1 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i64 14988820245320308358, ; 925: 0xd002fc9954801686 => com/google/android/gms/common/api/ResultTransform
	i64 15015211024739412603, ; 926: 0xd060bedf7d1f2a7b => crc64e1fb321c08285b90/ListViewRenderer_Container
	i64 15069781826446509586, ; 927: 0xd1229eba5ffb4612 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i64 15102224934851433618, ; 928: 0xd195e1902fddd492 => android/graphics/PointF
	i64 15108480622982719114, ; 929: 0xd1ac1b1414c1e68a => android/view/WindowInsetsAnimation$Bounds
	i64 15108754265133970823, ; 930: 0xd1ad13f45bfa7587 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i64 15109148395588910694, ; 931: 0xd1ae7a6a01bd7e66 => com/google/android/gms/location/SettingsApi
	i64 15142650489578038267, ; 932: 0xd22580641d31a3fb => java/lang/StackTraceElement
	i64 15157681797888820163, ; 933: 0xd25ae7494d9143c3 => plugin/LocalNotification/GeofenceTransitionsIntentReceiver
	i64 15163559008692216854, ; 934: 0xd26fc89413c62416 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i64 15164503551740669480, ; 935: 0xd27323a2a4a6ee28 => com/google/android/gms/location/CurrentLocationRequest
	i64 15178898666151156562, ; 936: 0xd2a647ea65971b52 => javax/net/ssl/HostnameVerifier
	i64 15183122999177041308, ; 937: 0xd2b549ec9302d59c => org/xmlpull/v1/XmlPullParser
	i64 15200090388991477583, ; 938: 0xd2f191acddaa874f => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i64 15223859190564664402, ; 939: 0xd34603463c2c3452 => android/text/Editable
	i64 15254143212594890638, ; 940: 0xd3b19a6e93a7878e => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i64 15281211929309566451, ; 941: 0xd411c5494ff555f3 => android/opengl/Matrix
	i64 15292011917245906584, ; 942: 0xd43823d1747b7e98 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i64 15295416057057826855, ; 943: 0xd4443bdd84bcd827 => android/widget/AdapterView$OnItemSelectedListener
	i64 15298816789066891989, ; 944: 0xd45050d0241d42d5 => androidx/core/view/DragAndDropPermissionsCompat
	i64 15367873893566575642, ; 945: 0xd545a7e23b08f41a => android/widget/AbsoluteLayout
	i64 15402581295675135441, ; 946: 0xd5c0f61500cad5d1 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i64 15406288353308370229, ; 947: 0xd5ce21a19e2ee535 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i64 15446304586598055563, ; 948: 0xd65c4c2ef8a9fe8b => android/webkit/WebResourceRequest
	i64 15489276530192123430, ; 949: 0xd6f4f6f041e58626 => java/util/function/ToIntFunction
	i64 15491531562149856067, ; 950: 0xd6fcf9e0ccb1c343 => mono/android/view/View_OnScrollChangeListenerImplementor
	i64 15502296082295842482, ; 951: 0xd7233826f42c66b2 => com/google/android/gms/location/LocationSettingsResult
	i64 15510641966713668568, ; 952: 0xd740deb0983c03d8 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i64 15514897124683647083, ; 953: 0xd74ffcbbc37f886b => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i64 15529409965027140022, ; 954: 0xd7838c15b8daa1b6 => android/app/UiModeManager
	i64 15537261796858363185, ; 955: 0xd79f7148c7fd7d31 => com/google/android/gms/common/api/GoogleApiClient
	i64 15545162226811407960, ; 956: 0xd7bb82aef8ea0e58 => androidx/core/view/ContentInfoCompat
	i64 15562956098342981803, ; 957: 0xd7faba1d88bb90ab => kotlin/jvm/internal/DefaultConstructorMarker
	i64 15575806507086167330, ; 958: 0xd828617e7916bd22 => com/google/android/gms/location/Geofence
	i64 15580854786307338793, ; 959: 0xd83a50e092cb3229 => kotlin/coroutines/CoroutineContext
	i64 15625622630723498443, ; 960: 0xd8d95cfe9a9431cb => mono/android/text/TextWatcherImplementor
	i64 15633873768898914415, ; 961: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 15645438581444444576, ; 962: 0xd91fc37f2a3001a0 => java/lang/Appendable
	i64 15650899170711101772, ; 963: 0xd93329dfadb0e14c => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i64 15655567004052913371, ; 964: 0xd943bf3e51e67cdb => androidx/lifecycle/LifecycleOwner
	i64 15662842236679988787, ; 965: 0xd95d98076a4ba633 => androidx/navigation/ui/NavigationUI
	i64 15695387359379628636, ; 966: 0xd9d137a547faa25c => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i64 15696148966177826650, ; 967: 0xd9d3ec52aea4e75a => androidx/appcompat/widget/ScrollingTabContainerView
	i64 15699556301161391558, ; 968: 0xd9e00746adf865c6 => android/view/WindowMetrics
	i64 15735391017453652107, ; 969: 0xda5f56c2bd32888b => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i64 15767615218119146656, ; 970: 0xdad1d2801f08fca0 => javax/net/ssl/SSLSessionContext
	i64 15792778596129101375, ; 971: 0xdb2b38759eaad63f => androidx/appcompat/widget/SwitchCompat
	i64 15794511849082518787, ; 972: 0xdb3160d80542fd03 => plugin/LocalNotification/ScheduledAlarmReceiver
	i64 15795508579813667467, ; 973: 0xdb34eb5d7a6db28b => android/graphics/Paint$FontMetricsInt
	i64 15799365448008084158, ; 974: 0xdb429f2a951a2abe => android/os/LocaleList
	i64 15818982522861491288, ; 975: 0xdb8850cabf459458 => android/graphics/BlurMaskFilter
	i64 15822621356783831935, ; 976: 0xdb953e4aca9c0b7f => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i64 15827905324826524828, ; 977: 0xdba8040878cc7c9c => android/app/TimePickerDialog
	i64 15844004444849296506, ; 978: 0xdbe13618f2f3d47a => android/widget/ListView
	i64 15847020585439055971, ; 979: 0xdbebed42e765d063 => com/google/android/gms/location/FusedLocationProviderClient
	i64 15872432268820698417, ; 980: 0xdc46350d80815531 => androidx/appcompat/widget/SearchView$OnCloseListener
	i64 15879626577687273942, ; 981: 0xdc5fc43d10e6e1d6 => androidx/activity/FullyDrawnReporter
	i64 15880506401606549681, ; 982: 0xdc62e46f091340b1 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i64 15888603495552893685, ; 983: 0xdc7fa8b2a175c2f5 => javax/net/ssl/TrustManager
	i64 15896143924811176167, ; 984: 0xdc9a72ada0da98e7 => java/net/SocketException
	i64 15911914047403566967, ; 985: 0xdcd279856c09a777 => com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener
	i64 15953090097772430502, ; 986: 0xdd64c2ebbb8704a6 => crc64cd5e4cacae602ef1/MainActivity
	i64 16000943973062282533, ; 987: 0xde0ec5c4514e0d25 => android/graphics/PorterDuffXfermode
	i64 16003229482241506982, ; 988: 0xde16e46ce4103ea6 => android/graphics/Bitmap
	i64 16025241782187669706, ; 989: 0xde65187edb0b38ca => com/google/android/gms/location/FusedLocationProviderApi
	i64 16025367657495699648, ; 990: 0xde658afa7c10a0c0 => android/graphics/drawable/DrawableContainer
	i64 16033914125125672261, ; 991: 0xde83e7f20b3bdd45 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i64 16063285545394553522, ; 992: 0xdeec4118bae8c2b2 => android/window/BackEvent
	i64 16065288398357904941, ; 993: 0xdef35eae4653be2d => android/text/style/BulletSpan
	i64 16066423801151412293, ; 994: 0xdef76752d682d845 => android/runtime/XmlReaderPullParser
	i64 16092214954021753346, ; 995: 0xdf53083d8fb21202 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i64 16101147842785907581, ; 996: 0xdf72c4a7cd4d137d => android/webkit/WebViewClient
	i64 16118150644112224899, ; 997: 0xdfaf2c9cfa8af283 => java/util/Locale
	i64 16122524016460970183, ; 998: 0xdfbeb62c13dc38c7 => com/google/android/material/shape/ShapePath
	i64 16135033049177225665, ; 999: 0xdfeb2712376579c1 => androidx/recyclerview/widget/LinearSmoothScroller
	i64 16169431511264197546, ; 1000: 0xe0655c4a48e8fbaa => android/graphics/BitmapShader
	i64 16170603982710859185, ; 1001: 0xe06986a590ff65b1 => android/view/ViewTreeObserver
	i64 16182470099411896328, ; 1002: 0xe093aed127d38808 => android/view/animation/BaseInterpolator
	i64 16207444841424110295, ; 1003: 0xe0ec693669d242d7 => android/view/ScaleGestureDetector
	i64 16212291146831355869, ; 1004: 0xe0fda0e6d217dfdd => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i64 16225173139187187041, ; 1005: 0xe12b650164763d61 => com/microsoft/maui/PlatformWrapperView
	i64 16314168557433322311, ; 1006: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16349046224998423095, ; 1007: 0xe2e37aebb178da37 => com/microsoft/maui/PlatformContentViewGroup
	i64 16394649269595106848, ; 1008: 0xe3857ea5eb556e20 => com/google/android/material/imageview/ShapeableImageView
	i64 16397303622013219778, ; 1009: 0xe38eecc48052f3c2 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i64 16403969118692566536, ; 1010: 0xe3a69b006225e608 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i64 16413106091129197494, ; 1011: 0xe3c711078e8e53b6 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i64 16413651262945443612, ; 1012: 0xe3c900dc43013f1c => android/content/DialogInterface$OnClickListener
	i64 16419411156664895107, ; 1013: 0xe3dd77740618c683 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i64 16422815340789202047, ; 1014: 0xe3e98f8a67937c7f => android/view/View$DragShadowBuilder
	i64 16453243756006384025, ; 1015: 0xe455aa05e7aca199 => androidx/fragment/app/FragmentHostCallback
	i64 16469774157316601535, ; 1016: 0xe4906455e1c3b6bf => com/google/android/gms/location/GeofencingClient
	i64 16473535933434112898, ; 1017: 0xe49dc1a6a2f92b82 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i64 16480206070542885578, ; 1018: 0xe4b5741af3f1e2ca => android/view/SearchEvent
	i64 16499887184897512773, ; 1019: 0xe4fb5ff979d61545 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i64 16518950802127089170, ; 1020: 0xe53f1a3bbef06e12 => android/graphics/MaskFilter
	i64 16530905335535283041, ; 1021: 0xe56992d17430ab61 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i64 16542847110558016359, ; 1022: 0xe593ffcc9e686367 => android/app/Application
	i64 16566688651954437030, ; 1023: 0xe5e8b38e0c3d3ba6 => android/graphics/DashPathEffect
	i64 16603717322881265010, ; 1024: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16612094429345721542, ; 1025: 0xe68a03de6c65acc6 => com/google/android/gms/common/api/internal/ListenerHolder$Notifier
	i64 16618397473501528129, ; 1026: 0xe6a06874404ec041 => android/graphics/Path
	i64 16645540958114363132, ; 1027: 0xe700d74f3e9f36fc => java/util/function/Predicate
	i64 16691018530259375973, ; 1028: 0xe7a268eba3929765 => com/google/android/material/appbar/ViewOffsetBehavior
	i64 16700678259308947609, ; 1029: 0xe7c4ba649232e899 => androidx/fragment/app/strictmode/FragmentStrictMode
	i64 16703917145489859151, ; 1030: 0xe7d03c24867ae24f => crc64e1fb321c08285b90/ViewRenderer_2
	i64 16723123314454325679, ; 1031: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16732048506261937943, ; 1032: 0xe8342d775c591f17 => android/graphics/PorterDuff$Mode
	i64 16744029422396892954, ; 1033: 0xe85ebe0bc6a7e71a => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i64 16745733288560112273, ; 1034: 0xe864cbb4080f3291 => crc645d80431ce5f73f11/ItemContentView
	i64 16753298404850265843, ; 1035: 0xe87fac22ed37eef3 => com/google/android/material/shape/ShapeAppearanceModel
	i64 16766464253617028287, ; 1036: 0xe8ae7267f820bcbf => com/google/android/gms/location/LocationListener
	i64 16771336647146321301, ; 1037: 0xe8bfc1d27da5b595 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i64 16832017439803262409, ; 1038: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 1039: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 16916694887332905051, ; 1040: 0xeac42c5f1d25005b => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i64 16920002529557853212, ; 1041: 0xeacfeca79501b41c => com/google/android/gms/common/ConnectionResult
	i64 16940674673295938010, ; 1042: 0xeb195ddc1d42d1da => androidx/core/view/OnReceiveContentListener
	i64 16941558691421312067, ; 1043: 0xeb1c81de9f995443 => com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey
	i64 16950392789332311313, ; 1044: 0xeb3be46f537ebd11 => android/content/pm/ShortcutManager
	i64 16953366867418781877, ; 1045: 0xeb467557d75f98b5 => android/widget/FrameLayout$LayoutParams
	i64 16977429381850492614, ; 1046: 0xeb9bf212907a6ec6 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i64 16987790575813017173, ; 1047: 0xebc0c18606103e55 => android/text/method/BaseKeyListener
	i64 16999219307367050470, ; 1048: 0xebe95be4f2932ce6 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i64 17053113564791162236, ; 1049: 0xeca8d46f97c5c57c => androidx/lifecycle/Observer
	i64 17068958298440960180, ; 1050: 0xece11f23208788b4 => android/util/SizeF
	i64 17074376177321076143, ; 1051: 0xecf45eab5a9d65af => android/text/style/StrikethroughSpan
	i64 17125416866214736517, ; 1052: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17149437416712524469, ; 1053: 0xedff0a7808f152b5 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i64 17159678788829724311, ; 1054: 0xee236cf14c003e97 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i64 17163176023095185573, ; 1055: 0xee2fd9a89a1710a5 => android/graphics/Matrix
	i64 17167329807099043935, ; 1056: 0xee3e9b80ce1d205f => android/view/animation/Animation$AnimationListener
	i64 17168099393152751049, ; 1057: 0xee415770057815c9 => android/os/SystemClock
	i64 17184852587379630472, ; 1058: 0xee7cdc6104372188 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i64 17196460691385261092, ; 1059: 0xeea619e357fc9c24 => com/google/android/gms/common/api/Status
	i64 17259862802202170027, ; 1060: 0xef8759c59d3d12ab => androidx/appcompat/widget/SearchView
	i64 17274563319870435211, ; 1061: 0xefbb93d09adeaf8b => androidx/core/app/NotificationCompat$Extender
	i64 17296586735193580360, ; 1062: 0xf009d1fe91f26348 => android/content/pm/ApplicationInfo
	i64 17308034145719428191, ; 1063: 0xf0327d5a87f0245f => android/webkit/WebResourceError
	i64 17312589003384955623, ; 1064: 0xf042abf8f91822e7 => android/view/KeyEvent
	i64 17333291439753423356, ; 1065: 0xf08c38ba8ed269fc => androidx/core/graphics/drawable/IconCompat
	i64 17353493063401139565, ; 1066: 0xf0d3fdff983aed6d => androidx/core/widget/NestedScrollView
	i64 17372832774230194541, ; 1067: 0xf118b35cea41396d => androidx/core/view/ScrollingView
	i64 17374491480045166287, ; 1068: 0xf11e97f275249ecf => com/google/android/gms/location/LocationSettingsStates
	i64 17400847014138816993, ; 1069: 0xf17c3a2a6ca929e1 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i64 17405205501308712532, ; 1070: 0xf18bb62fcc2e3654 => androidx/loader/content/Loader$OnLoadCanceledListener
	i64 17407046679165606066, ; 1071: 0xf19240ba6c4f18b2 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i64 17438622696042373437, ; 1072: 0xf2026ef2c1aba13d => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i64 17448877928212474867, ; 1073: 0xf226de0710422bf3 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i64 17474673829083426386, ; 1074: 0xf282834344552e52 => mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor
	i64 17485531046532206351, ; 1075: 0xf2a915d8319dcf0f => android/database/CharArrayBuffer
	i64 17490083481060646178, ; 1076: 0xf2b94242748c1d22 => java/util/Enumeration
	i64 17498018958444438720, ; 1077: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17519581955836770800, ; 1078: 0xf3220ef752fe79f0 => java/security/KeyStore
	i64 17542023464739623563, ; 1079: 0xf371c966495f528b => android/view/Display
	i64 17546585317893749861, ; 1080: 0xf381fe617e243c65 => androidx/viewpager2/adapter/FragmentStateAdapter
	i64 17568025852736065805, ; 1081: 0xf3ce2a6f0536510d => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i64 17574185961105681076, ; 1082: 0xf3e40d05045c6ab4 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i64 17596677532905382890, ; 1083: 0xf433f4fc27ec23ea => crc64e1fb321c08285b90/GroupedListViewAdapter
	i64 17602339105264995485, ; 1084: 0xf4481227b1498c9d => android/widget/EdgeEffect
	i64 17605619666541934257, ; 1085: 0xf453b9cee2dcf6b1 => java/net/Proxy$Type
	i64 17645817129531856090, ; 1086: 0xf4e28930113fd4da => java/io/Closeable
	i64 17650799501576161010, ; 1087: 0xf4f43ca0f516c6f2 => androidx/lifecycle/MutableLiveData
	i64 17660745169059311233, ; 1088: 0xf51792291e79ee81 => androidx/activity/result/ActivityResultLauncher
	i64 17671382671565006709, ; 1089: 0xf53d5ce9aca02775 => androidx/fragment/app/FragmentTransaction
	i64 17672504001507146299, ; 1090: 0xf54158c1a580ba3b => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i64 17687065826521364603, ; 1091: 0xf57514a8bcc1b87b => android/text/style/BackgroundColorSpan
	i64 17701380057702751319, ; 1092: 0xf5a7ef60658e5c57 => com/google/android/gms/common/api/Api$BaseClientBuilder
	i64 17718601761205044311, ; 1093: 0xf5e51e6cb53cc457 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i64 17737366571956184836, ; 1094: 0xf627c8ebac562704 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i64 17749971997883255411, ; 1095: 0xf654917d1af64a73 => android/graphics/drawable/shapes/RectShape
	i64 17762915657059999855, ; 1096: 0xf6828dad9a49206f => com/google/android/material/navigation/NavigationView
	i64 17770310772590916714, ; 1097: 0xf69cd37f1c94346a => androidx/activity/result/ActivityResultRegistry
	i64 17786854109604896016, ; 1098: 0xf6d79992eab25d10 => android/graphics/BitmapFactory
	i64 17800186900405514025, ; 1099: 0xf706f7ad2e3b6f29 => android/util/SparseArray
	i64 17815208443851966511, ; 1100: 0xf73c55b0cf56082f => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i64 17815335875642952963, ; 1101: 0xf73cc996d5f88d03 => com/google/android/gms/tasks/Task
	i64 17891318723448383905, ; 1102: 0xf84abb96326fa9a1 => com/google/android/gms/common/api/Api
	i64 17932258799253396161, ; 1103: 0xf8dc2e5e65df1ac1 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i64 17958397297252185645, ; 1104: 0xf9390b31b60d362d => android/view/WindowInsets
	i64 17966509771654086234, ; 1105: 0xf955dd725906be5a => crc64338477404e88479c/InnerScaleListener
	i64 17984345105063787081, ; 1106: 0xf9953a96815cba49 => android/view/GestureDetector$OnGestureListener
	i64 17991546793642763742, ; 1107: 0xf9aed07c4ae525de => crc64e1fb321c08285b90/TableViewModelRenderer
	i64 17992660388602075186, ; 1108: 0xf9b2c54b52de5832 => android/webkit/WebView
	i64 17994707914779561645, ; 1109: 0xf9ba0b8229588ead => androidx/navigation/ui/AppBarConfiguration
	i64 18006280295024823601, ; 1110: 0xf9e32886e7120d31 => android/view/ContentInfo
	i64 18013508180779119969, ; 1111: 0xf9fcd64031eeb561 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i64 18018038416899488951, ; 1112: 0xfa0cee79fca2bcb7 => java/text/Format
	i64 18028883106873553108, ; 1113: 0xfa3375aa223d30d4 => mono/android/animation/AnimatorEventDispatcher
	i64 18037040819381619496, ; 1114: 0xfa50710f96764b28 => com/google/android/gms/common/api/HasApiKey
	i64 18060209084809406592, ; 1115: 0xfaa2c079bd58e880 => android/view/GestureDetector$OnDoubleTapListener
	i64 18097369694249881732, ; 1116: 0xfb26c5da5aaf1084 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i64 18102991096258414070, ; 1117: 0xfb3abe7d008ac5f6 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i64 18213852175163534091, ; 1118: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18216578448169670053, ; 1119: 0xfcce4995423095a5 => javax/net/ssl/SSLSocketFactory
	i64 18261049205373092432, ; 1120: 0xfd6c478048314250 => androidx/core/view/accessibility/AccessibilityViewCommand
	i64 18266445483201684091, ; 1121: 0xfd7f73631f46627b => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i64 18315601916551362550, ; 1122: 0xfe2e16e72381f7f6 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i64 18323076787180290332, ; 1123: 0xfe48a5421416411c => android/widget/BaseAdapter
	i64 18330448901237264806, ; 1124: 0xfe62d62823b251a6 => androidx/recyclerview/widget/ItemTouchUIUtil
	i64 18335874173895919002, ; 1125: 0xfe761c69dd53459a => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i64 18340490965821538680, ; 1126: 0xfe86835c800dc178 => com/microsoft/maui/BuildConfig
	i64 18360177796358405119, ; 1127: 0xfecc746decf4fbff => androidx/core/view/ViewCompat
	i64 18377761106826033935, ; 1128: 0xff0aec5b6b5afb0f => android/view/animation/AnimationSet
	i64 18401512074820890716, ; 1129: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300, ; 1130: 0xff5ff1733e0ec4ac => java/util/Collection
	i64 18402160772901223412, ; 1131: 0xff619bb96067bbf4 => com/google/android/gms/location/LocationCallback
	i64 18410237031191181095 ; 1132: 0xff7e4d09cae47727 => android/graphics/LinearGradient
], align 16

@module0_managed_to_java = internal dso_local constant [86 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1065; uint32_t java_map_index (0x429)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 591; uint32_t java_map_index (0x24f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 1066; uint32_t java_map_index (0x42a)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 944; uint32_t java_map_index (0x3b0)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 1127; uint32_t java_map_index (0x467)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 1116; uint32_t java_map_index (0x45c)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 900; uint32_t java_map_index (0x384)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 755; uint32_t java_map_index (0x2f3)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 1120; uint32_t java_map_index (0x460)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 837; uint32_t java_map_index (0x345)
	} ; 85
], align 16

@module0_managed_to_java_duplicates = internal dso_local constant [27 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 1120; uint32_t java_map_index (0x460)
	} ; 26
], align 16

@module1_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 774; uint32_t java_map_index (0x306)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 964; uint32_t java_map_index (0x3c4)
	} ; 4
], align 16

@module1_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 138; uint32_t java_map_index (0x8a)
	} ; 2
], align 16

@module2_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 829; uint32_t java_map_index (0x33d)
	} ; 5
], align 16

@module2_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 736; uint32_t java_map_index (0x2e0)
	} ; 0
], align 4

@module3_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 212; uint32_t java_map_index (0xd4)
	} ; 4
], align 16

@module3_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 212; uint32_t java_map_index (0xd4)
	} ; 4
], align 16

@module4_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 789; uint32_t java_map_index (0x315)
	} ; 0
], align 4

@module5_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 852; uint32_t java_map_index (0x354)
	} ; 2
], align 16

@module6_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1080; uint32_t java_map_index (0x438)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 127; uint32_t java_map_index (0x7f)
	} ; 4
], align 16

@module6_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1080; uint32_t java_map_index (0x438)
	} ; 2
], align 16

@module7_managed_to_java = internal dso_local constant [482 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 992; uint32_t java_map_index (0x3e0)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 1123; uint32_t java_map_index (0x463)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554659, ; uint32_t type_token_id (0x20000e3)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 1084; uint32_t java_map_index (0x43c)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 1045; uint32_t java_map_index (0x415)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 1063; uint32_t java_map_index (0x427)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554728, ; uint32_t type_token_id (0x2000128)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 1108; uint32_t java_map_index (0x454)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 996; uint32_t java_map_index (0x3e4)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 1099; uint32_t java_map_index (0x44b)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 1091; uint32_t java_map_index (0x443)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 1051; uint32_t java_map_index (0x41b)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554857, ; uint32_t type_token_id (0x20001a9)
		i32 1075; uint32_t java_map_index (0x433)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 1113; uint32_t java_map_index (0x459)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554891, ; uint32_t type_token_id (0x20001cb)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554894, ; uint32_t type_token_id (0x20001ce)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554906, ; uint32_t type_token_id (0x20001da)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554908, ; uint32_t type_token_id (0x20001dc)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554934, ; uint32_t type_token_id (0x20001f6)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 1110; uint32_t java_map_index (0x456)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 1079; uint32_t java_map_index (0x437)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554944, ; uint32_t type_token_id (0x2000200)
		i32 1115; uint32_t java_map_index (0x45b)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 1106; uint32_t java_map_index (0x452)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 1064; uint32_t java_map_index (0x428)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554997, ; uint32_t type_token_id (0x2000235)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33555007, ; uint32_t type_token_id (0x200023f)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33555010, ; uint32_t type_token_id (0x2000242)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33555013, ; uint32_t type_token_id (0x2000245)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33555017, ; uint32_t type_token_id (0x2000249)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555021, ; uint32_t type_token_id (0x200024d)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555025, ; uint32_t type_token_id (0x2000251)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555028, ; uint32_t type_token_id (0x2000254)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555050, ; uint32_t type_token_id (0x200026a)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555054, ; uint32_t type_token_id (0x200026e)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555066, ; uint32_t type_token_id (0x200027a)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 1104; uint32_t java_map_index (0x450)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555070, ; uint32_t type_token_id (0x200027e)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555071, ; uint32_t type_token_id (0x200027f)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555072, ; uint32_t type_token_id (0x2000280)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 682; uint32_t java_map_index (0x2aa)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 1128; uint32_t java_map_index (0x468)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 730; uint32_t java_map_index (0x2da)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555118, ; uint32_t type_token_id (0x20002ae)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555121, ; uint32_t type_token_id (0x20002b1)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 723; uint32_t java_map_index (0x2d3)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555123, ; uint32_t type_token_id (0x20002b3)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555124, ; uint32_t type_token_id (0x20002b4)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555125, ; uint32_t type_token_id (0x20002b5)
		i32 844; uint32_t java_map_index (0x34c)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 1031; uint32_t java_map_index (0x407)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555153, ; uint32_t type_token_id (0x20002d1)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555155, ; uint32_t type_token_id (0x20002d3)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555157, ; uint32_t type_token_id (0x20002d5)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555166, ; uint32_t type_token_id (0x20002de)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555168, ; uint32_t type_token_id (0x20002e0)
		i32 1024; uint32_t java_map_index (0x400)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555170, ; uint32_t type_token_id (0x20002e2)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 1098; uint32_t java_map_index (0x44a)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 867; uint32_t java_map_index (0x363)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 1023; uint32_t java_map_index (0x3ff)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 1132; uint32_t java_map_index (0x46c)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 1055; uint32_t java_map_index (0x41f)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 704; uint32_t java_map_index (0x2c0)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 1026; uint32_t java_map_index (0x402)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 928; uint32_t java_map_index (0x3a0)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 1032; uint32_t java_map_index (0x408)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555251, ; uint32_t type_token_id (0x2000333)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 896; uint32_t java_map_index (0x380)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 1095; uint32_t java_map_index (0x447)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 1117; uint32_t java_map_index (0x45d)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 1039; uint32_t java_map_index (0x40f)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 1118; uint32_t java_map_index (0x45e)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 1062; uint32_t java_map_index (0x426)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 1044; uint32_t java_map_index (0x414)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 1076; uint32_t java_map_index (0x434)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 1112; uint32_t java_map_index (0x458)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 1078; uint32_t java_map_index (0x436)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 1085; uint32_t java_map_index (0x43d)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 1086; uint32_t java_map_index (0x43e)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555428, ; uint32_t type_token_id (0x20003e4)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555434, ; uint32_t type_token_id (0x20003ea)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 1077; uint32_t java_map_index (0x435)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 1129; uint32_t java_map_index (0x469)
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 33555453, ; uint32_t type_token_id (0x20003fd)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 33555454, ; uint32_t type_token_id (0x20003fe)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 33555455, ; uint32_t type_token_id (0x20003ff)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 33555456, ; uint32_t type_token_id (0x2000400)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 33555458, ; uint32_t type_token_id (0x2000402)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 33555460, ; uint32_t type_token_id (0x2000404)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 33555461, ; uint32_t type_token_id (0x2000405)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 33555463, ; uint32_t type_token_id (0x2000407)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 33555464, ; uint32_t type_token_id (0x2000408)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 33555465, ; uint32_t type_token_id (0x2000409)
		i32 588; uint32_t java_map_index (0x24c)
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 33555467, ; uint32_t type_token_id (0x200040b)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 33555468, ; uint32_t type_token_id (0x200040c)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 33555470, ; uint32_t type_token_id (0x200040e)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 33555472, ; uint32_t type_token_id (0x2000410)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 33555474, ; uint32_t type_token_id (0x2000412)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 33555475, ; uint32_t type_token_id (0x2000413)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 33555491, ; uint32_t type_token_id (0x2000423)
		i32 824; uint32_t java_map_index (0x338)
	} ; 481
], align 16

@module7_managed_to_java_duplicates = internal dso_local constant [189 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 1123; uint32_t java_map_index (0x463)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 1123; uint32_t java_map_index (0x463)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 1063; uint32_t java_map_index (0x427)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554849, ; uint32_t type_token_id (0x20001a1)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554875, ; uint32_t type_token_id (0x20001bb)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554895, ; uint32_t type_token_id (0x20001cf)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554945, ; uint32_t type_token_id (0x2000201)
		i32 1115; uint32_t java_map_index (0x45b)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 1106; uint32_t java_map_index (0x452)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554977, ; uint32_t type_token_id (0x2000221)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554998, ; uint32_t type_token_id (0x2000236)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555008, ; uint32_t type_token_id (0x2000240)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33555012, ; uint32_t type_token_id (0x2000244)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555051, ; uint32_t type_token_id (0x200026b)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555067, ; uint32_t type_token_id (0x200027b)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555068, ; uint32_t type_token_id (0x200027c)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555112, ; uint32_t type_token_id (0x20002a8)
		i32 682; uint32_t java_map_index (0x2aa)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555116, ; uint32_t type_token_id (0x20002ac)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555119, ; uint32_t type_token_id (0x20002af)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555156, ; uint32_t type_token_id (0x20002d4)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555162, ; uint32_t type_token_id (0x20002da)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555167, ; uint32_t type_token_id (0x20002df)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555171, ; uint32_t type_token_id (0x20002e3)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555252, ; uint32_t type_token_id (0x2000334)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 1039; uint32_t java_map_index (0x40f)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 1118; uint32_t java_map_index (0x45e)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 1076; uint32_t java_map_index (0x434)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 1112; uint32_t java_map_index (0x458)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 1086; uint32_t java_map_index (0x43e)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33555429, ; uint32_t type_token_id (0x20003e5)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33555436, ; uint32_t type_token_id (0x20003ec)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33555439, ; uint32_t type_token_id (0x20003ef)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33555446, ; uint32_t type_token_id (0x20003f6)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33555457, ; uint32_t type_token_id (0x2000401)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33555462, ; uint32_t type_token_id (0x2000406)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33555476, ; uint32_t type_token_id (0x2000414)
		i32 315; uint32_t java_map_index (0x13b)
	} ; 188
], align 16

@module8_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 851; uint32_t java_map_index (0x353)
	} ; 1
], align 16

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 851; uint32_t java_map_index (0x353)
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 156; uint32_t java_map_index (0x9c)
	} ; 6
], align 16

@module9_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 156; uint32_t java_map_index (0x9c)
	} ; 3
], align 16

@module10_managed_to_java = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 959; uint32_t java_map_index (0x3bf)
	} ; 24
], align 16

@module10_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 959; uint32_t java_map_index (0x3bf)
	} ; 18
], align 16

@module11_managed_to_java = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 981; uint32_t java_map_index (0x3d5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1088; uint32_t java_map_index (0x440)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 1097; uint32_t java_map_index (0x449)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 284; uint32_t java_map_index (0x11c)
	} ; 12
], align 16

@module11_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1088; uint32_t java_map_index (0x440)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 1097; uint32_t java_map_index (0x449)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 296; uint32_t java_map_index (0x128)
	} ; 5
], align 16

@module12_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 972; uint32_t java_map_index (0x3cc)
	} ; 2
], align 16

@module13_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 678; uint32_t java_map_index (0x2a6)
	} ; 2
], align 16

@module14_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 1125; uint32_t java_map_index (0x465)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1122; uint32_t java_map_index (0x462)
	} ; 2
], align 16

@module14_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1125; uint32_t java_map_index (0x465)
	} ; 0
], align 4

@module15_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 87; uint32_t java_map_index (0x57)
	} ; 3
], align 16

@module15_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 343; uint32_t java_map_index (0x157)
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [11 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1101; uint32_t java_map_index (0x44d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 817; uint32_t java_map_index (0x331)
	} ; 10
], align 16

@module16_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 1101; uint32_t java_map_index (0x44d)
	} ; 8
], align 16

@module17_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1070; uint32_t java_map_index (0x42e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1021; uint32_t java_map_index (0x3fd)
	} ; 4
], align 16

@module17_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1070; uint32_t java_map_index (0x42e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 832; uint32_t java_map_index (0x340)
	} ; 3
], align 16

@module18_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 1126; uint32_t java_map_index (0x466)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 1010; uint32_t java_map_index (0x3f2)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 653; uint32_t java_map_index (0x28d)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 1094; uint32_t java_map_index (0x446)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555133, ; uint32_t type_token_id (0x20002bd)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 550; uint32_t java_map_index (0x226)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 1033; uint32_t java_map_index (0x409)
	} ; 66
], align 16

@module18_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 1005; uint32_t java_map_index (0x3ed)
	} ; 2
], align 16

@module19_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 906; uint32_t java_map_index (0x38a)
	} ; 0
], align 4

@module20_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 541; uint32_t java_map_index (0x21d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 1035; uint32_t java_map_index (0x40b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 429; uint32_t java_map_index (0x1ad)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 1008; uint32_t java_map_index (0x3f0)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 1082; uint32_t java_map_index (0x43a)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 1096; uint32_t java_map_index (0x448)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1100; uint32_t java_map_index (0x44c)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 1093; uint32_t java_map_index (0x445)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 1028; uint32_t java_map_index (0x404)
	} ; 66
], align 16

@module20_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 1082; uint32_t java_map_index (0x43a)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 1100; uint32_t java_map_index (0x44c)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 942; uint32_t java_map_index (0x3ae)
	} ; 24
], align 16

@module21_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 644; uint32_t java_map_index (0x284)
	} ; 1
], align 16

@module22_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 786; uint32_t java_map_index (0x312)
	} ; 8
], align 16

@module22_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 555; uint32_t java_map_index (0x22b)
	} ; 4
], align 16

@module23_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 321; uint32_t java_map_index (0x141)
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 610; uint32_t java_map_index (0x262)
	} ; 1
], align 16

@module25_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1059; uint32_t java_map_index (0x423)
	} ; 6
], align 16

@module25_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 899; uint32_t java_map_index (0x383)
	} ; 2
], align 16

@module26_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 213; uint32_t java_map_index (0xd5)
	} ; 0
], align 4

@module27_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 1090; uint32_t java_map_index (0x442)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 1046; uint32_t java_map_index (0x416)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 424; uint32_t java_map_index (0x1a8)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 1060; uint32_t java_map_index (0x424)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 214; uint32_t java_map_index (0xd6)
	} ; 55
], align 16

@module27_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 72; uint32_t java_map_index (0x48)
	} ; 18
], align 16

@module28_managed_to_java = internal dso_local constant [27 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 391; uint32_t java_map_index (0x187)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 1131; uint32_t java_map_index (0x46b)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 1068; uint32_t java_map_index (0x42c)
	} ; 26
], align 16

@module28_managed_to_java_duplicates = internal dso_local constant [11 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 1131; uint32_t java_map_index (0x46b)
	} ; 10
], align 16

@module29_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 1089; uint32_t java_map_index (0x441)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 1029; uint32_t java_map_index (0x405)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 769; uint32_t java_map_index (0x301)
	} ; 18
], align 16

@module29_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 1089; uint32_t java_map_index (0x441)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 769; uint32_t java_map_index (0x301)
	} ; 9
], align 16

@module30_managed_to_java = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1043; uint32_t java_map_index (0x413)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1102; uint32_t java_map_index (0x44e)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 673; uint32_t java_map_index (0x2a1)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 1092; uint32_t java_map_index (0x444)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 1114; uint32_t java_map_index (0x45a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 1074; uint32_t java_map_index (0x432)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 172; uint32_t java_map_index (0xac)
	} ; 20
], align 16

@module30_managed_to_java_duplicates = internal dso_local constant [14 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 1092; uint32_t java_map_index (0x444)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 1114; uint32_t java_map_index (0x45a)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 172; uint32_t java_map_index (0xac)
	} ; 13
], align 16

@module31_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1109; uint32_t java_map_index (0x455)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 965; uint32_t java_map_index (0x3c5)
	} ; 3
], align 16

@module31_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 595; uint32_t java_map_index (0x253)
	} ; 0
], align 4

@module32_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 1124; uint32_t java_map_index (0x464)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 492; uint32_t java_map_index (0x1ec)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 1073; uint32_t java_map_index (0x431)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 611; uint32_t java_map_index (0x263)
	} ; 40
], align 16

@module32_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1124; uint32_t java_map_index (0x464)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 611; uint32_t java_map_index (0x263)
	} ; 20
], align 16

@module33_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 895; uint32_t java_map_index (0x37f)
	} ; 0
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 895; uint32_t java_map_index (0x37f)
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 667; uint32_t java_map_index (0x29b)
	} ; 3
], align 16

@module34_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 386; uint32_t java_map_index (0x182)
	} ; 1
], align 16

@module35_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 206; uint32_t java_map_index (0xce)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 1087; uint32_t java_map_index (0x43f)
	} ; 2
], align 16

@module35_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 206; uint32_t java_map_index (0xce)
	} ; 1
], align 16

@module36_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 131; uint32_t java_map_index (0x83)
	} ; 0
], align 4

@module36_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 131; uint32_t java_map_index (0x83)
	} ; 0
], align 4

@module37_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 752; uint32_t java_map_index (0x2f0)
	} ; 0
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 752; uint32_t java_map_index (0x2f0)
	} ; 0
], align 4

@module38_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 482; uint32_t java_map_index (0x1e2)
	} ; 5
], align 16

@module39_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 197; uint32_t java_map_index (0xc5)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 901; uint32_t java_map_index (0x385)
	} ; 16
], align 16

@module39_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 901; uint32_t java_map_index (0x385)
	} ; 5
], align 16

@module40_managed_to_java = internal dso_local constant [106 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 1105; uint32_t java_map_index (0x451)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 1081; uint32_t java_map_index (0x439)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 727; uint32_t java_map_index (0x2d7)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 201; uint32_t java_map_index (0xc9)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 1019; uint32_t java_map_index (0x3fb)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 1111; uint32_t java_map_index (0x457)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 759; uint32_t java_map_index (0x2f7)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 1034; uint32_t java_map_index (0x40a)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 1054; uint32_t java_map_index (0x41e)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 1030; uint32_t java_map_index (0x406)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 1083; uint32_t java_map_index (0x43b)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 1107; uint32_t java_map_index (0x453)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 838; uint32_t java_map_index (0x346)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 1058; uint32_t java_map_index (0x422)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 1103; uint32_t java_map_index (0x44f)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 751; uint32_t java_map_index (0x2ef)
	} ; 105
], align 16

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1133 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 0
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 1117; uint32_t java_name_index (0x45d)
	}, ; 1
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 2
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 3
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555468, ; uint32_t type_token_id (0x200040c)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 4
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 5
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 6
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 7
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 8
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 9
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 10
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 11
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 12
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 13
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 14
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 15
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 16
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 17
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 18
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 1074; uint32_t java_name_index (0x432)
	}, ; 19
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 20
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 21
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 1034; uint32_t java_name_index (0x40a)
	}, ; 22
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 23
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 24
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 25
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 26
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 27
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 28
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 29
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 30
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 31
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 32
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 33
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 34
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 35
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 36
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 1126; uint32_t java_name_index (0x466)
	}, ; 37
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 38
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 39
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 40
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 41
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 42
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 43
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 44
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 45
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 46
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 1109; uint32_t java_name_index (0x455)
	}, ; 47
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 48
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 49
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 50
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 51
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 1041; uint32_t java_name_index (0x411)
	}, ; 52
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 53
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1081; uint32_t java_name_index (0x439)
	}, ; 54
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 55
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 56
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 57
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 58
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 59
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 60
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 61
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555170, ; uint32_t type_token_id (0x20002e2)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 62
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 63
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 64
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 65
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 66
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 67
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 68
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 69
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 70
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 71
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 72
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 73
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 1025; uint32_t java_name_index (0x401)
	}, ; 74
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 75
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 76
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 77
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 78
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 1045; uint32_t java_name_index (0x415)
	}, ; 79
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 80
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 81
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 82
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 83
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 84
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 1064; uint32_t java_name_index (0x428)
	}, ; 85
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 1052; uint32_t java_name_index (0x41c)
	}, ; 86
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 87
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 1101; uint32_t java_name_index (0x44d)
	}, ; 88
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 89
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 90
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 91
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 92
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 93
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 94
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 1063; uint32_t java_name_index (0x427)
	}, ; 95
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 96
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 97
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 98
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 99
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 100
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 101
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 102
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 103
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 1088; uint32_t java_name_index (0x440)
	}, ; 104
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 105
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 106
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 107
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 1050; uint32_t java_name_index (0x41a)
	}, ; 108
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 109
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 110
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 111
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 112
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 113
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 114
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 115
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 116
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 117
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 118
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 119
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 120
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 121
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 122
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 1046; uint32_t java_name_index (0x416)
	}, ; 123
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 124
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 125
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 126
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 127
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 128
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 1057; uint32_t java_name_index (0x421)
	}, ; 129
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 130
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1002; uint32_t java_name_index (0x3ea)
	}, ; 131
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 132
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 133
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 134
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 135
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 136
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 137
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 138
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 139
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 140
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 141
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 142
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 143
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 144
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 145
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 146
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 147
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 148
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 149
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 1027; uint32_t java_name_index (0x403)
	}, ; 150
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 151
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 152
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 153
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 154
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 155
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 156
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555458, ; uint32_t type_token_id (0x2000402)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 157
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 158
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 1096; uint32_t java_name_index (0x448)
	}, ; 159
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 160
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 1062; uint32_t java_name_index (0x426)
	}, ; 161
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 162
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 163
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 164
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 165
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 166
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 167
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 168
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 169
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 170
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 1044; uint32_t java_name_index (0x414)
	}, ; 171
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 172
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1016; uint32_t java_name_index (0x3f8)
	}, ; 173
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 174
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 175
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555474, ; uint32_t type_token_id (0x2000412)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 176
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 177
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 178
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 179
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555123, ; uint32_t type_token_id (0x20002b3)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 180
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 181
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 182
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 183
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 184
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 185
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 186
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 187
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 1073; uint32_t java_name_index (0x431)
	}, ; 188
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 240; uint32_t java_name_index (0xf0)
	}, ; 189
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 190
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 191
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 192
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 193
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 194
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 195
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 196
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1017; uint32_t java_name_index (0x3f9)
	}, ; 197
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 198
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 199
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 200
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 1076; uint32_t java_name_index (0x434)
	}, ; 201
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 996; uint32_t java_name_index (0x3e4)
	}, ; 202
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 203
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 204
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 205
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1000; uint32_t java_name_index (0x3e8)
	}, ; 206
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 207
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 208
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 209
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 210
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 211
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 212
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 213
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 214
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 215
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 216
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 217
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 218
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 219
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 220
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 221
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 222
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 223
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 224
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 225
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 226
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 227
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 228
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 229
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 230
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 1083; uint32_t java_name_index (0x43b)
	}, ; 231
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 232
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 233
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 234
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 235
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 236
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 237
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 238
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 1121; uint32_t java_name_index (0x461)
	}, ; 239
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 240
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 241
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 1059; uint32_t java_name_index (0x423)
	}, ; 242
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 243
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 244
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 245
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 246
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 247
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 248
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 249
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 250
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 251
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 252
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 253
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 254
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 255
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 256
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 1094; uint32_t java_name_index (0x446)
	}, ; 257
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 258
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 259
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 260
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 1095; uint32_t java_name_index (0x447)
	}, ; 261
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 262
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 263
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 264
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 265
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 266
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 267
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 268
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 1035; uint32_t java_name_index (0x40b)
	}, ; 269
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 270
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 271
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 272
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 273
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 274
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 275
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 276
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 277
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 278
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 279
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 1105; uint32_t java_name_index (0x451)
	}, ; 280
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 281
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 282
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 283
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 284
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554728, ; uint32_t type_token_id (0x2000128)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 285
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 1087; uint32_t java_name_index (0x43f)
	}, ; 286
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1012; uint32_t java_name_index (0x3f4)
	}, ; 287
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 288
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 1055; uint32_t java_name_index (0x41f)
	}, ; 289
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 313; uint32_t java_name_index (0x139)
	}, ; 290
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 291
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 1124; uint32_t java_name_index (0x464)
	}, ; 292
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 293
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 294
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 295
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 296
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 297
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 298
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 299
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 300
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 301
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 302
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 303
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 304
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 1060; uint32_t java_name_index (0x424)
	}, ; 305
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 306
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 307
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 308
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 309
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 310
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 1123; uint32_t java_name_index (0x463)
	}, ; 311
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 312
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 313
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 314
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 315
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 316
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 1008; uint32_t java_name_index (0x3f0)
	}, ; 317
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 318
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 1033; uint32_t java_name_index (0x409)
	}, ; 319
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 320
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 321
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1112; uint32_t java_name_index (0x458)
	}, ; 322
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 323
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 324
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 325
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 326
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 1085; uint32_t java_name_index (0x43d)
	}, ; 327
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 1072; uint32_t java_name_index (0x430)
	}, ; 328
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 329
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 1116; uint32_t java_name_index (0x45c)
	}, ; 330
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 331
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 332
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 333
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 334
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 335
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 336
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 337
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1075; uint32_t java_name_index (0x433)
	}, ; 338
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1018; uint32_t java_name_index (0x3fa)
	}, ; 339
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 340
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 341
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 1024; uint32_t java_name_index (0x400)
	}, ; 342
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 343
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 1128; uint32_t java_name_index (0x468)
	}, ; 344
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 345
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 346
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 347
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 348
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 349
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 350
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 351
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 352
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 353
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 354
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 355
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555124, ; uint32_t type_token_id (0x20002b4)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 356
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 1029; uint32_t java_name_index (0x405)
	}, ; 357
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 358
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 359
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 360
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 361
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 362
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 363
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 1028; uint32_t java_name_index (0x404)
	}, ; 364
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 365
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 366
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 367
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 368
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 369
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 370
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 371
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 372
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 1039; uint32_t java_name_index (0x40f)
	}, ; 373
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 374
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 375
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 376
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1080; uint32_t java_name_index (0x438)
	}, ; 377
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 378
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 1097; uint32_t java_name_index (0x449)
	}, ; 379
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 380
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 1021; uint32_t java_name_index (0x3fd)
	}, ; 381
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 382
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 383
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 384
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 385
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 997; uint32_t java_name_index (0x3e5)
	}, ; 386
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 387
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 388
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 389
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 390
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 391
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 392
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 393
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 1127; uint32_t java_name_index (0x467)
	}, ; 394
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 395
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 396
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 397
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 398
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 1030; uint32_t java_name_index (0x406)
	}, ; 399
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 400
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 401
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 402
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 403
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 404
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 405
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 1070; uint32_t java_name_index (0x42e)
	}, ; 406
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 407
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 408
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 409
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 410
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 411
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 1108; uint32_t java_name_index (0x454)
	}, ; 412
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 413
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 414
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 415
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 416
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 417
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 992; uint32_t java_name_index (0x3e0)
	}, ; 418
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 1107; uint32_t java_name_index (0x453)
	}, ; 419
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 420
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 421
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 422
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 1023; uint32_t java_name_index (0x3ff)
	}, ; 423
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 424
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 425
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 1118; uint32_t java_name_index (0x45e)
	}, ; 426
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 427
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 428
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 429
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 430
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 431
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 432
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 433
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 434
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 435
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 436
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 437
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 438
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 439
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 440
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 1043; uint32_t java_name_index (0x413)
	}, ; 441
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 442
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 1004; uint32_t java_name_index (0x3ec)
	}, ; 443
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 444
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 445
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 446
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 1036; uint32_t java_name_index (0x40c)
	}, ; 447
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 448
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 449
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 450
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 451
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 452
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 453
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 454
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 455
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 456
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 457
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 458
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 459
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 1100; uint32_t java_name_index (0x44c)
	}, ; 460
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 461
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 462
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 463
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 464
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 1093; uint32_t java_name_index (0x445)
	}, ; 465
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 466
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 467
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 468
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 469
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 470
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 471
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 472
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 473
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 474
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 475
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 476
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 477
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 478
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 479
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555157, ; uint32_t type_token_id (0x20002d5)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 480
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 481
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1009; uint32_t java_name_index (0x3f1)
	}, ; 482
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 483
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555028, ; uint32_t type_token_id (0x2000254)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 484
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 485
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555133, ; uint32_t type_token_id (0x20002bd)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 486
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 487
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 1007; uint32_t java_name_index (0x3ef)
	}, ; 488
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 489
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 490
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 491
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 492
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555010, ; uint32_t type_token_id (0x2000242)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 493
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 494
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 495
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 496
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 497
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 498
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 499
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 500
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 501
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 502
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 1031; uint32_t java_name_index (0x407)
	}, ; 503
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 504
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 505
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554908, ; uint32_t type_token_id (0x20001dc)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 506
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 507
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 508
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 509
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 510
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 511
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 512
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 513
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 514
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 515
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 516
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 517
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 518
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 519
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1011; uint32_t java_name_index (0x3f3)
	}, ; 520
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 521
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 522
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 523
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1022; uint32_t java_name_index (0x3fe)
	}, ; 524
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 525
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 526
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 527
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 528
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 529
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 530
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 531
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 532
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 533
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 534
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 535
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 536
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 537
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 538
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 539
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 540
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 541
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 542
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 543
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 544
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 545
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 546
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 547
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 548
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 549
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 550
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 551
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 552
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 553
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 554
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 555
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 556
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 557
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 558
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 559
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 560
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 561
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 562
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 563
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 564
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 565
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 566
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 567
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 568
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 569
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 570
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 571
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 572
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 573
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 574
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 575
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 576
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 577
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 578
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 579
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555121, ; uint32_t type_token_id (0x20002b1)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 580
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 581
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555470, ; uint32_t type_token_id (0x200040e)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 582
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 583
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 584
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 585
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 586
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 587
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555465, ; uint32_t type_token_id (0x2000409)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 588
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 589
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 1120; uint32_t java_name_index (0x460)
	}, ; 590
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 591
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 592
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 593
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 594
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 595
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 596
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 597
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 598
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555460, ; uint32_t type_token_id (0x2000404)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 599
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 600
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 601
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 1090; uint32_t java_name_index (0x442)
	}, ; 602
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 603
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 1037; uint32_t java_name_index (0x40d)
	}, ; 604
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 605
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 606
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 607
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 608
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 609
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 610
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 993; uint32_t java_name_index (0x3e1)
	}, ; 611
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 612
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 613
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 614
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 615
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 616
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 617
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 618
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 619
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 620
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 621
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 622
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 623
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 624
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 625
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 626
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 627
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 1106; uint32_t java_name_index (0x452)
	}, ; 628
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 629
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 630
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 631
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 632
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 633
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 1115; uint32_t java_name_index (0x45b)
	}, ; 634
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 635
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1042; uint32_t java_name_index (0x412)
	}, ; 636
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 637
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1015; uint32_t java_name_index (0x3f7)
	}, ; 638
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 639
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 640
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 641
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 642
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 643
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 644
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 1014; uint32_t java_name_index (0x3f6)
	}, ; 645
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 646
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 647
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 1048; uint32_t java_name_index (0x418)
	}, ; 648
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 649
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 650
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 651
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 652
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 653
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 1132; uint32_t java_name_index (0x46c)
	}, ; 654
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 655
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 656
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 657
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 658
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 659
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 660
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 661
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 662
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1006; uint32_t java_name_index (0x3ee)
	}, ; 663
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 664
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 665
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 666
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 998; uint32_t java_name_index (0x3e6)
	}, ; 667
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 1068; uint32_t java_name_index (0x42c)
	}, ; 668
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 669
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 670
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 671
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 672
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 673
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 674
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 675
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555070, ; uint32_t type_token_id (0x200027e)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 676
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 677
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 678
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 679
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 680
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 1129; uint32_t java_name_index (0x469)
	}, ; 681
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 682
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 683
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 684
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 1058; uint32_t java_name_index (0x422)
	}, ; 685
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 686
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 687
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 688
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1005; uint32_t java_name_index (0x3ed)
	}, ; 689
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 690
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 1110; uint32_t java_name_index (0x456)
	}, ; 691
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 692
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 693
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 694
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 695
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 696
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 697
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 698
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 699
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 700
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 701
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 702
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 703
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 704
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 705
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 706
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 707
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 708
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 709
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555166, ; uint32_t type_token_id (0x20002de)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 710
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 711
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 712
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 713
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 714
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 715
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 716
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 717
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 718
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 719
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 720
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 721
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 1084; uint32_t java_name_index (0x43c)
	}, ; 722
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 723
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 724
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 725
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 726
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 1066; uint32_t java_name_index (0x42a)
	}, ; 727
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 728
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 729
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 730
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 731
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 732
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 733
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 734
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1010; uint32_t java_name_index (0x3f2)
	}, ; 735
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 736
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 737
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 738
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 739
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 740
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 1071; uint32_t java_name_index (0x42f)
	}, ; 741
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 742
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555054, ; uint32_t type_token_id (0x200026e)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 743
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 744
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 745
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 746
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 747
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 748
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 749
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 750
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 1130; uint32_t java_name_index (0x46a)
	}, ; 751
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1003; uint32_t java_name_index (0x3eb)
	}, ; 752
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555454, ; uint32_t type_token_id (0x20003fe)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 753
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 754
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 755
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 756
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555453, ; uint32_t type_token_id (0x20003fd)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 757
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 758
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 1082; uint32_t java_name_index (0x43a)
	}, ; 759
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 1061; uint32_t java_name_index (0x425)
	}, ; 760
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 761
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555461, ; uint32_t type_token_id (0x2000405)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 762
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 763
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 764
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 995; uint32_t java_name_index (0x3e3)
	}, ; 765
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 1069; uint32_t java_name_index (0x42d)
	}, ; 766
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 767
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 768
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 769
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 770
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 1032; uint32_t java_name_index (0x408)
	}, ; 771
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 1020; uint32_t java_name_index (0x3fc)
	}, ; 772
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 773
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 774
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 775
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 776
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 777
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 778
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 779
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555455, ; uint32_t type_token_id (0x20003ff)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 780
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 781
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 782
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 783
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 784
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 785
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 786
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 787
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 788
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 789
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 790
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 1099; uint32_t java_name_index (0x44b)
	}, ; 791
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 792
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 793
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 794
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 795
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 796
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 797
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 798
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 799
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 1092; uint32_t java_name_index (0x444)
	}, ; 800
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 801
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 802
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 803
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 804
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 805
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 806
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 807
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 808
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 1113; uint32_t java_name_index (0x459)
	}, ; 809
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 810
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 811
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 812
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 1049; uint32_t java_name_index (0x419)
	}, ; 813
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554906, ; uint32_t type_token_id (0x20001da)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 814
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 815
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 816
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 817
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 818
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 819
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 820
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 821
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 822
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 823
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555491, ; uint32_t type_token_id (0x2000423)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 824
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 825
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 826
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 827
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1091; uint32_t java_name_index (0x443)
	}, ; 828
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 829
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 830
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 831
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 832
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 833
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 834
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 835
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 836
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 837
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 1065; uint32_t java_name_index (0x429)
	}, ; 838
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 839
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 1047; uint32_t java_name_index (0x417)
	}, ; 840
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 841
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 842
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 843
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555125, ; uint32_t type_token_id (0x20002b5)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 844
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 845
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 846
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 847
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555464, ; uint32_t type_token_id (0x2000408)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 848
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 849
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 850
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 851
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 852
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 853
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 854
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 855
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 856
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 857
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 858
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 1038; uint32_t java_name_index (0x40e)
	}, ; 859
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 1098; uint32_t java_name_index (0x44a)
	}, ; 860
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 861
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 862
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 863
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 864
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 865
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 866
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 867
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 868
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 869
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 870
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 871
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 1053; uint32_t java_name_index (0x41d)
	}, ; 872
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 873
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 1103; uint32_t java_name_index (0x44f)
	}, ; 874
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 875
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 876
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555463, ; uint32_t type_token_id (0x2000407)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 877
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555434, ; uint32_t type_token_id (0x20003ea)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 878
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 879
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 880
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 881
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 882
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 883
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 884
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 885
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 886
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 887
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 888
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 889
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 890
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 891
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1019; uint32_t java_name_index (0x3fb)
	}, ; 892
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 893
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 894
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 994; uint32_t java_name_index (0x3e2)
	}, ; 895
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 896
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 897
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 898
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 899
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 900
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 1026; uint32_t java_name_index (0x402)
	}, ; 901
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 902
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 903
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 904
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 905
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 906
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 907
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 908
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 1114; uint32_t java_name_index (0x45a)
	}, ; 909
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 910
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 911
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 1013; uint32_t java_name_index (0x3f5)
	}, ; 912
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 913
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 914
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1077; uint32_t java_name_index (0x435)
	}, ; 915
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 916
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 917
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 918
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 919
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 920
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 921
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555472, ; uint32_t type_token_id (0x2000410)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 922
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 923
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 924
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 925
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 1122; uint32_t java_name_index (0x462)
	}, ; 926
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 927
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 928
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555071, ; uint32_t type_token_id (0x200027f)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 929
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 930
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 931
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555467, ; uint32_t type_token_id (0x200040b)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 932
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 933
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 934
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 935
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 936
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 937
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 938
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 939
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 940
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 941
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 942
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 943
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 944
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 945
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 946
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 1125; uint32_t java_name_index (0x465)
	}, ; 947
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 948
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 949
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 950
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 951
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 952
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 953
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 954
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 955
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 956
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 957
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 958
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 959
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 960
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555428, ; uint32_t type_token_id (0x20003e4)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 961
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 962
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 963
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 964
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 965
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 1054; uint32_t java_name_index (0x41e)
	}, ; 966
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 967
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555072, ; uint32_t type_token_id (0x2000280)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 968
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 1056; uint32_t java_name_index (0x420)
	}, ; 969
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 970
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 971
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 972
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 973
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 974
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 975
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 976
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 977
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 978
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 979
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 980
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 981
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 982
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 983
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 984
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 985
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 986
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 987
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 988
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 989
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 990
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 991
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 992
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 993
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 994
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 995
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 996
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 997
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 998
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 999
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 1000
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 1001
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 1002
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 1003
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 991; uint32_t java_name_index (0x3df)
	}, ; 1004
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 1005
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 1006
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 1007
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 1008
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 1009
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 1010
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 1011
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 1012
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 1013
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 1014
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 1015
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 1016
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 1017
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 1018
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1078; uint32_t java_name_index (0x436)
	}, ; 1019
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 1020
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 668; uint32_t java_name_index (0x29c)
	}, ; 1021
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 1022
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 1023
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555168, ; uint32_t type_token_id (0x20002e0)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 1024
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 1025
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 1026
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 1027
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 1028
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 1029
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1111; uint32_t java_name_index (0x457)
	}, ; 1030
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 1031
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 1032
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 1033
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 1086; uint32_t java_name_index (0x43e)
	}, ; 1034
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 1035
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 1036
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 1037
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 1038
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 1039
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 1040
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 1041
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 1042
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 1043
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 1044
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 1045
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 1046
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 1047
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1089; uint32_t java_name_index (0x441)
	}, ; 1048
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 999; uint32_t java_name_index (0x3e7)
	}, ; 1049
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 1050
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 1051
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 1052
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 1053
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 1104; uint32_t java_name_index (0x450)
	}, ; 1054
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 1055
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 1056
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 1057
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 1067; uint32_t java_name_index (0x42b)
	}, ; 1058
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 1059
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 1060
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 1061
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 1062
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 1063
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 1064
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 1065
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 1066
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 1067
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 1068
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 1069
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 1070
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 1071
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 1072
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 1073
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 1074
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554857, ; uint32_t type_token_id (0x20001a9)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 1075
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 1076
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 1077
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 1078
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 1079
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 1080
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 1051; uint32_t java_name_index (0x41b)
	}, ; 1081
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 1082
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 1119; uint32_t java_name_index (0x45f)
	}, ; 1083
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 147; uint32_t java_name_index (0x93)
	}, ; 1084
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 1085
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 1086
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 1001; uint32_t java_name_index (0x3e9)
	}, ; 1087
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 1088
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 1089
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 1090
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 1091
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 1092
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 1093
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 1094
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 1095
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 1096
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 1097
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 1098
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 1099
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 1100
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 1101
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 1102
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 1102; uint32_t java_name_index (0x44e)
	}, ; 1103
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 1104
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 1040; uint32_t java_name_index (0x410)
	}, ; 1105
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 1106
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 1131; uint32_t java_name_index (0x46b)
	}, ; 1107
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 1108
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 1109
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 1110
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1079; uint32_t java_name_index (0x437)
	}, ; 1111
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 1112
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 1113
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 1114
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 1115
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 1116
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 1117
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 1118
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 1119
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 1120
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 1121
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 1122
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 1123
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 1124
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 1125
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 1126
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 1127
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 1128
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 1129
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555155, ; uint32_t type_token_id (0x20002d3)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 1130
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 1131
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 411; uint32_t java_name_index (0x19b)
	} ; 1132
], align 16

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1133 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072, ; 1072
	ptr @.str.1073, ; 1073
	ptr @.str.1074, ; 1074
	ptr @.str.1075, ; 1075
	ptr @.str.1076, ; 1076
	ptr @.str.1077, ; 1077
	ptr @.str.1078, ; 1078
	ptr @.str.1079, ; 1079
	ptr @.str.1080, ; 1080
	ptr @.str.1081, ; 1081
	ptr @.str.1082, ; 1082
	ptr @.str.1083, ; 1083
	ptr @.str.1084, ; 1084
	ptr @.str.1085, ; 1085
	ptr @.str.1086, ; 1086
	ptr @.str.1087, ; 1087
	ptr @.str.1088, ; 1088
	ptr @.str.1089, ; 1089
	ptr @.str.1090, ; 1090
	ptr @.str.1091, ; 1091
	ptr @.str.1092, ; 1092
	ptr @.str.1093, ; 1093
	ptr @.str.1094, ; 1094
	ptr @.str.1095, ; 1095
	ptr @.str.1096, ; 1096
	ptr @.str.1097, ; 1097
	ptr @.str.1098, ; 1098
	ptr @.str.1099, ; 1099
	ptr @.str.1100, ; 1100
	ptr @.str.1101, ; 1101
	ptr @.str.1102, ; 1102
	ptr @.str.1103, ; 1103
	ptr @.str.1104, ; 1104
	ptr @.str.1105, ; 1105
	ptr @.str.1106, ; 1106
	ptr @.str.1107, ; 1107
	ptr @.str.1108, ; 1108
	ptr @.str.1109, ; 1109
	ptr @.str.1110, ; 1110
	ptr @.str.1111, ; 1111
	ptr @.str.1112, ; 1112
	ptr @.str.1113, ; 1113
	ptr @.str.1114, ; 1114
	ptr @.str.1115, ; 1115
	ptr @.str.1116, ; 1116
	ptr @.str.1117, ; 1117
	ptr @.str.1118, ; 1118
	ptr @.str.1119, ; 1119
	ptr @.str.1120, ; 1120
	ptr @.str.1121, ; 1121
	ptr @.str.1122, ; 1122
	ptr @.str.1123, ; 1123
	ptr @.str.1124, ; 1124
	ptr @.str.1125, ; 1125
	ptr @.str.1126, ; 1126
	ptr @.str.1127, ; 1127
	ptr @.str.1128, ; 1128
	ptr @.str.1129, ; 1129
	ptr @.str.1130, ; 1130
	ptr @.str.1131, ; 1131
	ptr @.str.1132 ; 1132
], align 16

; Strings
@.str.0 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 16
@.str.3 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 16
@.str.4 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 16
@.str.5 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 16
@.str.6 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 16
@.str.7 = private unnamed_addr constant [43 x i8] c"androidx/core/graphics/drawable/IconCompat\00", align 16
@.str.8 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 16
@.str.9 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 16
@.str.10 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 16
@.str.11 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 16
@.str.12 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 16
@.str.13 = private unnamed_addr constant [44 x i8] c"androidx/core/content/pm/ShortcutInfoCompat\00", align 16
@.str.14 = private unnamed_addr constant [33 x i8] c"androidx/core/app/ActivityCompat\00", align 16
@.str.15 = private unnamed_addr constant [58 x i8] c"androidx/core/app/ActivityCompat$PermissionCompatDelegate\00", align 16
@.str.16 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 16
@.str.17 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 16
@.str.18 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 16
@.str.19 = private unnamed_addr constant [57 x i8] c"androidx/core/app/NotificationBuilderWithBuilderAccessor\00", align 16
@.str.20 = private unnamed_addr constant [37 x i8] c"androidx/core/app/NotificationCompat\00", align 16
@.str.21 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationCompat$Action\00", align 16
@.str.22 = private unnamed_addr constant [53 x i8] c"androidx/core/app/NotificationCompat$BigPictureStyle\00", align 16
@.str.23 = private unnamed_addr constant [50 x i8] c"androidx/core/app/NotificationCompat$BigTextStyle\00", align 16
@.str.24 = private unnamed_addr constant [52 x i8] c"androidx/core/app/NotificationCompat$BubbleMetadata\00", align 16
@.str.25 = private unnamed_addr constant [45 x i8] c"androidx/core/app/NotificationCompat$Builder\00", align 16
@.str.26 = private unnamed_addr constant [46 x i8] c"androidx/core/app/NotificationCompat$Extender\00", align 16
@.str.27 = private unnamed_addr constant [43 x i8] c"androidx/core/app/NotificationCompat$Style\00", align 16
@.str.28 = private unnamed_addr constant [25 x i8] c"androidx/core/app/Person\00", align 16
@.str.29 = private unnamed_addr constant [33 x i8] c"androidx/core/app/Person$Builder\00", align 16
@.str.30 = private unnamed_addr constant [30 x i8] c"androidx/core/app/RemoteInput\00", align 16
@.str.31 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 16
@.str.32 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 16
@.str.33 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 16
@.str.34 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 16
@.str.35 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 16
@.str.36 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 16
@.str.37 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 16
@.str.38 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 16
@.str.39 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 16
@.str.40 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 16
@.str.41 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 16
@.str.42 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 16
@.str.43 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 16
@.str.44 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 16
@.str.45 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 16
@.str.46 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 16
@.str.47 = private unnamed_addr constant [48 x i8] c"androidx/core/view/DragAndDropPermissionsCompat\00", align 16
@.str.48 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 16
@.str.49 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 16
@.str.50 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 16
@.str.51 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 16
@.str.52 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 16
@.str.53 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 16
@.str.54 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 16
@.str.55 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 16
@.str.56 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 16
@.str.57 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 16
@.str.58 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 16
@.str.59 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 16
@.str.60 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 16
@.str.61 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 16
@.str.62 = private unnamed_addr constant [39 x i8] c"androidx/core/view/ViewStructureCompat\00", align 16
@.str.63 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 16
@.str.64 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 16
@.str.65 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 16
@.str.66 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 16
@.str.67 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 16
@.str.68 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 16
@.str.69 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 16
@.str.70 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 16
@.str.71 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 16
@.str.72 = private unnamed_addr constant [62 x i8] c"androidx/core/view/contentcapture/ContentCaptureSessionCompat\00", align 16
@.str.73 = private unnamed_addr constant [45 x i8] c"androidx/core/view/autofill/AutofillIdCompat\00", align 16
@.str.74 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 16
@.str.75 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 16
@.str.76 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 16
@.str.77 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 16
@.str.78 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 16
@.str.79 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 16
@.str.80 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 16
@.str.81 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 16
@.str.82 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 16
@.str.83 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 16
@.str.84 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 16
@.str.85 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 16
@.str.86 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 16
@.str.87 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 16
@.str.88 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 16
@.str.89 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 16
@.str.90 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 16
@.str.91 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 16
@.str.92 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 16
@.str.93 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 16
@.str.94 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 16
@.str.95 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 16
@.str.96 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 16
@.str.97 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/CoroutineScope\00", align 16
@.str.98 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 16
@.str.99 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 16
@.str.100 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 16
@.str.101 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 16
@.str.102 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 16
@.str.103 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 16
@.str.104 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 16
@.str.105 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 16
@.str.106 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 16
@.str.107 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 16
@.str.108 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 16
@.str.109 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 16
@.str.110 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 16
@.str.111 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 16
@.str.112 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 16
@.str.113 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 16
@.str.114 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 16
@.str.115 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 16
@.str.116 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 16
@.str.117 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 16
@.str.118 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 16
@.str.119 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 16
@.str.120 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 16
@.str.121 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 16
@.str.122 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 16
@.str.123 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 16
@.str.124 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 16
@.str.125 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 16
@.str.126 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 16
@.str.127 = private unnamed_addr constant [25 x i8] c"android/window/BackEvent\00", align 16
@.str.128 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 16
@.str.129 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 16
@.str.130 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 16
@.str.131 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 16
@.str.132 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 16
@.str.133 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 16
@.str.134 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 16
@.str.135 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 16
@.str.136 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 16
@.str.137 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 16
@.str.138 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 16
@.str.139 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 16
@.str.140 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 16
@.str.141 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 16
@.str.142 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 16
@.str.143 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 16
@.str.144 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 16
@.str.145 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 16
@.str.146 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 16
@.str.147 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 16
@.str.148 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 16
@.str.149 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 16
@.str.150 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 16
@.str.151 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 16
@.str.152 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 16
@.str.153 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 16
@.str.154 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 16
@.str.155 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 16
@.str.156 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 16
@.str.157 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 16
@.str.158 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 16
@.str.159 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 16
@.str.160 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 16
@.str.161 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 16
@.str.162 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 16
@.str.163 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 16
@.str.164 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 16
@.str.165 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 16
@.str.166 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 16
@.str.167 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 16
@.str.168 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 16
@.str.169 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 16
@.str.170 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 16
@.str.171 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 16
@.str.172 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 16
@.str.173 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 16
@.str.174 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 16
@.str.175 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 16
@.str.176 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 16
@.str.177 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 16
@.str.178 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 16
@.str.179 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 16
@.str.180 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 16
@.str.181 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 16
@.str.182 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 16
@.str.183 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 16
@.str.184 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 16
@.str.185 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 16
@.str.186 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 16
@.str.187 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 16
@.str.188 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 16
@.str.189 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 16
@.str.190 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 16
@.str.191 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 16
@.str.192 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 16
@.str.193 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 16
@.str.194 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 16
@.str.195 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 16
@.str.196 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 16
@.str.197 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 16
@.str.198 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 16
@.str.199 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 16
@.str.200 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 16
@.str.201 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 16
@.str.202 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 16
@.str.203 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 16
@.str.204 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 16
@.str.205 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 16
@.str.206 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 16
@.str.207 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 16
@.str.208 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 16
@.str.209 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 16
@.str.210 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 16
@.str.211 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 16
@.str.212 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 16
@.str.213 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 16
@.str.214 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 16
@.str.215 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 16
@.str.216 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 16
@.str.217 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 16
@.str.218 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 16
@.str.219 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 16
@.str.220 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 16
@.str.221 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 16
@.str.222 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 16
@.str.223 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 16
@.str.224 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 16
@.str.225 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 16
@.str.226 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 16
@.str.227 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 16
@.str.228 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 16
@.str.229 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 16
@.str.230 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 16
@.str.231 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 16
@.str.232 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 16
@.str.233 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 16
@.str.234 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 16
@.str.235 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 16
@.str.236 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 16
@.str.237 = private unnamed_addr constant [46 x i8] c"android/security/keystore/KeyGenParameterSpec\00", align 16
@.str.238 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 16
@.str.239 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 16
@.str.240 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 16
@.str.241 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 16
@.str.242 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 16
@.str.243 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 16
@.str.244 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 16
@.str.245 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 16
@.str.246 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 16
@.str.247 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 16
@.str.248 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 16
@.str.249 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 16
@.str.250 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 16
@.str.251 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 16
@.str.252 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 16
@.str.253 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 16
@.str.254 = private unnamed_addr constant [29 x i8] c"android/os/PersistableBundle\00", align 16
@.str.255 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 16
@.str.256 = private unnamed_addr constant [23 x i8] c"android/os/SystemClock\00", align 16
@.str.257 = private unnamed_addr constant [22 x i8] c"android/os/UserHandle\00", align 16
@.str.258 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 16
@.str.259 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 16
@.str.260 = private unnamed_addr constant [30 x i8] c"android/media/AudioAttributes\00", align 16
@.str.261 = private unnamed_addr constant [38 x i8] c"android/media/AudioAttributes$Builder\00", align 16
@.str.262 = private unnamed_addr constant [30 x i8] c"android/media/RingtoneManager\00", align 16
@.str.263 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 16
@.str.264 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 16
@.str.265 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 16
@.str.266 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 16
@.str.267 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 16
@.str.268 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 16
@.str.269 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 16
@.str.270 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 16
@.str.271 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 16
@.str.272 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 16
@.str.273 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 16
@.str.274 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 16
@.str.275 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 16
@.str.276 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 16
@.str.277 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 16
@.str.278 = private unnamed_addr constant [25 x i8] c"android/app/AlarmManager\00", align 16
@.str.279 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 16
@.str.280 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 16
@.str.281 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 16
@.str.282 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 16
@.str.283 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 16
@.str.284 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 16
@.str.285 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 16
@.str.286 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 16
@.str.287 = private unnamed_addr constant [25 x i8] c"android/app/Notification\00", align 16
@.str.288 = private unnamed_addr constant [40 x i8] c"android/app/Notification$BubbleMetadata\00", align 16
@.str.289 = private unnamed_addr constant [33 x i8] c"android/app/Notification$Builder\00", align 16
@.str.290 = private unnamed_addr constant [32 x i8] c"android/app/NotificationChannel\00", align 16
@.str.291 = private unnamed_addr constant [37 x i8] c"android/app/NotificationChannelGroup\00", align 16
@.str.292 = private unnamed_addr constant [32 x i8] c"android/app/NotificationManager\00", align 16
@.str.293 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 16
@.str.294 = private unnamed_addr constant [19 x i8] c"android/app/Person\00", align 16
@.str.295 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 16
@.str.296 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 16
@.str.297 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 16
@.str.298 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 16
@.str.299 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 16
@.str.300 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 16
@.str.301 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 16
@.str.302 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 16
@.str.303 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 16
@.str.304 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 16
@.str.305 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@.str.306 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 16
@.str.307 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 16
@.str.308 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 16
@.str.309 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 16
@.str.310 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 16
@.str.311 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 16
@.str.312 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 16
@.str.313 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 16
@.str.314 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 16
@.str.315 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 16
@.str.316 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 16
@.str.317 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 16
@.str.318 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 16
@.str.319 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 16
@.str.320 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 16
@.str.321 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 16
@.str.322 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 16
@.str.323 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 16
@.str.324 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 16
@.str.325 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 16
@.str.326 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 16
@.str.327 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 16
@.str.328 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 16
@.str.329 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 16
@.str.330 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 16
@.str.331 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 16
@.str.332 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 16
@.str.333 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 16
@.str.334 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 16
@.str.335 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 16
@.str.336 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 16
@.str.337 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 16
@.str.338 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 16
@.str.339 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 16
@.str.340 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 16
@.str.341 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 16
@.str.342 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 16
@.str.343 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 16
@.str.344 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 16
@.str.345 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 16
@.str.346 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 16
@.str.347 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 16
@.str.348 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 16
@.str.349 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 16
@.str.350 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 16
@.str.351 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 16
@.str.352 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 16
@.str.353 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 16
@.str.354 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 16
@.str.355 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 16
@.str.356 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 16
@.str.357 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 16
@.str.358 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 16
@.str.359 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 16
@.str.360 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 16
@.str.361 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 16
@.str.362 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 16
@.str.363 = private unnamed_addr constant [27 x i8] c"android/view/ViewStructure\00", align 16
@.str.364 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 16
@.str.365 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 16
@.str.366 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 16
@.str.367 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 16
@.str.368 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 16
@.str.369 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 16
@.str.370 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 16
@.str.371 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 16
@.str.372 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 16
@.str.373 = private unnamed_addr constant [50 x i8] c"android/view/contentcapture/ContentCaptureSession\00", align 16
@.str.374 = private unnamed_addr constant [33 x i8] c"android/view/autofill/AutofillId\00", align 16
@.str.375 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 16
@.str.376 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 16
@.str.377 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 16
@.str.378 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 16
@.str.379 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 16
@.str.380 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 16
@.str.381 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 16
@.str.382 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 16
@.str.383 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 16
@.str.384 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 16
@.str.385 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 16
@.str.386 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 16
@.str.387 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 16
@.str.388 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 16
@.str.389 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@.str.390 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 16
@.str.391 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 16
@.str.392 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 16
@.str.393 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 16
@.str.394 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@.str.395 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@.str.396 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 16
@.str.397 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@.str.398 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 16
@.str.399 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 16
@.str.400 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 16
@.str.401 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 16
@.str.402 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 16
@.str.403 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 16
@.str.404 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 16
@.str.405 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 16
@.str.406 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 16
@.str.407 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 16
@.str.408 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 16
@.str.409 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 16
@.str.410 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 16
@.str.411 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 16
@.str.412 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 16
@.str.413 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 16
@.str.414 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 16
@.str.415 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 16
@.str.416 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 16
@.str.417 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 16
@.str.418 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 16
@.str.419 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 16
@.str.420 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 16
@.str.421 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 16
@.str.422 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 16
@.str.423 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 16
@.str.424 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 16
@.str.425 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 16
@.str.426 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 16
@.str.427 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 16
@.str.428 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 16
@.str.429 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 16
@.str.430 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 16
@.str.431 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 16
@.str.432 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 16
@.str.433 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 16
@.str.434 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 16
@.str.435 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 16
@.str.436 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 16
@.str.437 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 16
@.str.438 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 16
@.str.439 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 16
@.str.440 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 16
@.str.441 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 16
@.str.442 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 16
@.str.443 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 16
@.str.444 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 16
@.str.445 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 16
@.str.446 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 16
@.str.447 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 16
@.str.448 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 16
@.str.449 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 16
@.str.450 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 16
@.str.451 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 16
@.str.452 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 16
@.str.453 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 16
@.str.454 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 16
@.str.455 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 16
@.str.456 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 16
@.str.457 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 16
@.str.458 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 16
@.str.459 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 16
@.str.460 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 16
@.str.461 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 16
@.str.462 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 16
@.str.463 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 16
@.str.464 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 16
@.str.465 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@.str.466 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 16
@.str.467 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 16
@.str.468 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 16
@.str.469 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 16
@.str.470 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 16
@.str.471 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 16
@.str.472 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 16
@.str.473 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 16
@.str.474 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 16
@.str.475 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 16
@.str.476 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 16
@.str.477 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 16
@.str.478 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 16
@.str.479 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 16
@.str.480 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@.str.481 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@.str.482 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@.str.483 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 16
@.str.484 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 16
@.str.485 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 16
@.str.486 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 16
@.str.487 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 16
@.str.488 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 16
@.str.489 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 16
@.str.490 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 16
@.str.491 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 16
@.str.492 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 16
@.str.493 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 16
@.str.494 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 16
@.str.495 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 16
@.str.496 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 16
@.str.497 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 16
@.str.498 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 16
@.str.499 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 16
@.str.500 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 16
@.str.501 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 16
@.str.502 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.str.503 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 16
@.str.504 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 16
@.str.505 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 16
@.str.506 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 16
@.str.507 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 16
@.str.508 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 16
@.str.509 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 16
@.str.510 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 16
@.str.511 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 16
@.str.512 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 16
@.str.513 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 16
@.str.514 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 16
@.str.515 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 16
@.str.516 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 16
@.str.517 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 16
@.str.518 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 16
@.str.519 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 16
@.str.520 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 16
@.str.521 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 16
@.str.522 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 16
@.str.523 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 16
@.str.524 = private unnamed_addr constant [39 x i8] c"java/security/GeneralSecurityException\00", align 16
@.str.525 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 16
@.str.526 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 16
@.str.527 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 16
@.str.528 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 16
@.str.529 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@.str.530 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@.str.531 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 16
@.str.532 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 16
@.str.533 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 16
@.str.534 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 16
@.str.535 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.536 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 16
@.str.537 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 16
@.str.538 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 16
@.str.539 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 16
@.str.540 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 16
@.str.541 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.542 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 16
@.str.543 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.544 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 16
@.str.545 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 16
@.str.546 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 16
@.str.547 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 16
@.str.548 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 16
@.str.549 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 16
@.str.550 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 16
@.str.551 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 16
@.str.552 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 16
@.str.553 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.554 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 16
@.str.555 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.556 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 16
@.str.557 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.558 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 16
@.str.559 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 16
@.str.560 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@.str.561 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 16
@.str.562 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 16
@.str.563 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.564 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 16
@.str.565 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 16
@.str.566 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 16
@.str.567 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 16
@.str.568 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 16
@.str.569 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 16
@.str.570 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 16
@.str.571 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@.str.572 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@.str.573 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@.str.574 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 16
@.str.575 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 16
@.str.576 = private unnamed_addr constant [17 x i8] c"java/lang/System\00", align 16
@.str.577 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.578 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@.str.579 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 16
@.str.580 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 16
@.str.581 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@.str.582 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 16
@.str.583 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 16
@.str.584 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 16
@.str.585 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 16
@.str.586 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 16
@.str.587 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@.str.588 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 16
@.str.589 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@.str.590 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 16
@.str.591 = private unnamed_addr constant [32 x i8] c"java/lang/annotation/Annotation\00", align 16
@.str.592 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 16
@.str.593 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 16
@.str.594 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 16
@.str.595 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 16
@.str.596 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 16
@.str.597 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 16
@.str.598 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 16
@.str.599 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 16
@.str.600 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 16
@.str.601 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 16
@.str.602 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 16
@.str.603 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 16
@.str.604 = private unnamed_addr constant [33 x i8] c"kotlin/reflect/KAnnotatedElement\00", align 16
@.str.605 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KCallable\00", align 16
@.str.606 = private unnamed_addr constant [22 x i8] c"kotlin/reflect/KClass\00", align 16
@.str.607 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KClassifier\00", align 16
@.str.608 = private unnamed_addr constant [37 x i8] c"kotlin/reflect/KDeclarationContainer\00", align 16
@.str.609 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KFunction\00", align 16
@.str.610 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KParameter$Kind\00", align 16
@.str.611 = private unnamed_addr constant [26 x i8] c"kotlin/reflect/KParameter\00", align 16
@.str.612 = private unnamed_addr constant [21 x i8] c"kotlin/reflect/KType\00", align 16
@.str.613 = private unnamed_addr constant [30 x i8] c"kotlin/reflect/KTypeParameter\00", align 16
@.str.614 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KTypeProjection\00", align 16
@.str.615 = private unnamed_addr constant [41 x i8] c"kotlin/reflect/KTypeProjection$Companion\00", align 16
@.str.616 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KVariance\00", align 16
@.str.617 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KVisibility\00", align 16
@.str.618 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 16
@.str.619 = private unnamed_addr constant [42 x i8] c"kotlin/jvm/internal/markers/KMappedMarker\00", align 16
@.str.620 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 16
@.str.621 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 16
@.str.622 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 16
@.str.623 = private unnamed_addr constant [25 x i8] c"kotlin/enums/EnumEntries\00", align 16
@.str.624 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 16
@.str.625 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 16
@.str.626 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 16
@.str.627 = private unnamed_addr constant [34 x i8] c"androidx/activity/BackEventCompat\00", align 16
@.str.628 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 16
@.str.629 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 16
@.str.630 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 16
@.str.631 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 16
@.str.632 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 16
@.str.633 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 16
@.str.634 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 16
@.str.635 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 16
@.str.636 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 16
@.str.637 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 16
@.str.638 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 16
@.str.639 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 16
@.str.640 = private unnamed_addr constant [59 x i8] c"plugin/LocalNotification/GeofenceTransitionsIntentReceiver\00", align 16
@.str.641 = private unnamed_addr constant [52 x i8] c"plugin/LocalNotification/NotificationActionReceiver\00", align 16
@.str.642 = private unnamed_addr constant [48 x i8] c"plugin/LocalNotification/ScheduledAlarmReceiver\00", align 16
@.str.643 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 16
@.str.644 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 16
@.str.645 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 16
@.str.646 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 16
@.str.647 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 16
@.str.648 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 16
@.str.649 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 16
@.str.650 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 16
@.str.651 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 16
@.str.652 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 16
@.str.653 = private unnamed_addr constant [34 x i8] c"com/google/android/gms/tasks/Task\00", align 16
@.str.654 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/tasks/TaskCompletionSource\00", align 16
@.str.655 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/CancellationToken\00", align 16
@.str.656 = private unnamed_addr constant [42 x i8] c"com/google/android/gms/tasks/Continuation\00", align 16
@.str.657 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCanceledListener\00", align 16
@.str.658 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCompleteListener\00", align 16
@.str.659 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnFailureListener\00", align 16
@.str.660 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnSuccessListener\00", align 16
@.str.661 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/tasks/OnTokenCanceledListener\00", align 16
@.str.662 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/tasks/SuccessContinuation\00", align 16
@.str.663 = private unnamed_addr constant [54 x i8] c"crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1\00", align 16
@.str.664 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 16
@.str.665 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 16
@.str.666 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 16
@.str.667 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 16
@.str.668 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 16
@.str.669 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 16
@.str.670 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 16
@.str.671 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 16
@.str.672 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 16
@.str.673 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 16
@.str.674 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 16
@.str.675 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 16
@.str.676 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 16
@.str.677 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 16
@.str.678 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 16
@.str.679 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 16
@.str.680 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 16
@.str.681 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 16
@.str.682 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 16
@.str.683 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 16
@.str.684 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 16
@.str.685 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 16
@.str.686 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 16
@.str.687 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 16
@.str.688 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 16
@.str.689 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 16
@.str.690 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 16
@.str.691 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 16
@.str.692 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 16
@.str.693 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 16
@.str.694 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 16
@.str.695 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 16
@.str.696 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 16
@.str.697 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 16
@.str.698 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 16
@.str.699 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 16
@.str.700 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 16
@.str.701 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 16
@.str.702 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 16
@.str.703 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 16
@.str.704 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 16
@.str.705 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 16
@.str.706 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 16
@.str.707 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 16
@.str.708 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 16
@.str.709 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 16
@.str.710 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 16
@.str.711 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 16
@.str.712 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 16
@.str.713 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 16
@.str.714 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 16
@.str.715 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 16
@.str.716 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 16
@.str.717 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 16
@.str.718 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 16
@.str.719 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 16
@.str.720 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 16
@.str.721 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 16
@.str.722 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 16
@.str.723 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 16
@.str.724 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 16
@.str.725 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 16
@.str.726 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 16
@.str.727 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 16
@.str.728 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 16
@.str.729 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 16
@.str.730 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 16
@.str.731 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 16
@.str.732 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 16
@.str.733 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 16
@.str.734 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 16
@.str.735 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 16
@.str.736 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 16
@.str.737 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 16
@.str.738 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 16
@.str.739 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 16
@.str.740 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 16
@.str.741 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 16
@.str.742 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 16
@.str.743 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 16
@.str.744 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 16
@.str.745 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 16
@.str.746 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 16
@.str.747 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 16
@.str.748 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 16
@.str.749 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 16
@.str.750 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 16
@.str.751 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 16
@.str.752 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 16
@.str.753 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 16
@.str.754 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 16
@.str.755 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 16
@.str.756 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 16
@.str.757 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 16
@.str.758 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 16
@.str.759 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 16
@.str.760 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 16
@.str.761 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 16
@.str.762 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 16
@.str.763 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 16
@.str.764 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 16
@.str.765 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 16
@.str.766 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 16
@.str.767 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 16
@.str.768 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 16
@.str.769 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 16
@.str.770 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 16
@.str.771 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 16
@.str.772 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 16
@.str.773 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 16
@.str.774 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 16
@.str.775 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 16
@.str.776 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 16
@.str.777 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 16
@.str.778 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 16
@.str.779 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 16
@.str.780 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 16
@.str.781 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 16
@.str.782 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 16
@.str.783 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 16
@.str.784 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 16
@.str.785 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 16
@.str.786 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 16
@.str.787 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 16
@.str.788 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 16
@.str.789 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 16
@.str.790 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 16
@.str.791 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 16
@.str.792 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 16
@.str.793 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 16
@.str.794 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 16
@.str.795 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 16
@.str.796 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 16
@.str.797 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 16
@.str.798 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 16
@.str.799 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 16
@.str.800 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 16
@.str.801 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 16
@.str.802 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 16
@.str.803 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 16
@.str.804 = private unnamed_addr constant [35 x i8] c"crc64cd5e4cacae602ef1/MainActivity\00", align 16
@.str.805 = private unnamed_addr constant [38 x i8] c"crc64cd5e4cacae602ef1/MainApplication\00", align 16
@.str.806 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 16
@.str.807 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 16
@.str.808 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 16
@.str.809 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 16
@.str.810 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 16
@.str.811 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 16
@.str.812 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 16
@.str.813 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 16
@.str.814 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 16
@.str.815 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 16
@.str.816 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 16
@.str.817 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 16
@.str.818 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/ConnectionResult\00", align 16
@.str.819 = private unnamed_addr constant [73 x i8] c"com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable\00", align 16
@.str.820 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/common/api/ResultCallback\00", align 16
@.str.821 = private unnamed_addr constant [43 x i8] c"com/google/android/gms/common/api/Response\00", align 16
@.str.822 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultCallbacks\00", align 16
@.str.823 = private unnamed_addr constant [40 x i8] c"com/google/android/gms/common/api/Scope\00", align 16
@.str.824 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/common/api/Status\00", align 16
@.str.825 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 16
@.str.826 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 16
@.str.827 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 16
@.str.828 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 16
@.str.829 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 16
@.str.830 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 16
@.str.831 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 16
@.str.832 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 16
@.str.833 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 16
@.str.834 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 16
@.str.835 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 16
@.str.836 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 16
@.str.837 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 16
@.str.838 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 16
@.str.839 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 16
@.str.840 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 16
@.str.841 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 16
@.str.842 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 16
@.str.843 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 16
@.str.844 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 16
@.str.845 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 16
@.str.846 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 16
@.str.847 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 16
@.str.848 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 16
@.str.849 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 16
@.str.850 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 16
@.str.851 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 16
@.str.852 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 16
@.str.853 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 16
@.str.854 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 16
@.str.855 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 16
@.str.856 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 16
@.str.857 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 16
@.str.858 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 16
@.str.859 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 16
@.str.860 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 16
@.str.861 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 16
@.str.862 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 16
@.str.863 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 16
@.str.864 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 16
@.str.865 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 16
@.str.866 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 16
@.str.867 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 16
@.str.868 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 16
@.str.869 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 16
@.str.870 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 16
@.str.871 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 16
@.str.872 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 16
@.str.873 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 16
@.str.874 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 16
@.str.875 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 16
@.str.876 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 16
@.str.877 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 16
@.str.878 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 16
@.str.879 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 16
@.str.880 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 16
@.str.881 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 16
@.str.882 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationServices\00", align 16
@.str.883 = private unnamed_addr constant [39 x i8] c"crc64e95e69e34d869711/LocationCallback\00", align 16
@.str.884 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/location/FusedLocationProviderClient\00", align 16
@.str.885 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/GeofencingClient\00", align 16
@.str.886 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/SettingsClient\00", align 16
@.str.887 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/CurrentLocationRequest\00", align 16
@.str.888 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/location/DeviceOrientation\00", align 16
@.str.889 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/DeviceOrientationRequest\00", align 16
@.str.890 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/location/GeofencingRequest\00", align 16
@.str.891 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/location/GeofencingRequest$Builder\00", align 16
@.str.892 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/location/DeviceOrientationListener\00", align 16
@.str.893 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/FusedLocationProviderApi\00", align 16
@.str.894 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/location/FusedOrientationProviderClient\00", align 16
@.str.895 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/Geofence$Builder\00", align 16
@.str.896 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/location/Geofence\00", align 16
@.str.897 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/location/GeofencingApi\00", align 16
@.str.898 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationListener\00", align 16
@.str.899 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/location/SettingsApi\00", align 16
@.str.900 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/location/LastLocationRequest\00", align 16
@.str.901 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/location/LocationAvailability\00", align 16
@.str.902 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationCallback\00", align 16
@.str.903 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/location/LocationRequest\00", align 16
@.str.904 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/LocationResult\00", align 16
@.str.905 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/location/LocationSettingsRequest\00", align 16
@.str.906 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/LocationSettingsResponse\00", align 16
@.str.907 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsResult\00", align 16
@.str.908 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsStates\00", align 16
@.str.909 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 16
@.str.910 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 16
@.str.911 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 16
@.str.912 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 16
@.str.913 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 16
@.str.914 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 16
@.str.915 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 16
@.str.916 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 16
@.str.917 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 16
@.str.918 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 16
@.str.919 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 16
@.str.920 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 16
@.str.921 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 16
@.str.922 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 16
@.str.923 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 16
@.str.924 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 16
@.str.925 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 16
@.str.926 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 16
@.str.927 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 16
@.str.928 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/internal/ApiKey\00", align 16
@.str.929 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/internal/ConnectionCallbacks\00", align 16
@.str.930 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/OnConnectionFailedListener\00", align 16
@.str.931 = private unnamed_addr constant [68 x i8] c"com/google/android/gms/common/api/internal/SignInConnectionListener\00", align 16
@.str.932 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder\00", align 16
@.str.933 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey\00", align 16
@.str.934 = private unnamed_addr constant [67 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$Notifier\00", align 16
@.str.935 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/GoogleApiClient\00", align 16
@.str.936 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks\00", align 16
@.str.937 = private unnamed_addr constant [77 x i8] c"com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener\00", align 16
@.str.938 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/common/api/Api\00", align 16
@.str.939 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/common/api/Api$AbstractClientBuilder\00", align 16
@.str.940 = private unnamed_addr constant [51 x i8] c"com/google/android/gms/common/api/Api$AnyClientKey\00", align 16
@.str.941 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/common/api/Api$BaseClientBuilder\00", align 16
@.str.942 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/Api$ClientKey\00", align 16
@.str.943 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/common/api/HasApiKey\00", align 16
@.str.944 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/PendingResult\00", align 16
@.str.945 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/PendingResult$StatusListener\00", align 16
@.str.946 = private unnamed_addr constant [79 x i8] c"mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor\00", align 16
@.str.947 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultTransform\00", align 16
@.str.948 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/common/api/TransformedResult\00", align 16
@.str.949 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 16
@.str.950 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 16
@.str.951 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 16
@.str.952 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 16
@.str.953 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 16
@.str.954 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 16
@.str.955 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 16
@.str.956 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 16
@.str.957 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 16
@.str.958 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 16
@.str.959 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 16
@.str.960 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 16
@.str.961 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 16
@.str.962 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 16
@.str.963 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 16
@.str.964 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 16
@.str.965 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 16
@.str.966 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 16
@.str.967 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 16
@.str.968 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 16
@.str.969 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 16
@.str.970 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 16
@.str.971 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 16
@.str.972 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 16
@.str.973 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 16
@.str.974 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 16
@.str.975 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 16
@.str.976 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 16
@.str.977 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 16
@.str.978 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 16
@.str.979 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 16
@.str.980 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 16
@.str.981 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 16
@.str.982 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 16
@.str.983 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 16
@.str.984 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 16
@.str.985 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 16
@.str.986 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 16
@.str.987 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 16
@.str.988 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 16
@.str.989 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 16
@.str.990 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 16
@.str.991 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 16
@.str.992 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 16
@.str.993 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 16
@.str.994 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 16
@.str.995 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 16
@.str.996 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 16
@.str.997 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 16
@.str.998 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 16
@.str.999 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 16
@.str.1000 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 16
@.str.1001 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 16
@.str.1002 = private unnamed_addr constant [55 x i8] c"androidx/versionedparcelable/CustomVersionedParcelable\00", align 16
@.str.1003 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 16
@.str.1004 = private unnamed_addr constant [52 x i8] c"androidx/security/crypto/EncryptedSharedPreferences\00", align 16
@.str.1005 = private unnamed_addr constant [76 x i8] c"androidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme\00", align 16
@.str.1006 = private unnamed_addr constant [78 x i8] c"androidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme\00", align 16
@.str.1007 = private unnamed_addr constant [35 x i8] c"androidx/security/crypto/MasterKey\00", align 16
@.str.1008 = private unnamed_addr constant [43 x i8] c"androidx/security/crypto/MasterKey$Builder\00", align 16
@.str.1009 = private unnamed_addr constant [45 x i8] c"androidx/security/crypto/MasterKey$KeyScheme\00", align 16
@.str.1010 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 16
@.str.1011 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 16
@.str.1012 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 16
@.str.1013 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 16
@.str.1014 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 16
@.str.1015 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 16
@.str.1016 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 16
@.str.1017 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 16
@.str.1018 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 16
@.str.1019 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 16
@.str.1020 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 16
@.str.1021 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 16
@.str.1022 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 16
@.str.1023 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 16
@.str.1024 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 16
@.str.1025 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 16
@.str.1026 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 16
@.str.1027 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 16
@.str.1028 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 16
@.str.1029 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 16
@.str.1030 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 16
@.str.1031 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 16
@.str.1032 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 16
@.str.1033 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 16
@.str.1034 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 16
@.str.1035 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 16
@.str.1036 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 16
@.str.1037 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 16
@.str.1038 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 16
@.str.1039 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 16
@.str.1040 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 16
@.str.1041 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 16
@.str.1042 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 16
@.str.1043 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 16
@.str.1044 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 16
@.str.1045 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 16
@.str.1046 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 16
@.str.1047 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 16
@.str.1048 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 16
@.str.1049 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 16
@.str.1050 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 16
@.str.1051 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 16
@.str.1052 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 16
@.str.1053 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 16
@.str.1054 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 16
@.str.1055 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 16
@.str.1056 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 16
@.str.1057 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 16
@.str.1058 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 16
@.str.1059 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 16
@.str.1060 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 16
@.str.1061 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 16
@.str.1062 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 16
@.str.1063 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 16
@.str.1064 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 16
@.str.1065 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 16
@.str.1066 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 16
@.str.1067 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 16
@.str.1068 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 16
@.str.1069 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 16
@.str.1070 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 16
@.str.1071 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 16
@.str.1072 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 16
@.str.1073 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 16
@.str.1074 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 16
@.str.1075 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 16
@.str.1076 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 16
@.str.1077 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 16
@.str.1078 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 16
@.str.1079 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 16
@.str.1080 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 16
@.str.1081 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 16
@.str.1082 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 16
@.str.1083 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 16
@.str.1084 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 16
@.str.1085 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 16
@.str.1086 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 16
@.str.1087 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 16
@.str.1088 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 16
@.str.1089 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 16
@.str.1090 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 16
@.str.1091 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 16
@.str.1092 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 16
@.str.1093 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 16
@.str.1094 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 16
@.str.1095 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 16
@.str.1096 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 16
@.str.1097 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 16
@.str.1098 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 16
@.str.1099 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 16
@.str.1100 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 16
@.str.1101 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 16
@.str.1102 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 16
@.str.1103 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 16
@.str.1104 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 16
@.str.1105 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 16
@.str.1106 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 16
@.str.1107 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 16
@.str.1108 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 16
@.str.1109 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 16
@.str.1110 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 16
@.str.1111 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 16
@.str.1112 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 16
@.str.1113 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 16
@.str.1114 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 16
@.str.1115 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 16
@.str.1116 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 16
@.str.1117 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 16
@.str.1118 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 16
@.str.1119 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 16
@.str.1120 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 16
@.str.1121 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 16
@.str.1122 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 16
@.str.1123 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 16
@.str.1124 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 16
@.str.1125 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 16
@.str.1126 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 16
@.str.1127 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 16
@.str.1128 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 16
@.str.1129 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 16
@.str.1130 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 16
@.str.1131 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 16
@.str.1132 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 16

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 16
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.AndroidX.Lifecycle.Common.Jvm\00", align 16
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 16
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 16
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 16
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 16
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 16
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 16
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 16
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 16
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 16
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [25 x i8] c"Plugin.LocalNotification\00", align 16
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 16
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 16
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 16
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [33 x i8] c"Xamarin.GooglePlayServices.Tasks\00", align 16
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 16
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 16
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 16
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [13 x i8] c"TaskReminder\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [45 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel.Android\00", align 16
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Collection.Jvm\00", align 16
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 16
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Basement\00", align 16
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 16
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 16
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Location\00", align 16
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 16
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.GooglePlayServices.Base\00", align 16
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 16
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 16
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 16
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 16
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 16
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.VersionedParcelable\00", align 16
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 16
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Security.SecurityCrypto\00", align 16
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 16
@.TypeMapModule.40_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
