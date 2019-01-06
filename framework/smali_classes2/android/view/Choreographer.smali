.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$1;,
        Landroid/view/Choreographer$2;,
        Landroid/view/Choreographer$3;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MIUI_OPTS_INPUT:Z

.field private static final MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final OPTS_INPUT:Z

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mConsumedDown:Z

.field private mConsumedMove:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mMotionEventType:I

.field private mNeedAdvancedSf:Z

.field private mPerformedTraversal:Z

.field private mTouchMoveNum:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "persist.vendor.qti.inputopts.enable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->OPTS_INPUT:Z

    const-string/jumbo v0, "persist.sys.enable_inputopts"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z

    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    const-string/jumbo v0, "debug.choreographer.vsync"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    const-string/jumbo v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    const-string/jumbo v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "input"

    aput-object v1, v0, v3

    const-string/jumbo v1, "animation"

    aput-object v1, v0, v2

    const-string/jumbo v1, "traversal"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "commit"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    iput v3, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput v3, p0, Landroid/view/Choreographer;->mMotionEventType:I

    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    new-instance v1, Landroid/view/FrameInfo;

    invoke-direct {v1}, Landroid/view/FrameInfo;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_55

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    :goto_2e
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v1

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float v1, v3, v1

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    const/4 v0, 0x0

    :goto_46
    const/4 v1, 0x3

    if-gt v0, v1, :cond_57

    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_55
    move-object v1, v2

    goto :goto_2e

    :cond_57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private dispose()V
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 3

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    if-nez v0, :cond_11

    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord;)V

    :goto_a
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    return-object v0

    :cond_11
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_a
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 14

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-boolean v3, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z

    if-eqz v3, :cond_a

    if-ne p1, v7, :cond_a

    iput-boolean v6, p0, Landroid/view/Choreographer;->mPerformedTraversal:Z

    :cond_a
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, v4, p4

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    cmp-long v3, v0, v4

    if-gtz v3, :cond_23

    invoke-direct {p0, v4, v5}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_36

    :goto_21
    monitor-exit v6

    return-void

    :cond_23
    :try_start_23
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_36

    goto :goto_21

    :catchall_36
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public static releaseInstance()V
    .registers 2

    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .registers 14

    const-wide/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_65

    iput-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    sget-boolean v1, Landroid/view/Choreographer;->OPTS_INPUT:Z

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleFrameLocked-mMotionEventType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/Choreographer;->mMotionEventType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " mTouchMoveNum:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " mConsumedDown:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " mConsumedMove:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-enter p0

    :try_start_52
    iget v1, p0, Landroid/view/Choreographer;->mMotionEventType:I
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_ab

    packed-switch v1, :pswitch_data_da

    :cond_57
    :goto_57
    monitor-exit p0

    :cond_58
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_bd

    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    :cond_65
    :goto_65
    return-void

    :pswitch_66
    const/4 v1, 0x0

    :try_start_67
    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    if-nez v1, :cond_57

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_ab

    monitor-exit p0

    return-void

    :pswitch_82
    const/4 v1, 0x0

    :try_start_83
    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iget v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    if-ne v1, v8, :cond_57

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z
    :try_end_a2
    .catchall {:try_start_83 .. :try_end_a2} :catchall_ab

    monitor-exit p0

    return-void

    :pswitch_a4
    const/4 v1, 0x0

    :try_start_a5
    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_ab

    goto :goto_57

    :catchall_ab
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_ae
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_65

    :cond_bd
    iget-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v4, v6

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v9}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_65

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_66
        :pswitch_a4
        :pswitch_82
        :pswitch_a4
    .end packed-switch
.end method

.method private scheduleVsyncLocked()V
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    return-void
.end method

.method public static setFrameDelay(J)V
    .registers 2

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static subtractFrameDelay(J)J
    .registers 6

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    :goto_8
    return-wide v2

    :cond_9
    sub-long v2, p0, v0

    goto :goto_8
.end method


# virtual methods
.method doCallbacks(IJ)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v11, v11, p1

    const-wide/32 v16, 0xf4240

    div-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_70

    move-result-object v5

    if-nez v5, :cond_1e

    monitor-exit v14

    return-void

    :cond_1e
    const/4 v11, 0x1

    :try_start_1f
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v0, v11, :cond_5b

    sub-long v6, v12, p2

    const-string/jumbo v11, "jitterNanos"

    long-to-int v15, v6

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v11, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v16, v16, v18

    cmp-long v11, v6, v16

    if-ltz v11, :cond_5b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v16, v6, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    sub-long p2, v12, v8

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_70

    :cond_5b
    monitor-exit v14

    :try_start_5c
    sget-object v11, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v11, v11, p1

    const-wide/16 v14, 0x8

    invoke-static {v14, v15, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v4, v5

    :goto_66
    if-eqz v4, :cond_73

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    iget-object v4, v4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_91

    goto :goto_66

    :catchall_70
    move-exception v11

    monitor-exit v14

    throw v11

    :cond_73
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v11, 0x0

    :try_start_79
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :cond_7d
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_8e

    move-object v5, v10

    if-nez v10, :cond_7d

    monitor-exit v14

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8e
    move-exception v11

    monitor-exit v14

    throw v11

    :catchall_91
    move-exception v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x0

    :try_start_98
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :cond_9c
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_a3
    .catchall {:try_start_98 .. :try_end_a3} :catchall_ad

    move-object v5, v10

    if-nez v10, :cond_9c

    monitor-exit v14

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v11

    :catchall_ad
    move-exception v11

    monitor-exit v14

    throw v11
.end method

.method doFrame(JI)V
    .registers 23

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_ed

    if-nez v14, :cond_d

    monitor-exit v15

    return-void

    :cond_d
    move-wide/from16 v4, p1

    :try_start_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v6, v12, p1

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    cmp-long v14, v6, v16

    if-ltz v14, :cond_6b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    div-long v10, v6, v16

    sget v14, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v14, v10, v16

    if-ltz v14, :cond_61

    const-string/jumbo v14, "Choreographer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Skipped "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " frames!  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "The application may be doing too much work on its main thread."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x7589

    invoke-static {v14, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_61
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v8, v6, v16

    sub-long p1, v12, v8

    :cond_6b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v6, v7, v0, v1}, Landroid/os/Looper;->logLateFrameIfNeed(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v16, v0

    cmp-long v14, p1, v16

    if-gez v14, :cond_83

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_81
    .catchall {:try_start_f .. :try_end_81} :catchall_ed

    monitor-exit v15

    return-void

    :cond_83
    :try_start_83
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v4, v5, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_ed

    monitor-exit v15

    :try_start_98
    const-string/jumbo v14, "Choreographer#doFrame"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide/32 v14, 0xf4240

    div-long v14, p1, v14

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v14}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v14}, Landroid/view/FrameInfo;->markAnimationsStart()V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v14}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_df
    .catchall {:try_start_98 .. :try_end_df} :catchall_f0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/Choreographer;->mNeedAdvancedSf:Z

    return-void

    :catchall_ed
    move-exception v14

    monitor-exit v15

    throw v14

    :catchall_f0
    move-exception v14

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v14
.end method

.method doScheduleCallback(I)V
    .registers 6

    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v2, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v3

    return-void

    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method doScheduleVsync()V
    .registers 3

    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFrameIntervalNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .registers 5

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .registers 4

    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_13
    :try_start_13
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_10

    :goto_19
    monitor-exit v2

    return-wide v0

    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_10

    move-result-wide v0

    goto :goto_19
.end method

.method public getLastFrameTimeNanos()J
    .registers 4

    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    :goto_9
    monitor-exit v2

    return-wide v0

    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    move-result-wide v0

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public needAdvancedSf()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/Choreographer;->mNeedAdvancedSf:Z

    return v0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8

    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ltz p1, :cond_10

    const/4 v0, 0x3

    if-le p1, v0, :cond_19

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setMotionEventInfo(II)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMotionEventInfo_MIUI(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    iput-boolean v2, p0, Landroid/view/Choreographer;->mPerformedTraversal:Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    iget-boolean v1, p0, Landroid/view/Choreographer;->mPerformedTraversal:Z

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "Choreographer"

    const-string/jumbo v2, "OPTS_INPUT: First frame was drawed before optimized, so skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iput-boolean v3, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v3, p0, Landroid/view/Choreographer;->mNeedAdvancedSf:Z

    goto :goto_a
.end method
