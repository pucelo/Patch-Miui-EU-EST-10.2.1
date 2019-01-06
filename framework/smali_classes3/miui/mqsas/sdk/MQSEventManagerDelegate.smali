.class public Lmiui/mqsas/sdk/MQSEventManagerDelegate;
.super Ljava/lang/Object;
.source "MQSEventManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MQS_SERVICE_NAME:Ljava/lang/String; = "miui.mqsas.MQSService"

.field public static final PROPERTY_POWER_OFF:Ljava/lang/String; = "persist.sys.poweroff"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;


# instance fields
.field private SHOULD_NOT_DUMPFD:I

.field private SHOULD_NOT_DUMPHEAP:I

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mService:Lmiui/mqsas/IMQSService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/mqsas/sdk/MQSEventManagerDelegate;Lmiui/mqsas/IMQSService;)Lmiui/mqsas/IMQSService;
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SHOULD_NOT_DUMPHEAP:I

    iput v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SHOULD_NOT_DUMPFD:I

    new-instance v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;

    invoke-direct {v0, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;-><init>(Lmiui/mqsas/sdk/MQSEventManagerDelegate;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    .registers 2

    const-class v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-direct {v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    :cond_e
    sget-object v0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->sInstance:Lmiui/mqsas/sdk/MQSEventManagerDelegate;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfNeedDumpFd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result v2

    return v2

    :catch_2c
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfNeedDumpFd error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget v2, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SHOULD_NOT_DUMPFD:I

    return v2
.end method

.method public checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfNeedDumpheap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result v2

    return v2

    :catch_2c
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfNeedDumpheap error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget v2, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->SHOULD_NOT_DUMPHEAP:I

    return v2
.end method

.method public dialogButtonChecked(IILjava/lang/String;Z)V
    .registers 10

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "dialogButtonChecked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->dialogButtonChecked(IILjava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBrightnessEvents error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public dumpBugReport()V
    .registers 6

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "dumpBugReport"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->dumpBugReport()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpBugReport error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method protected declared-synchronized getMQSService()Lmiui/mqsas/IMQSService;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    if-nez v1, :cond_22

    const-string/jumbo v1, "miui.mqsas.MQSService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/IMQSService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2b

    if-eqz v1, :cond_2e

    :try_start_16
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_26
    .catchall {:try_start_16 .. :try_end_22} :catchall_2b

    :cond_22
    :goto_22
    :try_start_22
    iget-object v1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->mService:Lmiui/mqsas/IMQSService;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_2b

    monitor-exit p0

    return-object v1

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_22

    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2e
    :try_start_2e
    sget-object v1, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get MQSService."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    goto :goto_22
.end method

.method public getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_29

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOnlineRuleMatched:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-object v5

    :catch_33
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOnlineRuleMatched error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public onBootCompleted()V
    .registers 6

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onBootCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->onBootCompleted()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBootCompleted error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportAnrEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/AnrEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportAnrEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public reportBluetoothEvent(ILjava/lang/String;)V
    .registers 8

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBluetoothEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportBluetoothEvent(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBluetoothEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBootEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBootEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public reportBrightnessEvent(IIILjava/lang/String;)V
    .registers 10

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportBrightnessEvents"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/mqsas/IMQSService;->reportBrightnessEvent(IIILjava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBrightnessEvents error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_25

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBroadcastEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBroadcastEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public reportConnectExceptionEvent(IILjava/lang/String;)V
    .registers 9

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportConnectExceptionEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportConnectExceptionEvent(IILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportConnectExceptionEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportEvents(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2, p3}, Lmiui/mqsas/IMQSService;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportEvents error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportHangException()V
    .registers 6

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportHangExceptionEvents"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lmiui/mqsas/IMQSService;->reportHangExceptionEvents()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportHangExceptionEvents error happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJEEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJEEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportKillProcessEvents"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportKillProcessEvents error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportPackageEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/PackageEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportPackageEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportPackageForegroundEvents"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportPackageForegroundEvents error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportScreenOnEvent: event ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportScreenOnEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public reportSimpleEvent(ILjava/lang/String;)V
    .registers 8

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportSimpleEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportSimpleEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportTelephonyEvent(ILjava/lang/String;)V
    .registers 8

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportTelephonyEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2}, Lmiui/mqsas/IMQSService;->reportTelephonyEvent(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportTelephonyEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    .registers 7

    sget-boolean v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJWDTEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getMQSService()Lmiui/mqsas/IMQSService;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lmiui/mqsas/IMQSService;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v2, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportJWDTEvent error happened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public setPowerOffTimeAndReason(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "persist.sys.poweroff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
