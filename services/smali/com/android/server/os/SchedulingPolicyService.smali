.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    return-void
.end method

.method private isPermitted()Z
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    const/4 v0, 0x0

    return v0

    :sswitch_15
    return v2

    :sswitch_data_16
    .sparse-switch
        0x3ea -> :sswitch_15
        0x411 -> :sswitch_15
        0x417 -> :sswitch_15
    .end sparse-switch
.end method


# virtual methods
.method public requestPriority(IIIZ)I
    .registers 10

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    if-ge p3, v1, :cond_b

    :cond_a
    return v4

    :cond_b
    const/4 v1, 0x3

    if-gt p3, v1, :cond_a

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    if-ne v1, p1, :cond_a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_22

    if-nez p4, :cond_2a

    const/4 v1, 0x4

    :goto_1f
    :try_start_1f
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_2c

    :cond_22
    const v1, 0x40000001    # 2.0000002f

    :try_start_25
    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_48

    const/4 v1, 0x0

    return v1

    :cond_2a
    const/4 v1, 0x6

    goto :goto_1f

    :catch_2c
    move-exception v0

    const-string/jumbo v1, "SchedulingPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setThreadGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_48
    move-exception v0

    const-string/jumbo v1, "SchedulingPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setThreadScheduler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
