.class public Lmiui/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field public static final AI_MAX_ADJ:I

.field public static final AI_MAX_PROCESS_STATE:I = 0xa

.field public static final DEBUG:Z = true

.field public static final DEFAULT_MAX_ADJ:I

.field public static final DEFAULT_PROCESS_STATE:I = 0x12

.field public static final FLAG_START_PROCESS_AI:I = 0x1

.field public static final LOCKED_MAX_ADJ:I

.field public static final LOCKED_MAX_PROCESS_STATE:I = 0xa

.field public static final MAX_ADJ_BOOST_TIMEOUT:J = 0x493e0L

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final PROTECT_MAX_ADJ:I

.field public static final PROTECT_MAX_PROCESS_STATE:I = 0xa

.field public static final SERVICE_NAME:Ljava/lang/String; = "ProcessManager"

.field private static final SINGLE_COUNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ProcessManager"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v1, 0x190

    const/4 v2, 0x4

    const/16 v3, 0x17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_22

    move v0, v1

    :goto_a
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_24

    move v0, v1

    :goto_11
    sput v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_26

    :goto_17
    sput v1, Lmiui/process/ProcessManager;->PROTECT_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_28

    const/16 v0, 0x3e9

    :goto_1f
    sput v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    return-void

    :cond_22
    move v0, v2

    goto :goto_a

    :cond_24
    move v0, v2

    goto :goto_11

    :cond_26
    move v1, v2

    goto :goto_17

    :cond_28
    const/16 v0, 0x10

    goto :goto_1f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lmiui/process/IProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public static adjBoost(Ljava/lang/String;IJI)V
    .registers 13

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->adjBoost(Ljava/lang/String;IJI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static boostCameraIfNeed()V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1}, Lmiui/process/IProcessManager;->boostCameraIfNeeded()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lmiui/process/IProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/process/IProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static getLockedApplication(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->getLockedApplication(I)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPid(I)Lmiui/process/RunningProcessInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    :cond_18
    return-object v2
.end method

.method public static getRunningProcessInfoByProcessName(Ljava/lang/String;)Lmiui/process/RunningProcessInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {v1, v1, v2, p0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    :cond_18
    return-object v2
.end method

.method public static getRunningProcessInfoByUid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v0, p0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/process/IProcessManager;->isLockedApplication(Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public static kill(Lmiui/process/ProcessConfig;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lmiui/process/IProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static protectCurrentProcess(Z)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public static protectCurrentProcess(ZI)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmiui/process/IProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static startPreloadProcesses(Ljava/util/List;IZII)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    :cond_9
    const-string/jumbo v0, "ProcessManager"

    const-string/jumbo v1, "dataList cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_1b

    if-gtz p1, :cond_25

    :cond_1b
    const-string/jumbo v0, "ProcessManager"

    const-string/jumbo v1, "illegal start number!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_25
    const/4 v7, 0x0

    :try_start_26
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->startProcesses(Ljava/util/List;IZII)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_34

    move-result v7

    :goto_33
    return v7

    :catch_34
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_33
.end method

.method public static startProcess(Ljava/lang/String;ZII)Z
    .registers 7

    new-instance v0, Lmiui/process/PreloadProcessData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-static {v0, p1, p2, p3}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v1

    return v1
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v0

    return v0
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;ZII)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_e
    const-string/jumbo v2, "ProcessManager"

    const-string/jumbo v4, "preload data and packageName cannot be null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2, p1, p2, p3}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v1

    if-ne v1, v2, :cond_27

    :goto_26
    return v2

    :cond_27
    move v2, v3

    goto :goto_26
.end method

.method public static startProcesses(Ljava/util/List;IZII)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v0, Lmiui/process/PreloadProcessData;

    invoke-direct {v0, v2, v5, v6}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2e
    invoke-static {v1, p1, p2, p3, p4}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v4

    return v4

    :cond_33
    return v5
.end method

.method public static unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmiui/process/IProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 4

    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v1, "ProcessManager"

    const-string/jumbo v2, "cloudData is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_9

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->updateConfig(Lmiui/process/ProcessConfig;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method
