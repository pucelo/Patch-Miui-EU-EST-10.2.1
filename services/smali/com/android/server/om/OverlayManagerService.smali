.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$1;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private mInitCompleteSignal:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->isOverlayPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 11

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "overlays.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v2, Lcom/android/server/om/IdmapManager;

    invoke-direct {v2, p2}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;)V

    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Ljava/util/Set;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;

    invoke-direct {v1, v7, p0}, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v3, "Init OverlayManagerService"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getDefaultOverlayPackages()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "ro.boot.vendor.overlay.theme"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_20
    if-ge v3, v5, :cond_30

    aget-object v1, v4, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    return-object v0
.end method

.method private initIfNeeded()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_47

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_44

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_44

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v1}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_49

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_47
    monitor-exit v7

    return-void

    :catchall_49
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private isOverlayPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget v1, p1, Landroid/content/pm/PackageInfo;->overlayFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private restoreSettings()V
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_87

    move-result v6

    if-nez v6, :cond_13

    monitor-exit v9

    return-void

    :cond_13
    const/4 v4, 0x0

    :try_start_14
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [I

    const/4 v1, 0x0

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_46

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_46
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v10

    array-length v11, v10

    move v6, v8

    :goto_51
    if-ge v6, v11, :cond_63

    aget v5, v10, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_60

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_60} :catch_79
    .catchall {:try_start_14 .. :try_end_60} :catchall_96

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_63
    if-eqz v4, :cond_68

    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_77
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_68} :catch_6b
    .catchall {:try_start_65 .. :try_end_68} :catchall_87

    :cond_68
    :goto_68
    if-eqz v7, :cond_75

    :try_start_6a
    throw v7
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_87

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string/jumbo v6, "OverlayManager"

    const-string/jumbo v7, "failed to restore overlay state"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_87

    :cond_75
    monitor-exit v9

    return-void

    :catch_77
    move-exception v7

    goto :goto_68

    :catch_79
    move-exception v6

    :try_start_7a
    throw v6
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_7f
    if-eqz v4, :cond_84

    :try_start_81
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_6b
    .catchall {:try_start_81 .. :try_end_84} :catchall_87

    :cond_84
    :goto_84
    if-eqz v7, :cond_95

    :try_start_86
    throw v7
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_87} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_87} :catch_6b
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v6

    monitor-exit v9

    throw v6

    :catch_8a
    move-exception v8

    if-nez v7, :cond_8f

    move-object v7, v8

    goto :goto_84

    :cond_8f
    if-eq v7, v8, :cond_84

    :try_start_91
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_95
    throw v6
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_96} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_96} :catch_6b
    .catchall {:try_start_91 .. :try_end_96} :catchall_87

    :catchall_96
    move-exception v6

    goto :goto_7f
.end method

.method private schedulePersistSettings()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;

    invoke-direct {v1, v2, p0}, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_7
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v8, "android"

    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p2

    :cond_15
    new-instance v4, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_21
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v10, "android"

    invoke-virtual {v8, v10, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v0, :cond_57

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "android"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_48
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v8, v6, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_8e

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_57
    monitor-exit v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5d
    if-ge v2, v0, :cond_91

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v5, p1, v6, v8}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_8b

    const-string/jumbo v8, "OverlayManager"

    const-string/jumbo v9, "Failed to change enabled overlays for %s user %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :catchall_8e
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_91
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_om_OverlayManagerService_31347()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1a} :catch_1c
    .catchall {:try_start_a .. :try_end_1a} :catchall_2c

    :goto_1a
    monitor-exit v3

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v4, "failed to persist overlay state"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_1a

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method synthetic lambda$-com_android_server_om_OverlayManagerService_9907()V
    .registers 12

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    const-string/jumbo v0, "overlay"

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "Wait for OverlayManagerService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    :cond_f
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method
