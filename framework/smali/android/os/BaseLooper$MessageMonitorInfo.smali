.class Landroid/os/BaseLooper$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BaseLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseLooper$MessageMonitorInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BaseLooper$MessageMonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callbackName:Ljava/lang/String;

.field dispatchNanos:J

.field dispatchRunningMs:J

.field dispatchTime:J

.field finishNanos:J

.field finishRunningMs:J

.field finishTime:J

.field handlerName:Ljava/lang/String;

.field monitorDigest:Ljava/lang/String;

.field monitorMessage:Ljava/lang/String;

.field msgWhat:I

.field planTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo$1;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo$1;-><init>()V

    sput-object v0, Landroid/os/BaseLooper$MessageMonitorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createMonitorDigest()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getPlanTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getDispatchTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getDispatchTime()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    return-wide v0
.end method

.method getFinishTime()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    return-wide v0
.end method

.method getMonitorDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method getMonitorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-object v0
.end method

.method getPlanTime()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    return-wide v0
.end method

.method public getRunningTimeMs()J
    .registers 5

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunningMs:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunningMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getTookTime()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_e
    return-wide v2
.end method

.method getTookTimeAfterDispatch()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_e
    return-wide v2
.end method

.method getTookTimeBeforeDispatch()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_e
    return-wide v2
.end method

.method init(Landroid/os/Message;J)V
    .registers 6

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseLooper$MessageMonitorInfo;->initMessageTime(J)V

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_1a

    const-string/jumbo v0, ""

    :goto_a
    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->handlerName:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_25

    const-string/jumbo v0, ""

    :goto_13
    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    return-void

    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_25
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method initMessageTime(J)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    return-void
.end method

.method reset()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchNanos:J

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishNanos:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->handlerName:Ljava/lang/String;

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    return-void
.end method

.method setMonitorMessage(Landroid/os/Message;)V
    .registers 3

    invoke-static {p1}, Landroid/os/BaseLooper;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " planTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " dispatchTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " finishTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateMessageTimeByState(I)V
    .registers 4

    packed-switch p1, :pswitch_data_46

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchNanos:J

    invoke-static {}, Landroid/os/BaseLooper;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/statistics/OsUtils;->getRunningTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchRunningMs:J

    goto :goto_3

    :pswitch_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishNanos:J

    invoke-static {}, Landroid/os/BaseLooper;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/statistics/OsUtils;->getRunningTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishRunningMs:J

    goto :goto_3

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_4
        :pswitch_25
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
