.class public Lcom/android/ims/internal/uce/common/CapInfo;
.super Ljava/lang/Object;
.source "CapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/common/CapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/common/CapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapTimestamp:J

.field private mCdViaPresenceSupported:Z

.field private mExts:[Ljava/lang/String;

.field private mFtHttpSupported:Z

.field private mFtSnFSupported:Z

.field private mFtSupported:Z

.field private mFtThumbSupported:Z

.field private mFullSnFGroupChatSupported:Z

.field private mGeoPullFtSupported:Z

.field private mGeoPullSupported:Z

.field private mGeoPushSupported:Z

.field private mImSupported:Z

.field private mIpVideoSupported:Z

.field private mIpVoiceSupported:Z

.field private mIsSupported:Z

.field private mRcsIpVideoCallSupported:Z

.field private mRcsIpVideoOnlyCallSupported:Z

.field private mRcsIpVoiceCallSupported:Z

.field private mSmSupported:Z

.field private mSpSupported:Z

.field private mVsDuringCSSupported:Z

.field private mVsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCapTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-wide v0
.end method

.method public getExts()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-object v0
.end method

.method public isCdViaPresenceSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return v0
.end method

.method public isFtHttpSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return v0
.end method

.method public isFtSnFSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return v0
.end method

.method public isFtSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return v0
.end method

.method public isFtThumbSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return v0
.end method

.method public isFullSnFGroupChatSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return v0
.end method

.method public isGeoPullFtSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return v0
.end method

.method public isGeoPullSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return v0
.end method

.method public isGeoPushSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return v0
.end method

.method public isImSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return v0
.end method

.method public isIpVideoSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return v0
.end method

.method public isIpVoiceSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return v0
.end method

.method public isIsSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return v0
.end method

.method public isRcsIpVideoCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return v0
.end method

.method public isRcsIpVideoOnlyCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return v0
.end method

.method public isRcsIpVoiceCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return v0
.end method

.method public isSmSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return v0
.end method

.method public isSpSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return v0
.end method

.method public isVsDuringCSSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return v0
.end method

.method public isVsSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c2

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c5

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c8

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_cb

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ce

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d1

    move v0, v1

    :goto_36
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d4

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d7

    move v0, v1

    :goto_48
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_da

    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_dd

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e0

    move v0, v1

    :goto_63
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e2

    move v0, v1

    :goto_6c
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e4

    move v0, v1

    :goto_75
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e6

    move v0, v1

    :goto_7e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e8

    move v0, v1

    :goto_87
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ea

    move v0, v1

    :goto_90
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ec

    move v0, v1

    :goto_99
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ee

    move v0, v1

    :goto_a2
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f0

    move v0, v1

    :goto_ab
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f2

    :goto_b3
    iput-boolean v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-void

    :cond_c2
    move v0, v2

    goto/16 :goto_9

    :cond_c5
    move v0, v2

    goto/16 :goto_12

    :cond_c8
    move v0, v2

    goto/16 :goto_1b

    :cond_cb
    move v0, v2

    goto/16 :goto_24

    :cond_ce
    move v0, v2

    goto/16 :goto_2d

    :cond_d1
    move v0, v2

    goto/16 :goto_36

    :cond_d4
    move v0, v2

    goto/16 :goto_3f

    :cond_d7
    move v0, v2

    goto/16 :goto_48

    :cond_da
    move v0, v2

    goto/16 :goto_51

    :cond_dd
    move v0, v2

    goto/16 :goto_5a

    :cond_e0
    move v0, v2

    goto :goto_63

    :cond_e2
    move v0, v2

    goto :goto_6c

    :cond_e4
    move v0, v2

    goto :goto_75

    :cond_e6
    move v0, v2

    goto :goto_7e

    :cond_e8
    move v0, v2

    goto :goto_87

    :cond_ea
    move v0, v2

    goto :goto_90

    :cond_ec
    move v0, v2

    goto :goto_99

    :cond_ee
    move v0, v2

    goto :goto_a2

    :cond_f0
    move v0, v2

    goto :goto_ab

    :cond_f2
    move v1, v2

    goto :goto_b3
.end method

.method public setCapTimestamp(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-void
.end method

.method public setCdViaPresenceSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return-void
.end method

.method public setExts([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-void
.end method

.method public setFtHttpSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return-void
.end method

.method public setFtSnFSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return-void
.end method

.method public setFtSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return-void
.end method

.method public setFtThumbSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return-void
.end method

.method public setFullSnFGroupChatSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return-void
.end method

.method public setGeoPullFtSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return-void
.end method

.method public setGeoPullSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return-void
.end method

.method public setGeoPushSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return-void
.end method

.method public setImSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return-void
.end method

.method public setIpVideoSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return-void
.end method

.method public setIpVoiceSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return-void
.end method

.method public setIsSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return-void
.end method

.method public setRcsIpVideoCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return-void
.end method

.method public setRcsIpVideoOnlyCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return-void
.end method

.method public setRcsIpVoiceCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return-void
.end method

.method public setSmSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return-void
.end method

.method public setSpSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return-void
.end method

.method public setVsDuringCSSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return-void
.end method

.method public setVsSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    if-eqz v0, :cond_ac

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    if-eqz v0, :cond_af

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    if-eqz v0, :cond_b2

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    if-eqz v0, :cond_b5

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    if-eqz v0, :cond_b8

    move v0, v1

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    if-eqz v0, :cond_bb

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    if-eqz v0, :cond_be

    move v0, v1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    if-eqz v0, :cond_c1

    move v0, v1

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    if-eqz v0, :cond_c4

    move v0, v1

    :goto_47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    if-eqz v0, :cond_c6

    move v0, v1

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    if-eqz v0, :cond_c8

    move v0, v1

    :goto_57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    if-eqz v0, :cond_ca

    move v0, v1

    :goto_5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    if-eqz v0, :cond_cc

    move v0, v1

    :goto_67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    if-eqz v0, :cond_ce

    move v0, v1

    :goto_6f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    if-eqz v0, :cond_d0

    move v0, v1

    :goto_77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    if-eqz v0, :cond_d2

    move v0, v1

    :goto_7f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    if-eqz v0, :cond_d4

    move v0, v1

    :goto_87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    if-eqz v0, :cond_d6

    move v0, v1

    :goto_8f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    if-eqz v0, :cond_da

    :goto_9e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_ac
    move v0, v2

    goto/16 :goto_7

    :cond_af
    move v0, v2

    goto/16 :goto_f

    :cond_b2
    move v0, v2

    goto/16 :goto_17

    :cond_b5
    move v0, v2

    goto/16 :goto_1f

    :cond_b8
    move v0, v2

    goto/16 :goto_27

    :cond_bb
    move v0, v2

    goto/16 :goto_2f

    :cond_be
    move v0, v2

    goto/16 :goto_37

    :cond_c1
    move v0, v2

    goto/16 :goto_3f

    :cond_c4
    move v0, v2

    goto :goto_47

    :cond_c6
    move v0, v2

    goto :goto_4f

    :cond_c8
    move v0, v2

    goto :goto_57

    :cond_ca
    move v0, v2

    goto :goto_5f

    :cond_cc
    move v0, v2

    goto :goto_67

    :cond_ce
    move v0, v2

    goto :goto_6f

    :cond_d0
    move v0, v2

    goto :goto_77

    :cond_d2
    move v0, v2

    goto :goto_7f

    :cond_d4
    move v0, v2

    goto :goto_87

    :cond_d6
    move v0, v2

    goto :goto_8f

    :cond_d8
    move v0, v2

    goto :goto_97

    :cond_da
    move v1, v2

    goto :goto_9e
.end method
