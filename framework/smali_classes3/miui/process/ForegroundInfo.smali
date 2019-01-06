.class public Lmiui/process/ForegroundInfo;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/ForegroundInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/ForegroundInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND_COLD_START:I = 0x1


# instance fields
.field public mFlags:I

.field public mForegroundPackageName:Ljava/lang/String;

.field public mForegroundPid:I

.field public mForegroundUid:I

.field public mLastForegroundPackageName:Ljava/lang/String;

.field public mLastForegroundPid:I

.field public mLastForegroundUid:I

.field public mMultiWindowForegroundPackageName:Ljava/lang/String;

.field public mMultiWindowForegroundUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/process/ForegroundInfo$1;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo$1;-><init>()V

    sput-object v0, Lmiui/process/ForegroundInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/process/ForegroundInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/ForegroundInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/process/ForegroundInfo;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mFlags:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 3

    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isColdStart()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public resetFlags()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForegroundInfo{mForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mForegroundPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLastForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLastForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLastForegroundPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMultiWindowForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMultiWindowForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
