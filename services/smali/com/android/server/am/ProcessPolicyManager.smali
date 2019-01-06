.class public Lcom/android/server/am/ProcessPolicyManager;
.super Ljava/lang/Object;
.source "ProcessPolicyManager.java"


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "ProcessPolicyManager"

.field private static volatile sPmInstance:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.am.enable_ppm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProcessManagerService()Lcom/android/server/am/ProcessManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "ProcessManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessManagerService;

    sput-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    return-object v0
.end method

.method public static isDelayBootPersistentApp(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isIgnoreException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantProcess(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method private static isLockedProcess(Ljava/lang/String;I)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget-boolean v2, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/ProcessManagerService;->isLockedApplication(Ljava/lang/String;I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    :cond_d
    return v1

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public static isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    goto :goto_18
.end method

.method private static isSecretlyProtectProcess(Ljava/lang/String;)Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessPolicy;->isInSecretlyProtectList(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isSecureProtectedProcess(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static promoteImportantProcAdj(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    const/16 v2, 0xa

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessPolicyManager;->isLockedProcess(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/ProcessPolicyManager;->isSecretlyProtectProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_19
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    sget v1, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    if-le v0, v1, :cond_23

    sget v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    :cond_23
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    if-le v0, v2, :cond_29

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    :cond_29
    const-string/jumbo v0, "ProcessPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "promote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maxAdj to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxProcState to + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method public static promoteImportantProcState(Lcom/android/server/am/ProcessRecord;)V
    .registers 1

    return-void
.end method
