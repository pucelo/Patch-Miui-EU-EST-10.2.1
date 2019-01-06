.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ProfilerInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProfilerInfo"


# instance fields
.field public final agent:Ljava/lang/String;

.field public final autoStopProfiler:Z

.field public profileFd:Landroid/os/ParcelFileDescriptor;

.field public final profileFile:Ljava/lang/String;

.field public final samplingInterval:I

.field public final streamingOutput:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/ProfilerInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :goto_19
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    :goto_30
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_19

    :cond_3b
    move v0, v2

    goto :goto_28

    :cond_3d
    move v1, v2

    goto :goto_30
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public closeFd()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_c

    :try_start_5
    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_d

    :goto_a
    iput-object v3, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "ProfilerInfo"

    const-string/jumbo v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public describeContents()I
    .registers 2

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-eqz v0, :cond_31

    move v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-eqz v0, :cond_33

    :goto_24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    :cond_31
    move v0, v2

    goto :goto_1d

    :cond_33
    move v1, v2

    goto :goto_24
.end method
