.class public Lcom/android/systemui/SystemUIApplication;
.super Lmiui/external/ApplicationDelegate;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/miui/PackageEventReceiver;


# instance fields
.field private final BASE_SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final SERVICES_PER_USER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/systemui/DependencyUI;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;

    aput-object v1, v0, v5

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v1, v0, v6

    const-class v1, Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/SystemBars;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/usb/StorageNotification;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/media/RingtonePlayer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/VendorServices;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/LatencyTester;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/android/systemui/RoundedCorners;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->BASE_SERVICES:[Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lcom/android/systemui/DependencyUI;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    const-class v1, Lcom/android/systemui/recents/Recents;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->BASE_SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method private startServicesIfNeeded([Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->systemNotReady()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SystemUIService"

    const-string/jumbo v7, "abort starting service, system not ready due to data encryption"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v6, :cond_1

    return-void

    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v6, :cond_2

    const-string/jumbo v6, "1"

    const-string/jumbo v7, "sys.boot_completed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    const-string/jumbo v6, "SystemUIService"

    const-string/jumbo v7, "BOOT_COMPLETED was already sent"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting SystemUI services for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v1, p1, v4

    const-string/jumbo v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/SystemUIFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    :goto_1
    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v7, v6, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    const-string/jumbo v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "running: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v6, v5

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_5
    const-class v6, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/PluginManager;

    new-instance v7, Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/SystemUIApplication$3;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    const-class v8, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v6, v7, v8, v9}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    const v5, 0x7f1201ef

    invoke-virtual {p0, v5}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->init(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v5, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance v3, Lcom/android/systemui/miui/PackageEventController;

    invoke-direct {v3, p0, p0, v7}, Lcom/android/systemui/miui/PackageEventController;-><init>(Landroid/content/Context;Lcom/android/systemui/miui/PackageEventReceiver;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/android/systemui/miui/PackageEventController;->start()V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v5}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onPackageAdded(ILjava/lang/String;Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->onPackageAdded(ILjava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageChanged(ILjava/lang/String;)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/SystemUI;->onPackageChanged(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageRemoved(ILjava/lang/String;ZZ)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/SystemUI;->onPackageRemoved(ILjava/lang/String;ZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->loadProvidedSystemUI(Landroid/content/Context;)[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->BASE_SERVICES:[Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/util/Utils;->arrayConcat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/systemui/SystemUI;

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    return-void
.end method
