.class public Lmiui/mqsas/sdk/event/ScreenOnEvent;
.super Ljava/lang/Object;
.source "ScreenOnEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/ScreenOnEvent$1;
    }
.end annotation


# static fields
.field public static final AVG_SCREEN_ON:Ljava/lang/String; = "avg_screen_on"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/ScreenOnEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final LT_SCREEN_ON:Ljava/lang/String; = "lt_screen_on"

.field public static final TYPE_SCREEN_ON:[Ljava/lang/String;


# instance fields
.field private mBlockScreenTime:J

.field private mScreenOnType:Ljava/lang/String;

.field private mSetDisplayTime:J

.field private mTimeOutDetail:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalTime:J

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "avg_screen_on"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "power"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "dp_center"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyguard_screenon_notification"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyguard_screenon_finger_pass"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "lid"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->TYPE_SCREEN_ON:[Ljava/lang/String;

    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBlockScreenTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    return-wide v0
.end method

.method public getScreenOnType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDisplayTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    return-wide v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutSummary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    return-wide v0
.end method

.method public getWakeSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getmTimeOutDetail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockScreenTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    return-void
.end method

.method public setScreenOnType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-void
.end method

.method public setSetDisplayTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setTimeoutSummary(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    return-void
.end method

.method public setWakeSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    return-void
.end method

.method public setmTimeOutDetail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScreenOnEvent { mTimeoutSummary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTimeOutDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWakeSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTotalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSetDisplayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mBlockScreenTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mScreenOnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
