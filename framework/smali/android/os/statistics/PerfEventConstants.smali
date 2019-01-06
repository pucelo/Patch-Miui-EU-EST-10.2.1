.class public Landroid/os/statistics/PerfEventConstants;
.super Ljava/lang/Object;
.source "PerfEventConstants.java"


# static fields
.field private static final EVENT_TYPE_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final FIELD_END_REAL_TIME:Ljava/lang/String; = "endRealTime"

.field public static final FIELD_END_TIME:Ljava/lang/String; = "endTime"

.field public static final FIELD_EVENT_FLAGS:Ljava/lang/String; = "eventFlags"

.field public static final FIELD_OCCUR_TIME:Ljava/lang/String; = "occurTime"

.field public static final FIELD_RUNNABLE_TIME:Ljava/lang/String; = "runnableTime"

.field public static final FIELD_RUNNING_TIME:Ljava/lang/String; = "runningTime"

.field public static final FIELD_SCHED_GROUP:Ljava/lang/String; = "schedGroup"

.field public static final FIELD_SCHED_POLICY:Ljava/lang/String; = "policy"

.field public static final FIELD_SCHED_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_SLEEPING_TIME:Ljava/lang/String; = "sleepingTime"

.field public static final FIELD_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final FIELD_THREAD_NAME:Ljava/lang/String; = "threadName"

.field public static final MACRO_EVENT_TYPE_COUNT:I = 0x7

.field public static final MACRO_EVENT_TYPE_START:I = 0x10000

.field public static final MAX_PERF_EVENT_PARCEL_SIZE:I = 0x1000

.field public static final MICRO_EVENT_TYPE_COUNT:I = 0xd

.field public static final MICRO_EVENT_TYPE_START:I = 0x0

.field public static final TYPE_BINDER_STARVATION:I = 0x10004

.field public static final TYPE_E2ESCENARIO_ONCE:I = 0x10005

.field public static final TYPE_LOOPER_CHECKPOINT:I = 0xc

.field public static final TYPE_LOOPER_ONCE:I = 0xb

.field public static final TYPE_MEMORY_SLOWPATH:I = 0x10006

.field public static final TYPE_PLACE_HOLDER_1:I = 0x10001

.field public static final TYPE_PLACE_HOLDER_2:I = 0x10003

.field public static final TYPE_SINGLE_BINDER_CALL:I = 0x4

.field public static final TYPE_SINGLE_BINDER_EXECUTION:I = 0x5

.field public static final TYPE_SINGLE_CONDITION_AWAKEN:I = 0x2

.field public static final TYPE_SINGLE_CONDITION_WAIT:I = 0x3

.field public static final TYPE_SINGLE_EVENT_LOG_ITEM:I = 0x10000

.field public static final TYPE_SINGLE_INPUT_EVENT:I = 0x9

.field public static final TYPE_SINGLE_JANK_RECORD:I = 0x10002

.field public static final TYPE_SINGLE_JNI_METHOD:I = 0xa

.field public static final TYPE_SINGLE_LOCK_HOLD:I = 0x0

.field public static final TYPE_SINGLE_LOCK_WAIT:I = 0x1

.field public static final TYPE_SINGLE_LOOPER_MESSAGE:I = 0x8

.field public static final TYPE_SINGLE_SYSTEM_TRACE_EVENT:I = 0x7

.field public static final TYPE_SINGLE_TRACE_POINT:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "LockHold"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "LockWait"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "ConditionAwaken"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "ConditionWait"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "BinderCall"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "BinderExecution"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "TracePoint"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "SystemTraceEvent"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "LooperMessage"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "InputEvent"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "JniMethod"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "LooperOnce"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "LooperCheckPoint"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "EventLog"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "JankRecord"

    const v2, 0x10002

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "BinderStarvation"

    const v2, 0x10004

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "E2EScenarioOnce"

    const v2, 0x10005

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "MemorySlowpath"

    const v2, 0x10006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "UnKnown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
