.class public final Landroid/view/WindowContentFrameStats;
.super Landroid/view/FrameStats;
.source "WindowContentFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowContentFrameStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowContentFrameStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFramesPostedTimeNano:[J

.field private mFramesReadyTimeNano:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/WindowContentFrameStats$1;

    invoke-direct {v0}, Landroid/view/WindowContentFrameStats$1;-><init>()V

    sput-object v0, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/WindowContentFrameStats;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/WindowContentFrameStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFramePostedTimeNano(I)J
    .registers 4

    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFrameReadyTimeNano(I)J
    .registers 4

    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public init(J[J[J[J)V
    .registers 7

    iput-wide p1, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    iput-object p3, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    iput-object p4, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    iput-object p5, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WindowContentFrameStats["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "frameCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getFrameCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", fromTimeNano:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getStartTimeNano()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", toTimeNano:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getEndTimeNano()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
