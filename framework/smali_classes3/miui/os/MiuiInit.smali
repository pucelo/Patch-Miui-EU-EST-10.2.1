.class public Lmiui/os/MiuiInit;
.super Ljava/lang/Object;
.source "MiuiInit.java"


# static fields
.field public static final ACTION_MIUI_INIT_COMPLETED:Ljava/lang/String; = "miui.intent.action.MIUI_INIT_COMPLETED"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiInit"

.field private static final TAG:Ljava/lang/String; = "MiuiInit"

.field private static sNeedAspectSettings:Z

.field private static sNeedAspectSettingsInited:Z

.field private static sService:Lmiui/os/IMiuiInit;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFactoryReset(Z)V
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->doFactoryReset(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when removing preinstall app history file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static getAspectRatio(Ljava/lang/String;)F
    .registers 6

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz p0, :cond_c

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    :cond_c
    return v4

    :cond_d
    :try_start_d
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getAspectRatio(Ljava/lang/String;)F
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static getCustVariants()[Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->getCustVariants()[Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when fetch cust variants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultAspectType(Ljava/lang/String;)I
    .registers 6

    const/4 v4, 0x0

    if-eqz p0, :cond_b

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    :cond_b
    return v4

    :cond_c
    :try_start_c
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getDefaultAspectType(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getDefaultAspectType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when checking preinstalled channel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when checking preinstalled app path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getNotchConfig(Ljava/lang/String;)I
    .registers 6

    const/4 v4, 0x0

    if-eqz p0, :cond_9

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    :cond_9
    return v4

    :cond_a
    :try_start_a
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getNotchConfig(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    return v1

    :catch_13
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getNotchConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v0

    const-string/jumbo v2, "MiuiInit"

    const-string/jumbo v3, "Occur RemoteException when get preinstalled package version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v2, -0x1

    return v2
.end method

.method private static declared-synchronized getService()Lmiui/os/IMiuiInit;
    .registers 3

    const-class v2, Lmiui/os/MiuiInit;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    if-nez v1, :cond_14

    const-string/jumbo v1, "MiuiInit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/IMiuiInit$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;

    move-result-object v1

    sput-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    :cond_14
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v2

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/os/IMiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    const-string/jumbo v2, "MiuiInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Occur RemoteException when init cust environment for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static installPreinstallApp()Z
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->installPreinstallApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v1, 0x1

    return v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when install preinstall app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v0

    const-string/jumbo v2, "MiuiInit"

    const-string/jumbo v3, "Occur RemoteException when checking preinstalled package"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method public static isRestrictAspect(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    :try_start_13
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0}, Lmiui/os/IMiuiInit;->isRestrictAspect(Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result v1

    return v1

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "MiuiInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Occur RemoteException when isRestrictAspect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static needAspectSettings()Z
    .registers 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    if-nez v2, :cond_24

    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sput-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    :goto_18
    sget-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    if-eqz v2, :cond_20

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_20
    sput-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    sput-boolean v4, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    :cond_24
    sget-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    return v1

    :cond_27
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sput-boolean v4, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_18

    :cond_33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_18
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->removeFromPreinstallList(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when removing from preinstall list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 6

    if-eqz p0, :cond_8

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    :cond_8
    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->setNotchSpecialMode(Ljava/lang/String;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when setNotchSpecailMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static setRestrictAspect(Ljava/lang/String;Z)V
    .registers 6

    if-eqz p0, :cond_a

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->setRestrictAspect(Ljava/lang/String;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "MiuiInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when setRestrictAspect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
