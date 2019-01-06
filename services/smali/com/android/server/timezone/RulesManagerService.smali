.class public final Lcom/android/server/timezone/RulesManagerService;
.super Landroid/app/timezone/IRulesManager$Stub;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/RulesManagerService$InstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$Lifecycle;,
        Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
    }
.end annotation


# static fields
.field static final DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

.field static final REQUIRED_UPDATER_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"

.field private static final SYSTEM_TZ_DATA_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManagerService"

.field private static final TZ_DATA_DIR:Ljava/io/File;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

.field private final mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;

.field private final mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 2

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    invoke-direct {v0, v1, v1}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/share/zoneinfo/tzdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/zoneinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V
    .registers 7

    invoke-direct {p0}, Landroid/app/timezone/IRulesManager$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-void
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 8

    new-instance v0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;

    invoke-direct {v0, p0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/PackageTracker;->create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    new-instance v3, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string/jumbo v4, "timezone.RulesManagerService"

    sget-object v5, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    sget-object v6, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/timezone/RulesManagerService;-><init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V

    return-object v1
.end method

.method private static createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/android/server/timezone/CheckToken;->fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to read token bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static distroStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "Installed"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method private getRulesStateInternal()Landroid/app/timezone/RulesState;
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getSystemRulesVersion()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_31
    .catchall {:try_start_1 .. :try_end_6} :catchall_5d

    move-result-object v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_5d

    move-result v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    :try_start_11
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    :try_end_16
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_11 .. :try_end_16} :catch_52
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_52
    .catchall {:try_start_11 .. :try_end_16} :catchall_5d

    move-result-object v12

    if-nez v12, :cond_3e

    const/4 v4, 0x1

    :cond_1a
    :goto_1a
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_28

    :try_start_1e
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    :try_end_23
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1e .. :try_end_23} :catch_6c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_6c
    .catchall {:try_start_1e .. :try_end_23} :catchall_5d

    move-result-object v11

    if-nez v11, :cond_60

    const/4 v6, 0x1

    const/4 v7, 0x0

    :cond_28
    :goto_28
    :try_start_28
    new-instance v0, Landroid/app/timezone/RulesState;

    sget-object v2, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    invoke-direct/range {v0 .. v7}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_5d

    monitor-exit p0

    return-object v0

    :catch_31
    move-exception v8

    :try_start_32
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read system rules"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_5d

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_3e
    :try_start_3e
    iget-boolean v0, v12, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v0, :cond_44

    const/4 v4, 0x2

    goto :goto_1a

    :cond_44
    const/4 v4, 0x3

    iget-object v14, v12, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    new-instance v13, Landroid/app/timezone/DistroRulesVersion;

    iget-object v0, v14, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v2, v14, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v13, v0, v2}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_50
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_3e .. :try_end_50} :catch_52
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_50} :catch_52
    .catchall {:try_start_3e .. :try_end_50} :catchall_5d

    move-object v5, v13

    goto :goto_1a

    :catch_52
    move-exception v9

    :try_start_53
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read staged distro."

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5d

    goto :goto_1a

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_60
    const/4 v6, 0x2

    :try_start_61
    new-instance v10, Landroid/app/timezone/DistroRulesVersion;

    iget-object v0, v11, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v2, v11, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v10, v0, v2}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_6a
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_61 .. :try_end_6a} :catch_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_6c
    .catchall {:try_start_61 .. :try_end_6a} :catchall_5d

    move-object v7, v10

    goto :goto_28

    :catch_6c
    move-exception v9

    :try_start_6d
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read installed distro."

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_5d

    goto :goto_28
.end method

.method private sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    .registers 6

    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/timezone/ICallback;->onFinished(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "timezone.RulesManagerService"

    const-string/jumbo v2, "Unable to notify observer of result"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static stagedOperationToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "Uninstall"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "Install"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v8, "timezone.RulesManagerService"

    invoke-interface {v7, v8, p2}, Lcom/android/server/timezone/PermissionHelper;->checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v7

    if-nez v7, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v2

    if-eqz p3, :cond_169

    array-length v7, p3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_169

    const-string/jumbo v7, "-format_state"

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_169

    aget-object v7, p3, v9

    if-eqz v7, :cond_169

    aget-object v7, p3, v9

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    :goto_2e
    if-ge v6, v8, :cond_168

    aget-char v0, v7, v6

    sparse-switch v0, :sswitch_data_1d4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :sswitch_4f
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->isOperationInProgress()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    :cond_5c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Operation in progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    :sswitch_74
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getSystemRulesVersion()Ljava/lang/String;

    move-result-object v5

    :cond_7d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "System rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    :sswitch_95
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getDistroStatus()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->distroStatusToString(I)Ljava/lang/String;

    move-result-object v5

    :cond_a2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current install state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    :sswitch_ba
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v1

    if-nez v1, :cond_e1

    const-string/jumbo v5, "<None>"

    :cond_c8
    :goto_c8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Installed rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_e1
    invoke-virtual {v1}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c8

    :sswitch_e6
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getStagedOperationType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->stagedOperationToString(I)Ljava/lang/String;

    move-result-object v5

    :cond_f3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Staged operation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4c

    :sswitch_10c
    const-string/jumbo v5, "Unknown"

    if-eqz v2, :cond_11a

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v3

    if-nez v3, :cond_133

    const-string/jumbo v5, "<None>"

    :cond_11a
    :goto_11a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Staged rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_133
    invoke-virtual {v3}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    goto :goto_11a

    :sswitch_138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Active rules version (ICU, libcore): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v10

    invoke-virtual {v10}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_168
    return-void

    :cond_169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RulesManagerService state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Active rules version (ICU, libcore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v7

    invoke-virtual {v7}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Distro state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v6, p2}, Lcom/android/server/timezone/PackageTracker;->dump(Ljava/io/PrintWriter;)V

    return-void

    nop

    :sswitch_data_1d4
    .sparse-switch
        0x61 -> :sswitch_138
        0x63 -> :sswitch_95
        0x69 -> :sswitch_ba
        0x6f -> :sswitch_e6
        0x70 -> :sswitch_4f
        0x73 -> :sswitch_74
        0x74 -> :sswitch_10c
    .end sparse-switch
.end method

.method public getRulesState()Landroid/app/timezone/RulesState;
    .registers 3

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method notifyIdle()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    return-void
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .registers 10

    const/4 v5, 0x1

    const/4 v1, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v4, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v3, v4}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    invoke-static {p2}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    :cond_11
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/EventLogTags;->writeTimezoneRequestInstall(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_27

    if-nez p1, :cond_30

    :try_start_1b
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "distroParcelFileDescriptor == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit p0

    throw v3
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v3

    if-eqz p1, :cond_2f

    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_69

    :cond_2f
    :goto_2f
    throw v3

    :cond_30
    if-nez p3, :cond_3b

    :try_start_32
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "observer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3b
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_24

    move-result v3

    if-eqz v3, :cond_55

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_27

    if-eqz p1, :cond_49

    :try_start_46
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return v5

    :catch_4a
    move-exception v2

    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string/jumbo v4, "Failed to close distroParcelFileDescriptor"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;

    invoke-direct {v4, p0, p1, v0, p3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_24

    const/4 v1, 0x0

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_27

    const/4 v3, 0x0

    return v3

    :catch_69
    move-exception v2

    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string/jumbo v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public requestNothing([BZ)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    :cond_f
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestNothing(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneNothingComplete(Ljava/lang/String;)V

    return-void
.end method

.method public requestUninstall([BLandroid/app/timezone/ICallback;)I
    .registers 7

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    :cond_10
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestUninstall(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_26

    :try_start_1a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "callback == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    move-result v1

    if-eqz v1, :cond_30

    monitor-exit p0

    return v3

    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_23

    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageTracker;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RulesManagerService{mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
