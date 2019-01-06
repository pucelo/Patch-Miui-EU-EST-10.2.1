.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Message$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final FLAG_ASYNCHRONOUS:I = 0x2

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static gCheckRecycle:Z

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field flags:I

.field monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field public sendingUid:I

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static synthetic -wrap0(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .registers 3

    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_1b

    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->flags:I

    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->sPoolSize:I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_22

    monitor-exit v2

    return-object v0

    :cond_1b
    monitor-exit v2

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput p1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_29

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    :cond_29
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/os/Message;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    return-void
.end method

.method public static updateCheckRecycle(I)V
    .registers 2

    const/16 v0, 0x15

    if-ge p0, v0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v0, p1, Landroid/os/Message;->sendingUid:I

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    :goto_2d
    return-void

    :cond_2e
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_2d
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .registers 3

    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public isAsynchronous()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method isInUse()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method markInUse()V
    .registers 2

    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .registers 3

    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This message cannot be recycled because it is still in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    return-void
.end method

.method recycleUnchecked()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    iput v1, p0, Landroid/os/Message;->what:I

    iput v1, p0, Landroid/os/Message;->arg1:I

    iput v1, p0, Landroid/os/Message;->arg2:I

    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    iput-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_26
    sget v0, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_38

    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    sget v0, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->sPoolSize:I
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendToTarget()V
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAsynchronous(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_8
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/Message;->when:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_80

    const-string/jumbo v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3b

    const-string/jumbo v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3b
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_4a

    const-string/jumbo v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4a
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_59

    const-string/jumbo v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_59
    const-string/jumbo v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_75
    :goto_75
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_80
    const-string/jumbo v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_8c
    const-string/jumbo v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_75
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can\'t marshal callbacks across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    :try_start_20
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_2b} :catch_40

    :goto_2b
    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    iget v2, p0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :catch_40
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4a
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/Message;->when:J

    const-wide v4, 0x10400000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_77

    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x10e00000002L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_28
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_36

    iget v2, p0, Landroid/os/Message;->arg1:I

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_36
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/os/Message;->arg2:I

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_44
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x10e00000006L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_56
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x10e00000007L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_68
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_6c
    iget v2, p0, Landroid/os/Message;->what:I

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_28

    :cond_77
    iget v2, p0, Landroid/os/Message;->arg1:I

    const-wide v4, 0x10300000008L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_68
.end method
