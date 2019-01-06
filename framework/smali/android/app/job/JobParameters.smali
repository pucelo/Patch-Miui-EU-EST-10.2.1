.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_CANCELED:I = 0x0

.field public static final REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final REASON_DEVICE_IDLE:I = 0x4

.field public static final REASON_PREEMPT:I = 0x2

.field public static final REASON_TIMEOUT:I = 0x3


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private final mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final mTriggeredContentUris:[Landroid/net/Uri;

.field private final overrideDeadlineExpired:Z

.field private stopReason:I

.field private final transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZ[Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    iput-object p4, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput p6, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    iput-boolean p7, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    iput-object p8, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    iput-object p9, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    :goto_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_59

    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    return-void

    :cond_53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput v2, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_2d

    :cond_59
    move v0, v2

    goto :goto_3a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getReasonName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "canceled"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "constraints"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "preempt"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "timeout"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "device_idle"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public completeWork(Landroid/app/job/JobWorkItem;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Given work is not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_32
    return-void
.end method

.method public dequeueWork()Landroid/app/job/JobWorkItem;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getJobId()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public getStopReason()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    return v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeredContentUris()[Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public isOverrideDeadlineExpired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public setStopReason(I)V
    .registers 2

    iput p1, p0, Landroid/app/job/JobParameters;->stopReason:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v2, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    if-eqz v2, :cond_3e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget v2, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    iget-object v2, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v2, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    if-eqz v2, :cond_42

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    :cond_42
    move v0, v1

    goto :goto_2b
.end method
