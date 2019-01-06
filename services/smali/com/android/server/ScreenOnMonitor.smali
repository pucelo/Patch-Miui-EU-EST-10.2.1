.class public Lcom/android/server/ScreenOnMonitor;
.super Ljava/lang/Object;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ScreenOnMonitor$1;,
        Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;
    }
.end annotation


# static fields
.field private static final AVG_MAX_COUNT:J = 0x32L

.field public static final BLOCK_SCREEN_ON_BEGIN:I = 0x2

.field public static final BLOCK_SCREEN_ON_END:I = 0x3

.field public static final DATE:Ljava/util/Date;

.field public static final FINGERPRINT_AUTHENTICATED:I = 0x5

.field public static final FINGERPRINT_DOWN:I = 0x4

.field private static final INTERVAL_REPORT_TIME:J = 0xdbba00L

.field public static final KEYGUARD_DRAWN:I = 0x6

.field private static final MSG_RECORD_TIME:I = 0x3

.field private static final MSG_REPORT:I = 0x5

.field private static final MSG_SCREEN_ON_TIMEOUT:I = 0x4

.field private static final MSG_START_MONITOR:I = 0x1

.field private static final MSG_STOP_MONITOR:I = 0x2

.field private static PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String; = null

.field private static final REPORT_DELAY:J = 0x7d0L

.field private static final SCREEN_ON_TIMEOUT:J = 0x3e8L

.field public static final SET_DISPLAY_STATE_BEGIN:I = 0x0

.field public static final SET_DISPLAY_STATE_END:I = 0x1

.field public static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final STABLE_SUPPORT_DEVICE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ScreenOnMonitor"

.field private static final TYPE_WAKE_SOURCE_DEFAULT:I = -0x1

.field private static final TYPE_WAKE_SOURCE_DP_CENTER:I = 0x2

.field private static final TYPE_WAKE_SOURCE_KEYGUARD_FINGER_PASS:I = 0x4

.field private static final TYPE_WAKE_SOURCE_KEYGUARD_NOTIFICATION:I = 0x3

.field private static final TYPE_WAKE_SOURCE_LID:I = 0x5

.field private static final TYPE_WAKE_SOURCE_POWER:I = 0x1

.field private static final TYPE_WAKE_SOURCE_TOTAL:I

.field private static volatile sInstance:Lcom/android/server/ScreenOnMonitor;


# instance fields
.field private mAvgCount:[I

.field private mBlockScreenOnBegin:J

.field private mBlockScreenOnEnd:J

.field private mDisplayBrightness:I

.field private mDisplayState:I

.field private mFingerDown:J

.field private mFingerSuccess:J

.field private mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

.field private mKeyguardDrawn:J

.field private mLastReportTime:J

.field private mNeedRecord:[Z

.field private mSetDisplayStateBegin:J

.field private mSetDisplayStateEnd:J

.field private mStartTime:J

.field private mStopTime:J

.field private mTimeStamp:J

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalBlockScreenOnTime:[J

.field private mTotalFingerAllTime:J

.field private mTotalFingerAuthenticateTime:J

.field private mTotalFingerAvgCount:I

.field private mTotalFingerBlockScreenOnTime:J

.field private mTotalFingerSetDisplayTime:J

.field private mTotalFingerSuccess2WakeTime:J

.field private mTotalKeyguardDrawn:J

.field private mTotalScreenOnTime:[J

.field private mTotalSetDisplayTime:[J

.field private mTypeNeedRecordSb:Ljava/lang/StringBuilder;

.field private mUploadVersion:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/ScreenOnMonitor;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ScreenOnMonitor;->handleRecordTime(IJ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/ScreenOnMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/ScreenOnMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->handleScreenOnTimeout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ScreenOnMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStopMonitor(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/ScreenOnMonitor$1;

    invoke-direct {v0}, Lcom/android/server/ScreenOnMonitor$1;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->STABLE_SUPPORT_DEVICE:Ljava/util/List;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "persist.sys.screenon"

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x6

    const-wide/16 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    iput v7, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    new-array v5, v12, [I

    fill-array-data v5, :array_dc

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    new-array v5, v12, [J

    fill-array-data v5, :array_ec

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    new-array v5, v12, [J

    fill-array-data v5, :array_108

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    new-array v5, v12, [J

    fill-array-data v5, :array_124

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    new-array v5, v12, [Z

    fill-array-data v5, :array_140

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    iput v7, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAuthenticateTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSetDisplayTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalKeyguardDrawn:J

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v5

    if-eqz v5, :cond_49

    return-void

    :cond_49
    sget-object v5, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9e

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9e

    aget-object v1, v4, v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v8, v8

    if-ne v5, v8, :cond_90

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_79
    iget-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v5, v5

    if-ge v0, v5, :cond_9a

    iget-object v8, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x30

    if-ne v5, v9, :cond_8e

    move v5, v6

    :goto_89
    aput-boolean v5, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_8e
    move v5, v7

    goto :goto_89

    :cond_90
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "000000"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    :cond_9a
    aget-object v5, v4, v6

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    :cond_9e
    iget-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const-string/jumbo v5, "0.0.0"

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "000000"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    :cond_b5
    new-instance v5, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;-><init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v7, "power"

    invoke-virtual {v5, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v5, "ScreenOnMonitor"

    invoke-virtual {v2, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void

    nop

    :array_dc
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_ec
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_108
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_124
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_140
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static getInstance()Lcom/android/server/ScreenOnMonitor;
    .registers 2

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_13

    const-class v1, Lcom/android/server/ScreenOnMonitor;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/ScreenOnMonitor;

    invoke-direct {v0}, Lcom/android/server/ScreenOnMonitor;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScreenOnDetail()Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_8e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_25
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_a8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_cb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " setDisp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " blockScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_8e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_a8
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_c8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    :cond_c8
    move-object v1, v4

    goto/16 :goto_44

    :cond_cb
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_eb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    :cond_eb
    move-object v0, v4

    goto/16 :goto_63
.end method

.method private getTimeoutSummary()Ljava/lang/String;
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const-string/jumbo v0, "Abnormal in setting display state"

    return-object v0

    :cond_12
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    const-string/jumbo v0, "Abnormal in blocking screen on"

    return-object v0

    :cond_22
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const-string/jumbo v0, "Abnormal in setting brightness"

    return-object v0

    :cond_32
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    const-string/jumbo v0, "Abnormal before setting screen state"

    return-object v0

    :cond_3c
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    const-string/jumbo v0, "Abnormal before setting display state"

    return-object v0

    :cond_46
    const-string/jumbo v0, "Abnormal in setting display state and blocking screen on"

    return-object v0
.end method

.method private getWakeupSrcIndex(Ljava/lang/String;)I
    .registers 3

    const-string/jumbo v0, "android.policy:POWER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const-string/jumbo v0, "miui.policy:FINGERPRINT_DPAD_CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    return v0

    :cond_16
    const-string/jumbo v0, "keyguard_screenon_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    return v0

    :cond_21
    const-string/jumbo v0, "keyguard_screenon_finger_pass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x4

    return v0

    :cond_2c
    const-string/jumbo v0, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "android.policy:LID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3e
    const/4 v0, 0x5

    return v0

    :cond_40
    const-string/jumbo v0, "lid switch open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, -0x1

    return v0
.end method

.method private handleRecordTime(IJ)V
    .registers 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    return-void

    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_e

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    return-void

    :cond_e
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    return-void

    :cond_15
    packed-switch p1, :pswitch_data_46

    :cond_18
    :goto_18
    :pswitch_18
    return-void

    :pswitch_19
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    goto :goto_18

    :pswitch_22
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    goto :goto_18

    :pswitch_2b
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    goto :goto_18

    :pswitch_34
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    goto :goto_18

    :pswitch_3d
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    goto :goto_18

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_19
        :pswitch_22
        :pswitch_2b
        :pswitch_3d
        :pswitch_18
        :pswitch_18
        :pswitch_34
    .end packed-switch
.end method

.method private handleReport(Z)V
    .registers 44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    move-wide/from16 v40, v0

    sub-long v28, v38, v40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ScreenOnMonitor;->getScreenOnDetail()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "ScreenOnMonitor"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " keyDrawn:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v31, v38, v40

    if-eqz v31, :cond_63

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    move-wide/from16 v38, v0

    sub-long v38, v22, v38

    const-wide/32 v40, 0xdbba00

    cmp-long v31, v38, v40

    if-lez v31, :cond_b9

    :cond_63
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    new-instance v25, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct/range {v25 .. v25}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeoutSummary(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setmTimeOutDetail(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/ScreenOnMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeStamp(Ljava/lang/String;)V

    const-string/jumbo v31, "lt_screen_on"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    :cond_b9
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    :cond_c1
    if-eqz p1, :cond_666

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    const-wide/16 v40, 0x3e8

    cmp-long v31, v38, v40

    if-gez v31, :cond_666

    sget-object v31, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_666

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    move-wide/from16 v40, v0

    sub-long v32, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    move-wide/from16 v40, v0

    sub-long v34, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    move-wide/from16 v40, v0

    sub-long v20, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-boolean v31, v31, v38

    if-eqz v31, :cond_159

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget v39, v31, v38

    add-int/lit8 v39, v39, 0x1

    aput v39, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v40, v31, v38

    add-long v40, v40, v32

    aput-wide v40, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v40, v31, v38

    add-long v40, v40, v34

    aput-wide v40, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v40, v31, v38

    add-long v40, v40, v20

    aput-wide v40, v31, v38

    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget v31, v31, v38

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x32

    cmp-long v31, v38, v40

    if-nez v31, :cond_26e

    new-instance v25, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct/range {v25 .. v25}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v38, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v40, 0x0

    aget v31, v31, v40

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v38, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v40, 0x0

    aget v31, v31, v40

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aget-wide v38, v31, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v40, 0x0

    aget v31, v31, v40

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    const-string/jumbo v31, "avg_screen_on"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    aput-wide v38, v31, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    aput-wide v38, v31, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    aput-wide v38, v31, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput v38, v31, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    move-object/from16 v31, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput-boolean v38, v31, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    move-object/from16 v31, v0

    const/16 v38, 0x0

    const/16 v39, 0x31

    move-object/from16 v0, v31

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    sget-object v31, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/ScreenOnMonitor;->getWakeupSrcIndex(Ljava/lang/String;)I

    move-result v26

    const/16 v31, -0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-ne v0, v1, :cond_285

    return-void

    :cond_285
    const/16 v31, 0x4

    move/from16 v0, v26

    move/from16 v1, v31

    if-ne v0, v1, :cond_4e0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v31, v38, v40

    if-eqz v31, :cond_4e0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v31, v38, v40

    if-eqz v31, :cond_4e0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    move-wide/from16 v40, v0

    sub-long v6, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    move-wide/from16 v40, v0

    sub-long v36, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    move-wide/from16 v40, v0

    sub-long v4, v38, v40

    const-wide/16 v38, 0x0

    cmp-long v31, v6, v38

    if-lez v31, :cond_343

    const-wide/16 v38, 0x0

    cmp-long v31, v36, v38

    if-lez v31, :cond_343

    const-wide/16 v38, 0x0

    cmp-long v31, v20, v38

    if-lez v31, :cond_343

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAuthenticateTime:J

    move-wide/from16 v38, v0

    add-long v38, v38, v6

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAuthenticateTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    move-wide/from16 v38, v0

    add-long v38, v38, v36

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    move-wide/from16 v38, v0

    add-long v38, v38, v20

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSetDisplayTime:J

    move-wide/from16 v38, v0

    add-long v38, v38, v34

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSetDisplayTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    move-wide/from16 v38, v0

    add-long v38, v38, v4

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalKeyguardDrawn:J

    move-wide/from16 v38, v0

    add-long v38, v38, v28

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mTotalKeyguardDrawn:J

    :cond_343
    const-string/jumbo v31, "ScreenOnMonitor"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "fingerWakeup:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " all:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " setDisp:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " keyDrawn:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x32

    cmp-long v31, v38, v40

    if-nez v31, :cond_4e0

    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    :try_start_3c2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAuthenticateTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v10, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v18, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v12, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSetDisplayTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v16, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v8, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalKeyguardDrawn:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v14, v38, v40

    const-string/jumbo v31, "authenticatedTime"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v31, "wakeupTime"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "authen:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "##suc2wake:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "##blockScr:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v31, "ext"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "all:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "##setDisp:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "##keyDrawn:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v31

    const-string/jumbo v38, "fingerprintScreenOn"

    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_4e0
    .catch Lorg/json/JSONException; {:try_start_3c2 .. :try_end_4e0} :catch_667

    :cond_4e0
    :goto_4e0
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    move-object/from16 v31, v0

    aget-boolean v31, v31, v26

    if-eqz v31, :cond_52a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    aget v38, v31, v26

    add-int/lit8 v38, v38, 0x1

    aput v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    add-long v38, v38, v32

    aput-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    add-long v38, v38, v34

    aput-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    add-long v38, v38, v20

    aput-wide v38, v31, v26

    :cond_52a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    aget v31, v31, v26

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x32

    cmp-long v31, v38, v40

    if-nez v31, :cond_666

    new-instance v25, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct/range {v25 .. v25}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    aget v31, v31, v26

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    aget v31, v31, v26

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    aget-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    aget v31, v31, v26

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    sget-object v31, Lmiui/mqsas/sdk/event/ScreenOnEvent;->TYPE_SCREEN_ON:[Ljava/lang/String;

    aget-object v31, v31, v26

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    aput-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    aput-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    move-object/from16 v31, v0

    const-wide/16 v38, 0x0

    aput-wide v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aput v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    move-object/from16 v31, v0

    const/16 v38, 0x0

    aput-boolean v38, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    move-object/from16 v31, v0

    const/16 v38, 0x31

    move-object/from16 v0, v31

    move/from16 v1, v26

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    sget-object v31, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ScreenOnMonitor;->needRecordScreenOn()Z

    move-result v31

    if-nez v31, :cond_666

    sget-object v31, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_666
    return-void

    :catch_667
    move-exception v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4e0
.end method

.method private handleScreenOnTimeout()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getTimeoutSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    const-string/jumbo v0, "ScreenOnMonitor"

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V
    .registers 6

    const-wide/16 v2, 0x0

    :try_start_2
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_57

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_4b
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_57

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_57
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method private handleStopMonitor(Z)V
    .registers 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    :cond_28
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    return-void
.end method

.method private isDisableUpload()Z
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->STABLE_SUPPORT_DEVICE:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private needRecordScreenOn()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_10

    aget-boolean v0, v3, v1

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method private toCalendarTime(J)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordTime(I)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startMonitor(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopMonitor(II)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    if-ne v0, v2, :cond_21

    if-eq p2, v2, :cond_21

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    iput p2, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    return-void

    :cond_21
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c
.end method
