.class public Lcom/android/server/am/LowMemoryKillerObserver;
.super Landroid/os/UEventObserver;
.source "LowMemoryKillerObserver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_PID:Ljava/lang/String; = "PID"

.field private static final LMK_KILL_REASON:Ljava/lang/String; = "lowmemorykiller"

.field private static final LMK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/lowmemorykiller"

.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/LowMemoryKillerObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemoryKillerObserver;->reportLmkKillEvent(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    return-void
.end method

.method private reportLmkKillEvent(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v1, "lowmemorykiller"

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    const-string/jumbo v1, "lowmemorykiller"

    invoke-static {p1, v1}, Lcom/android/server/am/ProcessRecordInjector;->checkNativeKillInList(ILjava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7

    :try_start_0
    const-string/jumbo v2, "PID"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v2, v2, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/LowMemoryKillerObserver$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/LowMemoryKillerObserver$1;-><init>(Lcom/android/server/am/LowMemoryKillerObserver;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    sget-object v2, Lcom/android/server/am/LowMemoryKillerObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception on LowMemoryKillerObserver.onUEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public start()V
    .registers 2

    const-string/jumbo v0, "DEVPATH=/devices/virtual/lowmemorykiller"

    invoke-virtual {p0, v0}, Lcom/android/server/am/LowMemoryKillerObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method
