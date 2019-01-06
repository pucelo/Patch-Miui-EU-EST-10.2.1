.class public Lcom/android/ims/ImsSsData;
.super Ljava/lang/Object;
.source "ImsSsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsSsData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsSsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SS_ACTIVATION:I = 0x0

.field public static final SS_ALL_BARRING:I = 0x12

.field public static final SS_ALL_DATA_TELESERVICES:I = 0x3

.field public static final SS_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final SS_ALL_TELESEVICES:I = 0x1

.field public static final SS_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final SS_BAIC:I = 0x10

.field public static final SS_BAIC_ROAMING:I = 0x11

.field public static final SS_BAOC:I = 0xd

.field public static final SS_BAOIC:I = 0xe

.field public static final SS_BAOIC_EXC_HOME:I = 0xf

.field public static final SS_CFU:I = 0x0

.field public static final SS_CFUT:I = 0x6

.field public static final SS_CF_ALL:I = 0x4

.field public static final SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SS_CF_BUSY:I = 0x1

.field public static final SS_CF_NOT_REACHABLE:I = 0x3

.field public static final SS_CF_NO_REPLY:I = 0x2

.field public static final SS_CLIP:I = 0x7

.field public static final SS_CLIR:I = 0x8

.field public static final SS_CNAP:I = 0xb

.field public static final SS_COLP:I = 0x9

.field public static final SS_COLR:I = 0xa

.field public static final SS_DEACTIVATION:I = 0x1

.field public static final SS_ERASURE:I = 0x4

.field public static final SS_INCOMING_BARRING:I = 0x14

.field public static final SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final SS_INCOMING_BARRING_DN:I = 0x15

.field public static final SS_INTERROGATION:I = 0x2

.field public static final SS_OUTGOING_BARRING:I = 0x13

.field public static final SS_REGISTRATION:I = 0x3

.field public static final SS_SMS_SERVICES:I = 0x4

.field public static final SS_TELEPHONY:I = 0x2

.field public static final SS_WAIT:I = 0xc


# instance fields
.field public mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

.field public mImsSsInfo:[Lcom/android/ims/ImsSsInfo;

.field public mRequestType:I

.field public mResult:I

.field public mServiceClass:I

.field public mServiceType:I

.field public mSsInfo:[I

.field public mTeleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/ImsSsData$1;

    invoke-direct {v0}, Lcom/android/ims/ImsSsData$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/ims/ImsSsData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p0}, Lcom/android/ims/ImsSsData;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/android/ims/ImsCallForwardInfo;

    iput-object v0, p0, Lcom/android/ims/ImsSsData;->mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeBarring()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTypeCF()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-ne v2, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public isTypeCW()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTypeClip()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTypeClir()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTypeColp()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTypeColr()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTypeIcb()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTypeInterrogation()Z
    .registers 3

    iget v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTypeUnConditional()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsSsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " RequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " TeleserviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/ImsSsData;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/android/ims/ImsSsData;->mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
