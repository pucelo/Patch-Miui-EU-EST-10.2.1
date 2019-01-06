.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$InstallerException;
    }
.end annotation


# static fields
.field public static final DEXOPT_BOOTCOMPLETE:I = 0x8

.field public static final DEXOPT_DEBUGGABLE:I = 0x4

.field public static final DEXOPT_FORCE:I = 0x40

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x10

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SECONDARY_DEX:I = 0x20

.field public static final DEXOPT_STORAGE_CE:I = 0x80

.field public static final DEXOPT_STORAGE_DE:I = 0x100

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x100

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x200

.field public static final FLAG_FORCE:I = 0x10000

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x8000

.field public static final FLAG_FREE_CACHE_V2:I = 0x2000

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x4000

.field public static final FLAG_USE_QUOTA:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private volatile mInstalld:Landroid/os/IInstalld;

.field private final mIsolated:Z

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Installer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-void

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    new-instance v1, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkBeforeRemote()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "Installer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is holding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_57

    const-string/jumbo v0, "Installer"

    const-string/jumbo v1, "Ignoring request because this installer is isolated"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method private connect()V
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v3, "installd"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_a
    new-instance v3, Lcom/android/server/pm/Installer$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/Installer$1;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_1f

    :cond_13
    :goto_13
    if-eqz v0, :cond_24

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_1e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1b .. :try_end_1e} :catch_22

    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    const/4 v0, 0x0

    goto :goto_13

    :catch_22
    move-exception v2

    goto :goto_1e

    :cond_24
    const-string/jumbo v3, "Installer"

    const-string/jumbo v4, "installd not found; trying again"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;

    invoke-direct {v4, v5, p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;-><init>(BLjava/lang/Object;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e
.end method


# virtual methods
.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public clearAppProfiles(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18

    move-result-wide v0

    return-wide v0

    :catch_18
    move-exception v8

    invoke-static {v8}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v13

    invoke-static {v13}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JJI)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v7

    invoke-static {v7}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v11

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v4, 0x0

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v4, 0x1

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v4, 0x2

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v4, 0x3

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v4, 0x4

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p8

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v4, 0x5

    aget-wide v4, v11, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p8

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception v10

    invoke-static {v10}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x6

    new-array v1, v1, [J

    return-object v1

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v1

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v4, 0x2

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v4, 0x4

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v2, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v4, 0x5

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public invalidateMounts()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method synthetic lambda$-com_android_server_pm_Installer_4745()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public markBootComplete(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->markBootComplete(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v8

    invoke-static {v8}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public onStart()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    goto :goto_7
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    const/4 v8, 0x0

    :goto_1
    array-length v0, p4

    if-ge v8, v0, :cond_c

    aget-object v0, p4, v8

    invoke-static {v0}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_21

    move-result v0

    return v0

    :catch_21
    move-exception v7

    invoke-static {v7}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public removeIdmap(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->removeIdmap(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v7

    invoke-static {v7}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v6

    invoke-static {v6}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    return-void
.end method
