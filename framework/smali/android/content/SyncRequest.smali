.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$1;,
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final mAccountToSync:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mDisallowMetered:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsAuthority:Z

.field private final mIsExpedited:Z

.field private final mIsPeriodic:Z

.field private final mSyncFlexTimeSecs:J

.field private final mSyncRunTimeSecs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/SyncRequest$1;

    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/SyncRequest$Builder;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get6(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get7(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get0(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get1(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get9(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_50

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get8(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_52

    :goto_2d
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get4(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get2(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get5(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get3(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    return-void

    :cond_50
    move v0, v2

    goto :goto_24

    :cond_52
    move v1, v2

    goto :goto_2d
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_22
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    move v0, v1

    :goto_34
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_54

    :goto_3c
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-void

    :cond_4e
    move v0, v2

    goto :goto_22

    :cond_50
    move v0, v2

    goto :goto_2b

    :cond_52
    move v0, v2

    goto :goto_34

    :cond_54
    move v1, v2

    goto :goto_3c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncRequest;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncFlexTime()J
    .registers 3

    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public getSyncRunTime()J
    .registers 3

    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public isExpedited()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    return v0
.end method

.method public isPeriodic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    if-eqz v0, :cond_41

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3b
    move v0, v2

    goto :goto_16

    :cond_3d
    move v0, v2

    goto :goto_1e

    :cond_3f
    move v0, v2

    goto :goto_26

    :cond_41
    move v1, v2

    goto :goto_2d
.end method
