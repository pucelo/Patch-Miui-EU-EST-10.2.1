.class public Lcom/android/systemui/DependencyUI;
.super Lcom/android/systemui/SystemUI;
.source "DependencyUI.java"


# static fields
.field private static sDependency:Lcom/android/systemui/DependencyUI;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/android/systemui/DependencyUI;
    .locals 1

    sget-object v0, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyUI;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/DependencyUI;

    invoke-direct {v0}, Lcom/android/systemui/DependencyUI;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DependencyUI;->mComponents:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/systemui/DependencyUI;->start()V

    return-void
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v1, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Class;

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v2, "Dumping existing controllers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/Dumpable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/DependencyUI;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-direct {p0, p1}, Lcom/android/systemui/DependencyUI;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {v0, p1}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onPackageAdded(ILjava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/miui/PackageEventReceiver;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/miui/PackageEventReceiver;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/miui/PackageEventReceiver;->onPackageAdded(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/miui/PackageEventReceiver;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/miui/PackageEventReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/PackageEventReceiver;->onPackageChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageRemoved(ILjava/lang/String;ZZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/miui/PackageEventReceiver;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/miui/PackageEventReceiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/miui/PackageEventReceiver;->onPackageRemoved(ILjava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    sput-object p0, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    new-instance v0, Lcom/android/systemui/DependencyUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyUI$1;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-static {v0}, Lcom/android/systemui/Dependency;->setDependencyResolver(Lcom/android/systemui/Dependency$DependencyResolver;)V

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$2;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->SCREEN_OFF_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$3;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$4;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->NET_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$5;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BT_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$6;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$7;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/DependencyUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$8;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v2, Lcom/android/systemui/DependencyUI$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$9;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v2, Lcom/android/systemui/DependencyUI$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$10;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$11;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v2, Lcom/android/systemui/DependencyUI$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$12;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Lcom/android/systemui/DependencyUI$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$13;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/DependencyUI$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$14;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v2, Lcom/android/systemui/DependencyUI$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$15;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v2, Lcom/android/systemui/DependencyUI$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$16;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v2, Lcom/android/systemui/DependencyUI$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$17;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v2, Lcom/android/systemui/DependencyUI$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$18;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v2, Lcom/android/systemui/DependencyUI$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$19;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v2, Lcom/android/systemui/DependencyUI$20;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$20;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/DependencyUI$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$21;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v2, Lcom/android/systemui/DependencyUI$22;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$22;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v2, Lcom/android/systemui/DependencyUI$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$23;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    new-instance v2, Lcom/android/systemui/DependencyUI$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$24;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v2, Lcom/android/systemui/DependencyUI$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$25;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Lcom/android/systemui/DependencyUI$26;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$26;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$27;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$27;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$28;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$28;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/DependencyUI$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$29;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/DependencyUI$30;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$30;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$31;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$31;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v2, Lcom/android/systemui/DependencyUI$32;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$32;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/DependencyUI$33;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$33;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    new-instance v2, Lcom/android/systemui/DependencyUI$34;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$34;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$35;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$35;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/DependencyUI$36;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$36;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$37;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$37;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    new-instance v2, Lcom/android/systemui/DependencyUI$38;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$38;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    new-instance v2, Lcom/android/systemui/DependencyUI$39;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$39;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v2, Lcom/android/systemui/DependencyUI$40;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$40;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    new-instance v2, Lcom/android/systemui/DependencyUI$41;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$41;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$42;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$42;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v2, Lcom/android/systemui/DependencyUI$43;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$43;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Lcom/android/systemui/DependencyUI$44;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$44;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    new-instance v2, Lcom/android/systemui/DependencyUI$45;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$45;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/DependencyUI$46;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$46;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    new-instance v2, Lcom/android/systemui/DependencyUI$47;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$47;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    new-instance v2, Lcom/android/systemui/DependencyUI$48;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$48;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$49;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$49;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/CallStateController;

    new-instance v2, Lcom/android/systemui/DependencyUI$50;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$50;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    new-instance v2, Lcom/android/systemui/DependencyUI$51;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$51;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    new-instance v2, Lcom/android/systemui/DependencyUI$52;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$52;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    new-instance v2, Lcom/android/systemui/DependencyUI$53;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$53;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$54;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$54;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationLogger;

    new-instance v2, Lcom/android/systemui/DependencyUI$55;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$55;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    return-void
.end method
