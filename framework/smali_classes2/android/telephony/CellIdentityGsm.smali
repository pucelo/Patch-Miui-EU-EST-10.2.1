.class public final Landroid/telephony/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityGsm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityGsm"


# instance fields
.field private final mArfcn:I

.field private final mBsic:I

.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 12

    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentityGsm;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput p5, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iput p6, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2c

    const v0, 0x7fffffff

    :cond_2c
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityGsm;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityGsm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "CellIdentityGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .registers 2

    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    instance-of v3, p1, Landroid/telephony/CellIdentityGsm;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityGsm;

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mLac:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    if-ne v3, v4, :cond_32

    :goto_31
    return v1

    :cond_32
    move v1, v2

    goto :goto_31

    :cond_34
    move v1, v2

    goto :goto_31
.end method

.method public getArfcn()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    return v0
.end method

.method public getBsic()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return v0
.end method

.method public getCid()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    return v0
.end method

.method public getLac()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    return v0
.end method

.method public getMcc()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7fffffff

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CellIdentityGsm:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_5f

    const-string/jumbo v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " mArfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " mBsic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
