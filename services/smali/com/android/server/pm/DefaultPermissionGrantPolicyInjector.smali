.class public Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static INCALL_UI:Ljava/lang/String; = null

.field private static final MIUI_APPS:[Ljava/lang/String;

.field private static final MIUI_SYSTEM_APPS:[Ljava/lang/String;

.field private static final RUNTIME_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUNTIME_PERMSSION_PROPTERY:Ljava/lang/String; = "persist.sys.runtime_perm"

.field private static final STATE_DEF:I = -0x1

.field private static final STATE_GRANT:I = 0x0

.field private static final STATE_REVOKE:I = 0x1

.field private static sTempPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "com.android.incallui"

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.miui.core"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.soundrecorder"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.android.fileexplorer"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.android.calendar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.android.deskclock"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.android.browser"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.camera"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.mms"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.xmsf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.quicksearchbox"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.home"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.securityadd"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.guardprovider"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.providers.downloads"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.cloudservice"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.cleanmaster.sdk"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.incallui"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.trafficctr.miui"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.opera.max.oem.xiaomi"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.account"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.contacts"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.cloudbackup"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.voip"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.finddevice"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.payment"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.virtualsim"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.gallery"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.compass"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.bugreport"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.mipub"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.backup"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.midrop"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.analytics"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.systemAdSolution"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.msa.global"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.metoknlp"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.htmlviewer"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.simactivate.service"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.packageinstaller"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.packageinstaller"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.extraphoto"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.hybrid"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.camera.parallelservice"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.voiceassist"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.google.android.setupwizard"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "pl.zdunex25.updater"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.thememanager"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.miui.barcodescanner"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.miui.dmregservice"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.miui.notes"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.miui.weather2"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.fmradio"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.email"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.video"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.player"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.market"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.jr"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.vip"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mi.vtalk"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mipay.wallet"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.tsmclient"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.simalliance.openmobileapi.service"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.channel"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.yellowpage"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.o2o"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.miuibbs"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.pass"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.mircs"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.vending"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.calculator2"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.scanner"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.milink.service"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.sysbase"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.calculator"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.milivetalk"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.smsextra"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.storagemonitor"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.oga"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.contentextension"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.personalassistant"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.gamecenter.pad"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.voicetrigger"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.vipaccount"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.greenguard"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mobiletools.systemhelper"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.fm"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static grantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    return-void
.end method

.method private static grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v0, v4, p1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_21

    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, p1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_21

    :cond_3c
    return-void
.end method

.method public static grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V
    .registers 9

    const-string/jumbo v1, "com.miui.packageinstaller"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_2a
    const-string/jumbo v5, "com.miui.packageinstaller"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_1e

    :catch_32
    move-exception v0

    const-string/jumbo v5, "DefaultPermissionGrantPolicyInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "grantMiuiPackageInstallerPermssions error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_52
    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V

    :cond_11
    return-void
.end method

.method private static grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v8, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_d
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_34

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_34
    :try_start_34
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    if-nez v0, :cond_5a

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5a
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v5

    packed-switch v5, :pswitch_data_74

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v9, 0x0

    invoke-virtual {v7, p2, v9}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V
    :try_end_6f
    .catchall {:try_start_34 .. :try_end_6f} :catchall_31

    monitor-exit v8

    return-void

    :pswitch_71
    monitor-exit v8

    return-void

    nop

    :pswitch_data_74
    .packed-switch -0x1
        :pswitch_71
    .end packed-switch
.end method

.method private static grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_25

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_25

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_ce

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    monitor-exit v17

    return-void

    :cond_27
    :try_start_27
    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v14}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v16

    if-eqz v16, :cond_67

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_67

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_ce

    move-result v2

    if-eqz v2, :cond_50

    monitor-exit v17

    return-void

    :cond_50
    :try_start_50
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v15, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12, v15}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    :cond_67
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_71
    if-ge v13, v11, :cond_e0

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v12, :cond_86

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_86

    :cond_83
    :goto_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    :cond_86
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_9c

    if-eqz p4, :cond_83

    :cond_9c
    const/16 v8, 0x14

    and-int/lit8 v2, v9, 0x14

    if-nez v2, :cond_83

    if-nez p5, :cond_d1

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d1

    :goto_b1
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v5, 0x20

    if-eqz p2, :cond_db

    const/16 v5, 0x30

    :cond_c3
    :goto_c3
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    move v6, v5

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_cd
    .catchall {:try_start_50 .. :try_end_cd} :catchall_ce

    goto :goto_83

    :catchall_ce
    move-exception v2

    monitor-exit v17

    throw v2

    :cond_d1
    :try_start_d1
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    goto :goto_b1

    :cond_db
    if-eqz p3, :cond_c3

    const/16 v5, 0x22

    goto :goto_c3

    :cond_e0
    if-nez p5, :cond_101

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_101

    const-string/jumbo v2, "1"

    const-string/jumbo v4, "ro.miui.has_gmscore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_101
    .catchall {:try_start_d1 .. :try_end_101} :catchall_ce

    :cond_101
    monitor-exit v17

    return-void
.end method

.method private static realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 14

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_3
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_15

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    aget-object v1, v0, v11

    move-object v0, p0

    move v3, v2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_15
    const/4 v11, 0x0

    :goto_16
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_2a

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    aget-object v6, v0, v11

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v9, v2

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public static revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V
    .registers 14

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, "1"

    const-string/jumbo v11, "ro.miui.has_gmscore"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_19

    :cond_18
    return-void

    :cond_19
    :try_start_19
    sget-object v10, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_95

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const-string/jumbo v10, "com.google.android.packageinstaller"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v10, "com.google.android.gms"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    const-string/jumbo v10, "android.permission.RECORD_AUDIO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_44

    const-string/jumbo v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_68} :catch_90

    move-result v10

    if-nez v10, :cond_44

    :cond_6b
    const/4 v10, 0x0

    :try_start_6c
    invoke-virtual {p0, v8, v2, v10}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_44

    :catch_70
    move-exception v0

    :try_start_71
    const-string/jumbo v10, "DefaultPermissionGrantPolicyInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "revokeAllPermssions error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_90

    goto :goto_44

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    return-void

    :cond_95
    :try_start_95
    const-string/jumbo v1, "com.miui.packageinstaller"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ad
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b9} :catch_90

    :try_start_b9
    const-string/jumbo v10, "com.miui.packageinstaller"

    const/4 v11, 0x0

    invoke-static {v10, v4, v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c0} :catch_c1

    goto :goto_ad

    :catch_c1
    move-exception v0

    :try_start_c2
    const-string/jumbo v10, "DefaultPermissionGrantPolicyInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "revokeRuntimePermissionInternal error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e0} :catch_90

    goto :goto_ad
.end method

.method private static revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_9
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_30

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_30
    :try_start_30
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    if-nez v0, :cond_56

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown permission: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_56
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/SettingBase;

    if-nez v3, :cond_76

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_76
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    :try_end_7d
    .catchall {:try_start_30 .. :try_end_7d} :catchall_2d

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_83

    monitor-exit v6

    return-void

    :cond_83
    :try_start_83
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v7, 0x1

    invoke-virtual {v5, p2, v7}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_2d

    monitor-exit v6

    return-void
.end method

.method public static setCoreRuntimePermissionEnabled(ZII)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    if-eqz p0, :cond_1a

    invoke-static {v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    const-string/jumbo v1, "persist.sys.runtime_perm"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const-string/jumbo v1, "persist.sys.runtime_perm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
