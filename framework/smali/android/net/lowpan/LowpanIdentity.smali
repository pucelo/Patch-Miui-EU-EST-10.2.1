.class public Landroid/net/lowpan/LowpanIdentity;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanIdentity$1;,
        Landroid/net/lowpan/LowpanIdentity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/lowpan/LowpanIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_CHANNEL:I = -0x1

.field public static final UNSPECIFIED_PANID:I = -0x1


# instance fields
.field private mChannel:I

.field private mIsNameValid:Z

.field private mName:Ljava/lang/String;

.field private mPanid:I

.field private mRawName:[B

.field private mType:Ljava/lang/String;

.field private mXpanid:[B


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanIdentity;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method static synthetic -get2(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/lowpan/LowpanIdentity;I)I
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/lowpan/LowpanIdentity;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p1
.end method

.method static synthetic -set2(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/lowpan/LowpanIdentity;I)I
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return p1
.end method

.method static synthetic -set4(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/net/lowpan/LowpanIdentity$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    new-array v0, v2, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    new-array v0, v2, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    iput v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    iput v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/lowpan/LowpanIdentity;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanIdentity;

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-ne v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public getChannel()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPanid()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return v0
.end method

.method public getRawName()[B
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getXpanid()[B
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNameValid()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanIdentity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    const-string/jumbo v1, ", Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    array-length v1, v1

    if-lez v1, :cond_3e

    const-string/jumbo v1, ", XPANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3e
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-eq v1, v6, :cond_5e

    const-string/jumbo v1, ", PANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5e
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-eq v1, v6, :cond_6e

    const-string/jumbo v1, ", Channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
