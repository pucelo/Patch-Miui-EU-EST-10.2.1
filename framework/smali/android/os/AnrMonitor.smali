.class public Landroid/os/AnrMonitor;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AnrMonitor$1;,
        Landroid/os/AnrMonitor$FileInfo;,
        Landroid/os/AnrMonitor$TimerThread;,
        Landroid/os/AnrMonitor$UploadInfo;,
        Landroid/os/AnrMonitor$WorkHandler;
    }
.end annotation


# static fields
.field public static final ANR_DIRECTORY:Ljava/lang/String; = "/data/anr/"

.field public static final ANR_INFO_HEAD:Ljava/lang/String; = "anr_info_"

.field public static final ANR_INFO_LIMIT:I = 0x5

.field public static final ANR_TRACES_LIMIT:I = 0x5

.field public static final BINDER_CALL_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final CHECK_PARCEL_SIZE_ENABLE:Z

.field private static final CHECK_PARCEL_SIZE_KB:I

.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final DBG:Z

.field private static final DEFAULT_LOCK_WAIT_THRESHOLD:J = 0x1f4L

.field public static final DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x2710

.field public static final DUMP_APP_TRACE_TAG:Ljava/lang/String; = "dump-app-trace"

.field public static final DUMP_MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final DUMP_TRACE_TAG:Ljava/lang/String; = "DUMP_APP_TRACE"

.field public static final INPUT_DISPATCHING_TIMEOUT:I = 0x1f40

.field public static final INPUT_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LOCK_WAIT_THRESHOLD:J

.field public static final LT_MESSAGE_CHECK_TIME:J = 0xc8L

.field public static final MAX_MESSAGE_SUMMARY_HISTORY:I = 0x32

.field public static final MAX_TIMEOUT:J = 0x186a0L

.field public static final MESSAGE_EXECUTION_TIMEOUT:J = 0x7d0L

.field public static final MESSAGE_MONITOR_TIMEOUT:J

.field private static final MESSAGE_UPLOAD_CHECK_TIME:J = 0xbb8L

.field private static final MONITOR_MSG_EXECUTION:Z

.field private static final MONITOR_TAG:Ljava/lang/String; = "MIUI-BLOCK-MONITOR"

.field private static final NOT_CTS_BUILD:Z

.field public static final PERF_EVENT_LOGGING_TIMEOUT:J = 0xbb8L

.field private static final SCREEN_HAND_PROP:Ljava/lang/String; = "persist.sys.screen_hang.time"

.field private static final SCREEN_HANG_TIMEOUT:I

.field public static final SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "AnrMonitor"

.field public static final TRACES_FILE_TYPE:Ljava/lang/String; = ".txt"

.field public static final TRACES_HEAD:Ljava/lang/String; = "traces_"

.field private static final TRACE_DIR:Ljava/lang/String; = "/data/anr/"

.field private static final mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInputEvnetStartTimeSeqMap"
    .end annotation
.end field

.field private static final mScreenHangRunnable:Ljava/lang/Runnable;

.field private static sBinderRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sInputRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sInstanceSync:Ljava/lang/Object;

.field private static sIsSystemApp:Ljava/lang/Boolean;

.field private static final sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMsgRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sPkgName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sSystemBootCompleted:Z

.field private static final sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sVersionCode:I

.field private static sVersionName:Ljava/lang/String;

.field private static volatile sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sInstanceSync"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Landroid/os/AnrMonitor;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 7

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    const/16 v6, 0xa

    const/4 v3, 0x0

    const-string/jumbo v0, "anr.monitor.debug.on"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->DBG:Z

    const-string/jumbo v0, "monitor.msg.execution"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd_HH_mm_ss.SSS"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "line.separator"

    const-string/jumbo v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_c0

    const/16 v0, 0x7d0

    :goto_44
    int-to-long v4, v0

    sput-wide v4, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    const-string/jumbo v0, "persist.vm.lockprof.threshold"

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/AnrMonitor;->LOCK_WAIT_THRESHOLD:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    const-string/jumbo v0, "persist.binder.check.size"

    const/16 v4, 0xc8

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    sget v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    if-lez v0, :cond_c2

    move v0, v2

    :goto_69
    sput-boolean v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    sput v3, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sput v3, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sput v3, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_af

    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.miui.home"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_af
    const-string/jumbo v0, "persist.sys.screen_hang.time"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/AnrMonitor;->SCREEN_HANG_TIMEOUT:I

    new-instance v0, Landroid/os/AnrMonitor$1;

    invoke-direct {v0}, Landroid/os/AnrMonitor$1;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    return-void

    :cond_c0
    move v0, v1

    goto :goto_44

    :cond_c2
    move v0, v3

    goto :goto_69
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addBinderCallTimeToHistory(J)V
    .registers 10

    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    :try_start_3
    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The binder call "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/AnrMonitor;->binderCallToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-wide p0, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    sget-object v4, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    aput-object v3, v4, v6

    sget v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_77

    sget-object v4, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_74

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_6d

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "binder call report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_74
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_79

    :cond_77
    monitor-exit v5

    return-void

    :catchall_79
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V
    .registers 14

    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    :try_start_3
    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The inputEvent "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " {"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " target reveicer = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " target InputChannel = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/AnrMonitor;->inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-wide p3, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    sget-object v4, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    aput-object v3, v4, v6

    sget v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_9c

    sget-object v4, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_92

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_99
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9e

    :cond_9c
    monitor-exit v5

    return-void

    :catchall_9e
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized addLockWaitTimeToHistory(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    .registers 8

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 10

    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v4, :cond_d6

    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The message {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v4, :cond_d8

    const-string/jumbo v4, " callback="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    const-string/jumbo v4, " target="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_88

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " add to history sMsgRecordIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    sget-object v4, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    aput-object v3, v4, v6

    sget v4, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_d6

    sget-object v4, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_cc

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_d3
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sMsgRecordIndex:I
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_e5

    :cond_d6
    monitor-exit v5

    return-void

    :cond_d8
    :try_start_d8
    const-string/jumbo v4, " what="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_e5

    goto/16 :goto_2e

    :catchall_e5
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static binderCallToString()Ljava/lang/String;
    .registers 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string/jumbo v2, "{ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_35
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public static canMonitorAnr()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_7

    sget-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static canMonitorMessage()Z
    .registers 2

    sget-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static checkBinderCallTime(J)V
    .registers 6

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_45

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_42

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The binder call took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    invoke-static {v0, v1}, Landroid/os/AnrMonitor;->addBinderCallTimeToHistory(J)V

    :cond_45
    return-void
.end method

.method public static checkInputTime(JLandroid/view/InputEvent;)V
    .registers 9

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p0

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_3d

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The input: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkInputTime failed and took time is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public static checkInputTime(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 13

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-wide/16 v2, 0x0

    sget-object v4, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v4

    :try_start_c
    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_6c

    move-result v0

    if-gez v0, :cond_1a

    monitor-exit v4

    return-void

    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    sub-long v2, v6, v8

    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_6c

    monitor-exit v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_6b

    invoke-static {p0, p1, p2, v2, v3}, Landroid/os/AnrMonitor;->addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The input: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms. Send to InputChannel "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6b
    return-void

    :catchall_6c
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public static checkLockWaitTime(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    .registers 7

    return-void
.end method

.method public static checkMsgTime(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 8

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1c

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    sget-wide v4, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_5c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms and took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms after dispatch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-lez v4, :cond_65

    invoke-static {p0, p1}, Landroid/os/AnrMonitor;->addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    :cond_65
    return-void
.end method

.method public static checkPerfEvent(Landroid/os/statistics/PerfEvent;)V
    .registers 9

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    instance-of v1, p0, Landroid/os/statistics/MicroscopicEvent;

    if-nez v1, :cond_c

    return-void

    :cond_c
    move-object v0, p0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent;

    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v4, v6

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_23

    return-void

    :cond_23
    instance-of v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    if-nez v1, :cond_46

    instance-of v1, p0, Landroid/os/statistics/SingleJniMethod;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    return-void

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/os/statistics/MicroscopicEvent;->eventType:I

    invoke-static {v4}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " at thread "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/AnrMonitor;->logPerfEvent(Ljava/lang/String;Landroid/os/statistics/PerfEvent;)V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 10

    const/4 v7, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1a

    return-object v7

    :cond_1a
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    if-eqz p1, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    move-exception v0

    const-string/jumbo v3, "AnrMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

.method static declared-synchronized currentPackageName()Ljava/lang/String;
    .registers 3

    const-class v2, Landroid/os/AnrMonitor;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;

    :goto_12
    sget-object v1, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v2

    return-object v1

    :cond_16
    :try_start_16
    sput-object v0, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_19

    goto :goto_12

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static currentProcessName()Ljava/lang/String;
    .registers 2

    sget-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    :cond_17
    :goto_17
    sget-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    return-object v1

    :cond_1a
    sput-object v0, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    goto :goto_17
.end method

.method static currentThreadName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static currentVersionCode()I
    .registers 6

    sget v3, Landroid/os/AnrMonitor;->sVersionCode:I

    if-nez v3, :cond_25

    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_25

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v3, :cond_25

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Landroid/os/AnrMonitor;->sVersionCode:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_28

    :cond_25
    :goto_25
    sget v3, Landroid/os/AnrMonitor;->sVersionCode:I

    return v3

    :catch_28
    move-exception v1

    goto :goto_25
.end method

.method static currentVersionName()Ljava/lang/String;
    .registers 6

    sget-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2c

    :cond_29
    :goto_29
    sget-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    return-object v3

    :catch_2c
    move-exception v1

    goto :goto_29
.end method

.method private static deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V
    .registers 15

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    :cond_a
    return-void

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    array-length v10, v8

    :goto_16
    if-ge v9, v10, :cond_35

    aget-object v5, v8, v9

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    new-instance v11, Landroid/os/AnrMonitor$FileInfo;

    invoke-direct {v11, v5, v6, v7}, Landroid/os/AnrMonitor$FileInfo;-><init>(Ljava/io/File;J)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_35
    :try_start_35
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_38} :catch_51

    :goto_38
    move v4, p2

    :goto_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_56

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/AnrMonitor$FileInfo;

    invoke-virtual {v9}, Landroid/os/AnrMonitor$FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38

    :cond_56
    return-void
.end method

.method public static dispatchInputEventStart(Landroid/view/InputEvent;)V
    .registers 7

    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static doDump(Ljava/lang/String;)V
    .registers 12

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "dump_service"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "args"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v8, :cond_30

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "opt"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_30
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_45

    move-result-object v2

    :try_start_34
    sget-object v9, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-interface {v2, v9, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_39} :catch_45

    :goto_39
    return-void

    :catch_3a
    move-exception v3

    :try_start_3b
    const-string/jumbo v9, "AnrMonitor"

    const-string/jumbo v10, "dump failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_44} :catch_45

    goto :goto_39

    :catch_45
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_39
.end method

.method public static dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move/from16 v0, p8

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/os/AnrMonitor;->getAnrPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_6c

    new-instance v9, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_5d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_70

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    if-eqz p7, :cond_29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v9, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(dump anr info success and took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_55} :catch_7c
    .catchall {:try_start_1d .. :try_end_55} :catchall_79

    if-eqz v9, :cond_5a

    :try_start_57
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-object v4

    :catch_5b
    move-exception v2

    goto :goto_5a

    :catch_5d
    move-exception v3

    :goto_5e
    :try_start_5e
    const-string/jumbo v10, "AnrMonitor"

    const-string/jumbo v11, "Error happens when dumping anr info"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_70

    if-eqz v8, :cond_6c

    :try_start_69
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6e

    :cond_6c
    :goto_6c
    const/4 v10, 0x0

    return-object v10

    :catch_6e
    move-exception v2

    goto :goto_6c

    :catchall_70
    move-exception v10

    :goto_71
    if-eqz v8, :cond_76

    :try_start_73
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    :cond_76
    :goto_76
    throw v10

    :catch_77
    move-exception v2

    goto :goto_76

    :catchall_79
    move-exception v10

    move-object v8, v9

    goto :goto_71

    :catch_7c
    move-exception v3

    move-object v8, v9

    goto :goto_5e
.end method

.method public static dumpBinderInfo(ILjava/io/Writer;)V
    .registers 6

    :try_start_0
    const-string/jumbo v1, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    const-string/jumbo v1, "/sys/kernel/debug/binder/transaction_log"

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    const-string/jumbo v1, "/sys/kernel/debug/binder/transactions"

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    const-string/jumbo v1, "/sys/kernel/debug/binder/stats"

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    const-string/jumbo v2, "AnrMonitor"

    const-string/jumbo v3, "dumpBinderInfo fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public static dumpCpuInfo(ILjava/io/Writer;)V
    .registers 6

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/schedstat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    const-string/jumbo v2, "AnrMonitor"

    const-string/jumbo v3, "dumpCpuInfo fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method static finishMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 5

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private static getAnrPath(ZLjava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, ""

    if-eqz p0, :cond_1d

    const-string/jumbo v0, "anr_info.txt"

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/anr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "anr_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .registers 4

    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v1, :cond_22

    sget-object v2, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v1, :cond_21

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "work-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/AnrMonitor$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/AnrMonitor$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    :cond_21
    monitor-exit v2

    :cond_22
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    :try_start_2
    const-string/jumbo v3, "null"

    return-object v3

    :cond_6
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "uninitialized"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "uninitialized"

    return-object v3

    :cond_17
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_28

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v2, v3
    :try_end_27
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_27} :catch_29

    return-object v3

    :cond_28
    return-object v1

    :catch_29
    move-exception v0

    const-string/jumbo v3, "Error getting inputChannel name "

    invoke-static {v3, v0}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v3, "null"

    return-object v3
.end method

.method private static inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v3, p0, Landroid/view/KeyEvent;

    if-eqz v3, :cond_3b

    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    const-string/jumbo v3, "KeyEvent { action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3b
    move-object v1, p0

    check-cast v1, Landroid/view/MotionEvent;

    const-string/jumbo v3, "MotionEvent { action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isAllowedMonitor(Landroid/os/BaseLooper;)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/BaseLooper;->isMonitorAnr()Z

    move-result v0

    return v0

    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isAllowedMonitorBinderCall(Landroid/os/BaseLooper;)Z
    .registers 2

    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static isAllowedMonitorBinderCallSize(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-boolean v1, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    if-eqz v1, :cond_12

    sget v1, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    mul-int/lit16 v1, v1, 0x400

    if-lt p0, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static isAllowedMonitorInput(Landroid/os/BaseLooper;)Z
    .registers 2

    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static isFileAvailable(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static isLongTimeMsg(Landroid/os/BaseLooper$MessageMonitorInfo;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const/4 v2, 0x1

    return v2

    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method static declared-synchronized isSystemApp()Z
    .registers 10

    const/4 v5, 0x0

    const-class v6, Landroid/os/AnrMonitor;

    monitor-enter v6

    :try_start_4
    sget-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_53

    if-nez v7, :cond_40

    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_40

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_46

    const/4 v3, 0x1

    :goto_2e
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_48

    const/4 v4, 0x1

    :goto_37
    new-instance v7, Ljava/lang/Boolean;

    if-nez v3, :cond_4a

    :goto_3b
    invoke-direct {v7, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_40} :catch_56
    .catchall {:try_start_8 .. :try_end_40} :catchall_53

    :cond_40
    :goto_40
    :try_start_40
    sget-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_53

    if-nez v7, :cond_4c

    :goto_44
    monitor-exit v6

    return v5

    :cond_46
    const/4 v3, 0x0

    goto :goto_2e

    :cond_48
    const/4 v4, 0x0

    goto :goto_37

    :cond_4a
    const/4 v4, 0x1

    goto :goto_3b

    :cond_4c
    :try_start_4c
    sget-object v5, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_53

    move-result v5

    goto :goto_44

    :catchall_53
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_56
    move-exception v1

    goto :goto_40
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    :cond_14
    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    return v0
.end method

.method static declared-synchronized isSystemServer()Z
    .registers 3

    const-class v1, Landroid/os/AnrMonitor;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "system_server"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    if-eqz p1, :cond_9

    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    if-eqz p1, :cond_9

    const-string/jumbo v0, "DUMP_APP_TRACE"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "DUMP_APP_TRACE"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static logPerfEvent(Ljava/lang/String;Landroid/os/statistics/PerfEvent;)V
    .registers 4

    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_16

    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_64
    .catchall {:try_start_3 .. :try_end_8} :catchall_4c

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_66
    .catchall {:try_start_8 .. :try_end_d} :catchall_5d

    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22
    .catchall {:try_start_d .. :try_end_21} :catchall_60

    goto :goto_12

    :catch_22
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    :goto_25
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_4c

    if-eqz v0, :cond_2d

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2d
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_47

    :cond_32
    :goto_32
    return-object v9

    :cond_33
    :try_start_33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_22
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    move-result-object v7

    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3c
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-object v7

    :catch_42
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    :catch_47
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    :catchall_4c
    move-exception v7

    :goto_4d
    if-eqz v0, :cond_52

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_52
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    throw v7

    :catch_58
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    :catchall_5d
    move-exception v7

    move-object v3, v4

    goto :goto_4d

    :catchall_60
    move-exception v7

    move-object v0, v1

    move-object v3, v4

    goto :goto_4d

    :catch_64
    move-exception v2

    goto :goto_25

    :catch_66
    move-exception v2

    move-object v3, v4

    goto :goto_25
.end method

.method public static readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz p1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "------ cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AnrMonitor;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public static renameTraces(Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x0

    const-string/jumbo v5, "dalvik.vm.stack-trace-file"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8b

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/anr/traces_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "traces_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v9}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "anr_info_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v9}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    :cond_8b
    return-void
.end method

.method public static screenHangMonitor(IZJ)V
    .registers 8

    packed-switch p0, :pswitch_data_1e

    :goto_3
    return-void

    :pswitch_4
    if-eqz p1, :cond_14

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    sget v2, Landroid/os/AnrMonitor;->SCREEN_HANG_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_14
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x1a
        :pswitch_4
    .end packed-switch
.end method

.method static startMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 8

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-void

    :cond_12
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->createMonitorDigest()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "monitor_msg"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .registers 6

    const-class v1, Landroid/os/AnrMonitor;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v2, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
