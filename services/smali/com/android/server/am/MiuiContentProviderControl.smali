.class public Lcom/android/server/am/MiuiContentProviderControl;
.super Ljava/lang/Object;
.source "MiuiContentProviderControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;
    }
.end annotation


# static fields
.field static final CALLER_TYPE_APP:I = 0x64

.field static final CALLER_TYPE_EXTERNAL:I = 0x65

.field static final CALLER_TYPE_PROVIDER_CONTROL:I = 0x66

.field static final DEBUG_CONTROL_PROVIDER_STARTS:Z = false

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field public static final MAIN_THREAD_ID:I = 0x1

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MSG_NOTIFY_WAIT_THREAD_WHEN_PROVIDER_REMOVED:I = 0x66

.field static final MSG_START_PROVIDER:I = 0x65

.field private static final PROP_MCPC_OPEN_DEFAULT:Ljava/lang/String; = "persist.sys.mcpc_open"

.field static final SHORT_DELAY:J = 0x5L

.field static final TAG:Ljava/lang/String;

.field static final THREAD_ID_CALLER_TYPE_EXTERNAL:I = -0x3e8

.field static mInstance:Lcom/android/server/am/MiuiContentProviderControl;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private enableProviderControl:Z

.field private fWaitProcessStart:Ljava/lang/reflect/Field;

.field private lasEnforcedTime:J

.field private logBuilder:Ljava/lang/StringBuilder;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

.field private mNotifyProviderReady:Ljava/lang/reflect/Method;

.field private final mProviderInfoCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/StartProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/StartProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

.field private mWorkThread:Lcom/android/server/ServiceThread;

.field private maxSize:I

.field private sendNoDelayEnforcedMsg:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MiuiContentProviderControl;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MiuiContentProviderControl;Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiContentProviderControl;->enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MiuiContentProviderControl;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiContentProviderControl;->rescheduleProviderListLocked(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/am/MiuiContentProviderControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->MAX_SIZE:I

    iput v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    iput-boolean v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    iput-boolean v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    iput-boolean v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    iput-boolean v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    :try_start_28
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "getContentProviderImpl"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    const-class v1, Landroid/app/IApplicationThread;

    const-string/jumbo v2, "notifyProviderReady"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/app/ContentProviderHolder;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    const-class v1, Landroid/app/ContentProviderHolder;

    const-string/jumbo v2, "waitProcessStart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7c} :catch_87

    :goto_7c
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    if-nez v1, :cond_8c

    :cond_84
    iput-boolean v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    return-void

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    :cond_8c
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_84

    iput-object p1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    new-instance v1, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;-><init>(Lcom/android/server/am/MiuiContentProviderControl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    return-void
.end method

.method private enforceGetContentProviderImpl(Lcom/android/server/am/StartProviderInfo;)Landroid/app/ContentProviderHolder;
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-boolean v4, p1, Lcom/android/server/am/StartProviderInfo;->mStable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p1, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-wide v4, p1, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ContentProviderHolder;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    return-object v1

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V
    .registers 9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public static getInstance()Lcom/android/server/am/MiuiContentProviderControl;
    .registers 1

    sget-object v0, Lcom/android/server/am/MiuiContentProviderControl;->mInstance:Lcom/android/server/am/MiuiContentProviderControl;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    new-instance v0, Lcom/android/server/am/MiuiContentProviderControl;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiContentProviderControl;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiContentProviderControl;->mInstance:Lcom/android/server/am/MiuiContentProviderControl;

    return-void
.end method

.method private isWaitProcessStart(Landroid/app/ContentProviderHolder;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V
    .registers 5

    const-string/jumbo v0, "#SPInfo : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " CallerPkg : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " Name : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " CallerThreadId : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, " Delay : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private rescheduleProviderListLocked(J)V
    .registers 12

    const/16 v8, 0x65

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v4, :cond_8

    return-void

    :cond_8
    iget-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_be

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_be

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/StartProviderInfo;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartProviderInfo;

    :cond_2f
    if-eqz v2, :cond_e3

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-gt v4, v5, :cond_dc

    iput-boolean v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    iget-wide v4, v2, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    :goto_42
    iget-wide v4, v3, Lcom/android/server/am/StartProviderInfo;->mCallingIdentity:J

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ProviderControl enforce Provider : callerPkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, " name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, " callerUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, " callerPid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/server/am/MiuiContentProviderControl;->enforceGetContentProviderImpl(Lcom/android/server/am/StartProviderInfo;)Landroid/app/ContentProviderHolder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    if-eqz v0, :cond_ad

    invoke-direct {p0, v0}, Lcom/android/server/am/MiuiContentProviderControl;->isWaitProcessStart(Landroid/app/ContentProviderHolder;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b0

    :cond_ad
    invoke-direct {p0, v3, v0}, Lcom/android/server/am/MiuiContentProviderControl;->enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    :cond_b0
    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-wide v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long/2addr v6, p1

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_be
    iget-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-lez v4, :cond_db

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_db

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-object v5, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_db
    return-void

    :cond_dc
    const-wide/16 v4, 0x5

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    goto/16 :goto_42

    :cond_e3
    const-wide/16 v4, 0x96

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    goto/16 :goto_42
.end method


# virtual methods
.method public addProviderInfoLocked(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;ZIJ)Z
    .registers 30

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    if-nez v3, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v3, v4, :cond_10

    :cond_e
    const/4 v3, 0x0

    return v3

    :cond_10
    const-wide/16 v4, 0x1

    cmp-long v3, p8, v4

    if-eqz v3, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_bc

    new-instance v2, Lcom/android/server/am/StartProviderInfo;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/StartProviderInfo;-><init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJ)V

    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    if-le v3, v4, :cond_5e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_90

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    if-nez v3, :cond_90

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ba

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    cmp-long v3, v18, v4

    if-ltz v3, :cond_dd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_ba
    :goto_ba
    const/4 v3, 0x1

    return v3

    :cond_bc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartProviderInfo;

    const-wide/16 v14, 0x96

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/StartProviderInfo;->reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V

    goto/16 :goto_3d

    :cond_dd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long v4, v4, v18

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ba
.end method

.method public callerIsTopAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v1, :cond_6

    return v3

    :cond_6
    if-eqz p1, :cond_31

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, v2, :cond_31

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_31

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    return v3

    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public closeProviderControl()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    if-nez v0, :cond_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_17

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v1, "  MIUI ADD :  MCPC dump start : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, " canOpen : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, " enableProviderControl : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, " closeCheck : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, " lasEnforcedTime : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v1, "maxSize : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v1, "#  ProviderInfoList : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MiuiContentProviderControl;->printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V

    goto :goto_49

    :cond_59
    const-string/jumbo v1, "#  ProviderInfoObjCache : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MiuiContentProviderControl;->printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V

    goto :goto_65

    :cond_75
    const-string/jumbo v1, "  MCPC dump END !!!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableProviderControlLocked()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    const-string/jumbo v0, "persist.sys.mcpc_open"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    :cond_14
    return-void
.end method

.method public openProviderControl()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    :cond_10
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeProviderInfoLocked(Ljava/lang/String;I)V
    .registers 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/StartProviderInfo;

    iget-object v4, v0, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    if-ne v4, p2, :cond_b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_40

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x66

    iput v4, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_40
    return-void
.end method
