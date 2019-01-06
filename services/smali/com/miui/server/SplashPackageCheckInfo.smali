.class public Lcom/miui/server/SplashPackageCheckInfo;
.super Ljava/lang/Object;
.source "SplashPackageCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SplashPackageCheckInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE:J = -0x1L


# instance fields
.field private mEndCheckTime:J

.field private mSplashPackageName:Ljava/lang/String;

.field private mStartCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/server/SplashPackageCheckInfo$1;

    invoke-direct {v0}, Lcom/miui/server/SplashPackageCheckInfo$1;-><init>()V

    sput-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    iput-wide p4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    return-void
.end method

.method private static getDateString(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "IGNORE"

    return-object v2

    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v1

    const-string/jumbo v2, "ERROR"

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSplashPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .registers 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public matchTime()Z
    .registers 9

    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_14

    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_21

    :cond_14
    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_20

    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_22

    :cond_20
    :goto_20
    move v3, v2

    :cond_21
    return v3

    :cond_22
    move v2, v3

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SplashPackageCheckInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
