.class public final Landroid/net/wifi/aware/PublishConfig;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/PublishConfig$1;,
        Landroid/net/wifi/aware/PublishConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/PublishConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLISH_TYPE_SOLICITED:I = 0x1

.field public static final PUBLISH_TYPE_UNSOLICITED:I


# instance fields
.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mPublishType:I

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/aware/PublishConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/PublishConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iput-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iput-object p3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iput p4, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iput p5, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iput-boolean p6, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    return-void
.end method


# virtual methods
.method public assertValid(Landroid/net/wifi/aware/Characteristics;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-static {v3, v4, v5}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v3

    if-nez v3, :cond_18

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid txFilter configuration - LV fields do not match up to length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ltz v3, :cond_20

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-le v3, v5, :cond_3c

    :cond_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid publishType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3c
    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-gez v3, :cond_49

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid ttlSec - must be non-negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_49
    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v3, v3

    if-le v3, v1, :cond_5f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Service name longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5f
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v2

    if-eqz v2, :cond_77

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v3, v3

    if-le v3, v2, :cond_77

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Service specific info longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_77
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v3, v3

    if-le v3, v0, :cond_8f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Match filter longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8f
    return-void
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
    instance-of v3, p1, Landroid/net/wifi/aware/PublishConfig;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/PublishConfig;

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v4, v0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v4, v0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iget-object v4, v0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iget v4, v0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iget v4, v0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_3e

    :goto_3d
    return v1

    :cond_3e
    move v1, v2

    goto :goto_3d

    :cond_40
    move v1, v2

    goto :goto_3d
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    :goto_31
    add-int v0, v2, v1

    return v0

    :cond_34
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PublishConfig [mServiceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    if-nez v0, :cond_a3

    const-string/jumbo v0, "<null>"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mServiceName.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    if-nez v0, :cond_af

    move v0, v1

    :goto_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v0, :cond_b4

    const-string/jumbo v0, "<null>"

    :goto_36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v0, :cond_c0

    move v0, v1

    :goto_46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mMatchFilter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mMatchFilter.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-nez v2, :cond_c4

    :goto_6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPublishType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a3
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_af
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v0, v0

    goto/16 :goto_24

    :cond_b4
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    :cond_c0
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v0, v0

    goto :goto_46

    :cond_c4
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v1, v1

    goto :goto_6c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method
