.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# static fields
.field static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const/16 v0, 0x2710

    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    const/16 v3, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    iput v3, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const-string/jumbo v0, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-string/jumbo v0, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const-string/jumbo v0, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .registers 1

    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMaxManifestReceiverApiLevel()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public getTemporaryAppWhitelistDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-wide v0
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .registers 2

    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .registers 2

    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .registers 4

    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_15

    const-string/jumbo v1, "android:broadcast.temporaryAppWhitelistDuration"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_21

    const-string/jumbo v1, "android:broadcast.minManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_21
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2f

    const-string/jumbo v1, "android:broadcast.maxManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2f
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :cond_36
    return-object v0
.end method
