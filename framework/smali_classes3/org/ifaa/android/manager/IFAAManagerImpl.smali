.class public Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManagerV3;
.source "IFAAManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IFAAManagerImpl$1;,
        Lorg/ifaa/android/manager/IFAAManagerImpl$2;
    }
.end annotation


# static fields
.field private static final CODE_PROCESS_CMD:I = 0x1

.field private static final DEBUG:Z = false

.field private static final IFAA_TYPE_FINGER:I = 0x1

.field private static final IFAA_TYPE_IRIS:I = 0x2

.field private static final IFAA_TYPE_SENSOR_FOD:I = 0x10

.field private static volatile INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

.field private static final TAG:Ljava/lang/String; = "IfaaManagerImpl"

.field private static ifaaconn:Landroid/content/ServiceConnection; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient; = null

.field private static final mFingerActName:Ljava/lang/String; = "com.android.settings.NewFingerprintActivity"

.field private static final mFingerPackName:Ljava/lang/String; = "com.android.settings"

.field private static final mIfaaActName:Ljava/lang/String; = "org.ifaa.android.manager.IFAAService"

.field private static final mIfaaInterfaceDesc:Ljava/lang/String; = "org.ifaa.android.manager.IIFAAService"

.field private static final mIfaaPackName:Ljava/lang/String; = "com.tencent.soter.soterserver"

.field private static mService:Landroid/os/IBinder; = null

.field private static final seperate:Ljava/lang/String; = ","


# instance fields
.field private mDevModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get2()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 1

    sput-object p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->initService()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl$1;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl$1;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl$2;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl$2;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaconn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/IFAAManagerV3;
    .registers 4

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1e

    const-class v1, Lorg/ifaa/android/manager/IFAAManagerImpl;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1d

    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1d

    sput-object p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->initService()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v1

    :cond_1e
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initExtString()Ljava/lang/String;
    .registers 12

    const-string/jumbo v1, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, ""

    const-string/jumbo v6, ""

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_94

    const-string/jumbo v8, "persist.vendor.sys.fp.fod.location.X_Y"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "persist.vendor.sys.fp.fod.size.width_height"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2d
    :try_start_2d
    invoke-direct {p0, v7}, Lorg/ifaa/android/manager/IFAAManagerImpl;->validateVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    invoke-direct {p0, v6}, Lorg/ifaa/android/manager/IFAAManagerImpl;->validateVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "startX"

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "startY"

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "height"

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "navConflict"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v8, "type"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "fullView"

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_92} :catch_cf

    move-result-object v1

    :goto_93
    return-object v1

    :cond_94
    const-string/jumbo v8, "persist.sys.fp.fod.location.X_Y"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "persist.sys.fp.fod.size.width_height"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    :cond_a9
    :try_start_a9
    const-string/jumbo v8, "IfaaManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initExtString invalidate, xy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " wh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ce} :catch_cf

    goto :goto_93

    :catch_cf
    move-exception v0

    const-string/jumbo v8, "IfaaManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception , xy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " wh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93
.end method

.method private static initService()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.tencent.soter.soterserver"

    const-string/jumbo v2, "org.ifaa.android.manager.IFAAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaconn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "IfaaManagerImpl"

    const-string/jumbo v2, "cannot bind service org.ifaa.android.manager.IFAAService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method private validateVal(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    if-nez v1, :cond_34

    const-string/jumbo v1, "finger_alipay_ifaa_model"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    :cond_34
    :goto_34
    const-string/jumbo v1, "IfaaManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceModel devcieModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-object v1

    :cond_53
    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    goto :goto_34
.end method

.method public getExtInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerImpl;->initExtString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_71

    const-string/jumbo v3, "persist.vendor.sys.pay.ifaa"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "persist.vendor.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    const-string/jumbo v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    and-int/lit8 v2, v1, 0x2

    :goto_28
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    sget-boolean v3, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIsFod:Z

    if-eqz v3, :cond_33

    or-int/lit8 v2, v2, 0x10

    :cond_33
    const-string/jumbo v3, "IfaaManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSupportBIOTypes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIsFod:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_71
    const-string/jumbo v3, "persist.sys.ifaa"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "persist.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_83
    and-int/lit8 v2, v1, 0x3

    goto :goto_28
.end method

.method public getVersion()I
    .registers 4

    const-string/jumbo v0, "IfaaManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVersion sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ifaaVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIfaaVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIfaaVer:I

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .registers 24

    const-string/jumbo v18, "IfaaManagerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processCmdV2 sdk:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x1c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_df

    const/16 v14, 0xa

    move v15, v14

    :goto_29
    add-int/lit8 v14, v15, -0x1

    if-lez v15, :cond_152

    sget-object v18, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    if-eqz v18, :cond_98

    sget-object v18, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    invoke-interface/range {v18 .. v18}, Landroid/os/IBinder;->pingBinder()Z

    move-result v18

    if-eqz v18, :cond_98

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    :try_start_41
    const-string/jumbo v18, "org.ifaa.android.manager.IIFAAService"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    sget-object v18, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v5, v13, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_63} :catch_6b
    .catchall {:try_start_41 .. :try_end_63} :catchall_90

    move-result-object v18

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    return-object v18

    :catch_6b
    move-exception v6

    :try_start_6c
    const-string/jumbo v18, "IfaaManagerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processCmdV2 transact failed. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_90

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    :goto_8e
    move v15, v14

    goto :goto_29

    :catchall_90
    move-exception v18

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v18

    :cond_98
    const-string/jumbo v18, "IfaaManagerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processCmdV2 waiting ifaaService, remain: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time(s)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x1e

    :try_start_bd
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_8e

    :catch_c1
    move-exception v7

    const-string/jumbo v18, "IfaaManagerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "processCmdV2 InterruptedException while waiting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :cond_df
    new-instance v8, Landroid/os/HwParcel;

    invoke-direct {v8}, Landroid/os/HwParcel;-><init>()V

    :try_start_e4
    const-string/jumbo v18, "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

    const-string/jumbo v19, "default"

    invoke-static/range {v18 .. v19}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v10

    if-eqz v10, :cond_14f

    new-instance v9, Landroid/os/HwParcel;

    invoke-direct {v9}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v18, "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Landroid/os/HwBlob;->wrapArray([B)[Ljava/lang/Byte;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v9, v8, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v8}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v9}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v8}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v4, v12, [B

    const/4 v11, 0x0

    :goto_138
    if-ge v11, v12, :cond_14b

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Byte;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->byteValue()B

    move-result v18

    aput-byte v18, v4, v11
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_148} :catch_15e
    .catchall {:try_start_e4 .. :try_end_148} :catchall_17f

    add-int/lit8 v11, v11, 0x1

    goto :goto_138

    :cond_14b
    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    return-object v4

    :cond_14f
    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    :cond_152
    :goto_152
    const-string/jumbo v18, "IfaaManagerImpl"

    const-string/jumbo v19, "processCmdV2, return null"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    return-object v18

    :catch_15e
    move-exception v6

    :try_start_15f
    const-string/jumbo v18, "IfaaManagerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "transact failed. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17b
    .catchall {:try_start_15f .. :try_end_17b} :catchall_17f

    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    goto :goto_152

    :catchall_17f
    move-exception v18

    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    throw v18
.end method

.method public setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .registers 8

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v2, p2, :cond_1b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.NewFingerprintActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    :cond_1b
    const-string/jumbo v2, "IfaaManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBIOManager authType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
