.class public Lcom/android/server/am/ANRManager;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$WorkHandler;
    }
.end annotation


# static fields
.field private static final ANR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final ANR_TYPE_INPUT:Ljava/lang/String; = "input"

.field private static final ANR_TYPE_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ANR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field static final BROADCAST_TIMEOUT_HALF_MSG:I = 0x3f4

.field static final DEFAULT_DROPBOX_MAX_SIZE:I = 0x30000

.field public static final DEFAULT_MAX_FILES:I

.field public static final DEFAULT_QUOTA_KB:I

.field static final DROPBOX_MAX_SIZE:I

.field static final ENABLE_HALF_ANR_STACK:Z

.field static final INPUT_TIMEOUT_HALF_MSG:I = 0x3f6

.field static final PROVIDER_TIMEOUT_HALF_MSG:I = 0x3f5

.field private static final REASON_BROADCAST_ANR:Ljava/lang/String; = "Broadcast of Intent"

.field private static final REASON_INPUT_ANR:Ljava/lang/String; = "Input dispatching timed out"

.field private static final REASON_SERVICE_ANR:Ljava/lang/String; = "executing service"

.field static final SERVICE_TIMEOUT_HALF_MSG:I = 0x3f3

.field private static final TAG:Ljava/lang/String; = "ANRManager"

.field private static sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private static sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

.field private static volatile sHandler:Lcom/android/server/am/ANRManager$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.enable_anr_half"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_2e

    const v0, 0xc800

    :goto_11
    sput v0, Lcom/android/server/am/ANRManager;->DEFAULT_QUOTA_KB:I

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_31

    const/16 v0, 0x1388

    :goto_19
    sput v0, Lcom/android/server/am/ANRManager;->DEFAULT_MAX_FILES:I

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_34

    const/high16 v0, 0x60000

    :goto_21
    sput v0, Lcom/android/server/am/ANRManager;->DROPBOX_MAX_SIZE:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ANRManager;->sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

    return-void

    :cond_2e
    const/16 v0, 0x1400

    goto :goto_11

    :cond_31
    const/16 v0, 0x3e8

    goto :goto_19

    :cond_34
    const/high16 v0, 0x30000

    goto :goto_21
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addTextToDropBox(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_half_anr_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "dropbox"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DropBoxManager;

    if-eqz v4, :cond_2f

    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    :cond_2f
    return-void

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add stack to dropbox, tag:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", type: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/ANRManager$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Half anr time dump: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ANRManager$1;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static cancelScheduleBroadcastTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method static cancelScheduleProviderTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method static cancelScheduleServiceTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method static checkInit(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    if-nez v0, :cond_1b

    const-class v1, Lcom/android/server/am/ANRManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/android/server/am/ANRManager$WorkHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/am/ANRManager$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    sput-object p0, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v2, p0, :cond_24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    const-string/jumbo v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start dumpStackTracesLite, pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v5, v5, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    invoke-static {v0, p1, v6}, Lcom/android/server/am/ANRManager;->renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method static dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v0, :cond_8

    :cond_7
    return-object v1

    :cond_8
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, p1}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getDropBoxTag(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "anr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/am/ANRManager;->processClass(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 12

    sget-boolean v1, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v1, :cond_a

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    const-string/jumbo v0, ""

    const-string/jumbo v1, "Input dispatching timed out"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v0, "input"

    :cond_1a
    :goto_1a
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ANRManager;->renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    return-void

    :cond_23
    const-string/jumbo v1, "executing service"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string/jumbo v0, "service"

    goto :goto_1a

    :cond_30
    const-string/jumbo v1, "Broadcast of Intent"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v0, "broadcast"

    goto :goto_1a
.end method

.method static onBroadcastTimeoutHalf(Lcom/android/server/am/BroadcastQueue;)V
    .registers 10

    const/4 v1, 0x0

    sget-object v6, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_63

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object v2, v0

    iget-object v5, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v5, :cond_46

    iget-object v5, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v7, :cond_46

    sget-object v5, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_5d

    :try_start_35
    sget-object v5, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v1, v0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_5a

    :try_start_45
    monitor-exit v7

    :cond_46
    :goto_46
    if-eqz v1, :cond_4c

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v5, :cond_66

    :cond_4c
    const-string/jumbo v5, "ANRManager"

    const-string/jumbo v7, "app not exist while broadcast timeout half"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_5d

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v7

    throw v5
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_63
    :try_start_63
    iget-object v1, v4, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_5d

    goto :goto_46

    :cond_66
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v5, "broadcast"

    invoke-static {v1, v5}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method static onInputTimeoutHalf(I)V
    .registers 2

    const-string/jumbo v0, "input"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;

    return-void
.end method

.method static onProviderTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    const-string/jumbo v0, "provider"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method static onServiceTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    const-string/jumbo v0, "service"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method private static processClass(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_a

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_e

    :cond_a
    const-string/jumbo v0, "system_server"

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "system_app"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "data_app"

    return-object v0
.end method

.method static renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v7, Lcom/android/server/am/ANRManager;->sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "dalvik.vm.stack-trace-file"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_7d

    const-string/jumbo v7, ".half.txt"

    :goto_40
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_7c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7c

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v7, v1, :cond_81

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_74
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_7c
    return-object v2

    :cond_7d
    const-string/jumbo v7, ".txt"

    goto :goto_40

    :cond_81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_74
.end method

.method static scheduleBroadcastTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/BroadcastQueue;)V
    .registers 7

    sget-boolean v1, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public static scheduleInputTimeoutHalf(I)V
    .registers 5

    sget-boolean v2, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v2, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v3, 0x3f6

    invoke-virtual {v2, v3}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p0, v1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static scheduleProviderTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/ProcessRecord;)V
    .registers 7

    sget-boolean v1, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static scheduleServiceTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/ProcessRecord;)V
    .registers 7

    sget-boolean v1, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
