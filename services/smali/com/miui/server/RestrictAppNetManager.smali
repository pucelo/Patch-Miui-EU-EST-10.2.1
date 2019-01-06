.class public Lcom/miui/server/RestrictAppNetManager;
.super Ljava/lang/Object;
.source "RestrictAppNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/RestrictAppNetManager$1;
    }
.end annotation


# static fields
.field private static final RULE_ALLOW:I = 0x0

.field private static final RULE_RESTRICT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictAppNetManager"

.field private static final TYPE_ALL:I = 0x3

.field private static final URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

.field private static mAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private static sReleasedDeviceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/android/server/MiuiNetworkManagementService;


# direct methods
.method static synthetic -get0()Lcom/android/server/MiuiNetworkManagementService;
    .registers 1

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->isAllowAccessInternet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->updateRestrictAppNetProp(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "content://com.android.settings.cloud.CloudSettings/device_released"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "tissot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "gemini"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "natrium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "jason"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "vince"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "clover"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/server/RestrictAppNetManager$1;

    invoke-direct {v0}, Lcom/miui/server/RestrictAppNetManager$1;-><init>()V

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c

    return v3

    :catch_c
    move-exception v1

    const-string/jumbo v3, "RestrictAppNetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not find packageName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3
.end method

.method static init(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v1, "persist.sys.released"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "RestrictAppNetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init released : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_25

    return-void

    :cond_25
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string/jumbo v1, "RestrictAppNetManager"

    const-string/jumbo v2, "Device is released"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.released"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_52

    const-string/jumbo v1, "persist.sys.released"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v1

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver1(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerAppInstallReceiver(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.eembc.coremark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.appems.hawkeye"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tyyj89.androidsuperinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ft1gp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.k6t2we.b4zyjdjv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.myapp.dongxie_app1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.shoujijiance.zj"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.qrj.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.appems.testonetest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V

    return-void
.end method

.method private static isAllowAccessInternet(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v1, "persist.sys.released"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    return v1

    :cond_10
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method private static registerAppInstallReceiver(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static registerCloudDataObserver(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/server/RestrictAppNetManager$2;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/server/RestrictAppNetManager$2;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static registerCloudDataObserver1(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

    new-instance v2, Lcom/miui/server/RestrictAppNetManager$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/server/RestrictAppNetManager$3;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static updateFirewallRule(Landroid/content/Context;I)V
    .registers 8

    sget-object v3, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-eqz v3, :cond_41

    sget-object v3, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    if-eqz v3, :cond_41

    const-string/jumbo v3, "RestrictAppNetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFirewallRule : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/server/RestrictAppNetManager;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_28

    sget-object v3, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v2, p1, v4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    goto :goto_28

    :cond_41
    return-void
.end method

.method private static updateRestrictAppNetProp(Landroid/content/Context;)V
    .registers 9

    :try_start_0
    const-string/jumbo v6, "persist.sys.released"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5f

    const-string/jumbo v6, "RestrictAppNetManager"

    const-string/jumbo v7, "updateRestrictAppNetProp"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "RestrictAppControl"

    invoke-static {v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_29

    :cond_28
    return-void

    :cond_29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    const-string/jumbo v6, "released"

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "persist.sys.released"

    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v4

    const-string/jumbo v6, "RestrictAppNetManager"

    const-string/jumbo v7, "update released prop exception"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5f
    return-void
.end method
