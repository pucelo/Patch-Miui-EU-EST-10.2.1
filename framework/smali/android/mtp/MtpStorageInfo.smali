.class public final Landroid/mtp/MtpStorageInfo;
.super Ljava/lang/Object;
.source "MtpStorageInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFreeSpace:J

.field private mMaxCapacity:J

.field private mStorageId:I

.field private mVolumeIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreeSpace()J
    .registers 3

    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mFreeSpace:J

    return-wide v0
.end method

.method public final getMaxCapacity()J
    .registers 3

    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mMaxCapacity:J

    return-wide v0
.end method

.method public final getStorageId()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpStorageInfo;->mStorageId:I

    return v0
.end method

.method public final getVolumeIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mVolumeIdentifier:Ljava/lang/String;

    return-object v0
.end method
