.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field private static final SLOW_OPERATION_THRESHOLD_MS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field public static final VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsLoaded:Z

.field private static mPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPerfHintFunc:Ljava/lang/reflect/Method;

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static mReleaseHandlerFunc:Ljava/lang/reflect/Method;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->mIsLoaded:Z

    sput-object v1, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const-class v3, Landroid/util/BoostFramework;

    monitor-enter v3

    :try_start_9
    sget-boolean v2, Landroid/util/BoostFramework;->mIsLoaded:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_9e

    if-nez v2, :cond_74

    :try_start_d
    const-string/jumbo v2, "com.qualcomm.qti.Performance"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-class v2, [I

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockAcquire"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfHint"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockRelease"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    sput-boolean v2, Landroid/util/BoostFramework;->mIsLoaded:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_74} :catch_82
    .catchall {:try_start_d .. :try_end_74} :catchall_9e

    :cond_74
    :goto_74
    monitor-exit v3

    :try_start_75
    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    if-eqz v2, :cond_81

    sget-object v2, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_81} :catch_a1

    :cond_81
    :goto_81
    return-void

    :catch_82
    move-exception v1

    :try_start_83
    const-string/jumbo v2, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BoostFramework() : Exception_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_83 .. :try_end_9d} :catchall_9e

    goto :goto_74

    :catchall_9e
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_a1
    move-exception v1

    const-string/jumbo v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BoostFramework() : Exception_2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p1

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    const-string/jumbo v2, "BoostFramework"

    const-string/jumbo v3, "Slow Operation: BoostFrameWork %s took %sms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method


# virtual methods
.method public perfHint(ILjava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;II)I
    .registers 15

    const/4 v1, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v3, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "perfHint"

    invoke-direct {p0, v4, v5, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    :goto_34
    return v1

    :catch_35
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public varargs perfLockAcquire(I[I)I
    .registers 13

    const/4 v1, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v3, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "perfLockAcquire"

    invoke-direct {p0, v4, v5, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    :goto_26
    return v1

    :catch_27
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public perfLockRelease()I
    .registers 9

    const/4 v1, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v3, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "perfLockRelease"

    invoke-direct {p0, v4, v5, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    :goto_1c
    return v1

    :catch_1d
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public perfLockReleaseHandler(I)I
    .registers 12

    const/4 v1, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v3, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "perfLockReleaseHandler"

    invoke-direct {p0, v4, v5, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    :goto_23
    return v1

    :catch_24
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
