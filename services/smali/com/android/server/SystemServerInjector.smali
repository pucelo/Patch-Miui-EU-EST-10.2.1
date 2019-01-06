.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final RUNTIME_REBOOT_PROPERTIY:Ljava/lang/String; = "sys.miui.runtime.reboot"

.field private static final TAG:Ljava/lang/String; = "SystemServerI"

.field private static sVersionPolicyDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-direct {v0}, Lcom/android/server/SystemLogSwitchesConfigReceiver;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDeviceName(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ru"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .registers 15

    const-string/jumbo v10, "security"

    new-instance v11, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v11, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v10, "MiuiInit"

    new-instance v11, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v11, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v10, "MiuiBackup"

    new-instance v11, Lcom/miui/server/BackupManagerService;

    invoke-direct {v11, p0}, Lcom/miui/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v10, "locationpolicy"

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v10, "perfshielder"

    new-instance v11, Lcom/miui/server/PerfShielderService;

    invoke-direct {v11, p0}, Lcom/miui/server/PerfShielderService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v10, "ProcessManager"

    new-instance v11, Lcom/android/server/am/ProcessManagerService;

    invoke-direct {v11, p0}, Lcom/android/server/am/ProcessManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_41
    const-string/jumbo v10, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-static {v8, v10}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    const-string/jumbo v10, "SERVICE"

    const-class v11, Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v9

    if-eqz v7, :cond_6b

    if-eqz v9, :cond_6b

    invoke-virtual {v9}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_6b} :catch_b3

    :cond_6b
    :goto_6b
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-ge v10, v11, :cond_a5

    :try_start_71
    const-string/jumbo v10, "com.miui.server.TidaService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string/jumbo v10, "SERVICE_NAME"

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v0, :cond_a5

    if-eqz v4, :cond_a5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a5} :catch_b8

    :cond_a5
    :goto_a5
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->startScreenEffectService()V

    invoke-static {}, Lcom/android/server/MiuiFgThread;->initialMiuiFgThread()V

    sget-boolean v10, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v10, :cond_b2

    invoke-static {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->init(Landroid/content/Context;)V

    :cond_b2
    return-void

    :catch_b3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_6b

    :catch_b8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a5
.end method

.method static enableLogSwitch()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName()V

    return-void
.end method

.method private static enforceVersionPolicy()V
    .registers 3

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "SystemServerI"

    const-string/jumbo v2, "enforceVersionPolicy: enable_flash_global enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const-string/jumbo v1, "locked"

    const-string/jumbo v2, "ro.secureboot.lockstate"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "SystemServerI"

    const-string/jumbo v2, "enforceVersionPolicy: device unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->isGlobalHaredware(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "SystemServerI"

    const-string/jumbo v2, "enforceVersionPolicy: global device"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_53

    const-string/jumbo v1, "SystemServerI"

    const-string/jumbo v2, "CN hardware can\'t run Global build; reboot into recovery!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServerInjector;->rebootIntoRecovery()V

    :cond_53
    return-void
.end method

.method private static isGlobalHaredware(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const-string/jumbo v2, "ugglite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "ugg"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "ugglite_ru"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "ugg_ru"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_25
    const-string/jumbo v1, "China"

    const-string/jumbo v2, "ro.boot.hwcountry"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_36
    const-string/jumbo v2, "riva"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string/jumbo v2, "riva_ru"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_48
    const-string/jumbo v2, "S88505AA1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string/jumbo v2, "S88505DA1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string/jumbo v2, "S88505AC1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string/jumbo v1, "S88505DC1"

    const-string/jumbo v2, "ro.product.wt.boardid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_86
    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_89
    const-string/jumbo v2, "rosy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string/jumbo v2, "rosy_ru"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_9b
    const-string/jumbo v1, "CN"

    const-string/jumbo v2, "ro.boot.hwcountry"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_ac
    const-string/jumbo v2, "ro.boot.hwc"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    if-eqz v0, :cond_c9

    const-string/jumbo v2, "CN_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c9

    :cond_c7
    const/4 v1, 0x0

    return v1

    :cond_c9
    return v1
.end method

.method static markBootDexopt(JJ)V
    .registers 8

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setBootDexopt(J)V

    return-void
.end method

.method static markPmsScan(JJ)V
    .registers 6

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanStart(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanEnd(J)V

    return-void
.end method

.method static markSystemRun(J)V
    .registers 10

    :try_start_0
    const-string/jumbo v4, "sys.miui.runtime.reboot"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "sys.miui.runtime.reboot"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_4c

    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v4

    sub-long v6, v2, p0

    invoke-virtual {v4, v6, v7}, Lmiui/mqsas/sdk/BootEventManager;->setZygotePreload(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setSystemRun(J)V

    const-string/jumbo v4, "file"

    const-string/jumbo v5, "ro.crypto.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string/jumbo v4, "trigger_restart_framework"

    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_48
    invoke-static {}, Lcom/android/server/SystemServerInjector;->enforceVersionPolicy()V

    :cond_4b
    return-void

    :catch_4c
    move-exception v0

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "failed to set runtime reboot count"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private static rebootIntoRecovery()V
    .registers 2

    const-string/jumbo v0, "--show_version_mismatch\n"

    invoke-static {v0}, Lcom/android/server/BcbUtil;->setupBcb(Ljava/lang/String;)Z

    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "reboot,recovery"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static registerSystemLogSwitchesReceiver(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
