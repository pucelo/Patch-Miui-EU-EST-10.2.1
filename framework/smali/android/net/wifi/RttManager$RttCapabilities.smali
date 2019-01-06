.class public Landroid/net/wifi/RttManager$RttCapabilities;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$RttCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bwSupported:I

.field public lciSupported:Z

.field public lcrSupported:Z

.field public mcVersion:I

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public responderSupported:Z

.field public secureRttSupported:Z

.field public supportedPeerType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public supportedType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twoSided11McRttSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "oneSidedRtt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-eqz v1, :cond_104

    const-string/jumbo v1, "is Supported. "

    :goto_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "twoSided11McRtt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v1, :cond_109

    const-string/jumbo v1, "is Supported. "

    :goto_25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "lci "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v1, :cond_10e

    const-string/jumbo v1, "is Supported. "

    :goto_37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "lcr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v1, :cond_113

    const-string/jumbo v1, "is Supported. "

    :goto_49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_58

    const-string/jumbo v1, "Legacy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_58
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_64

    const-string/jumbo v1, "HT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_64
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_70

    const-string/jumbo v1, "VHT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_70
    const-string/jumbo v1, "is supported. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_82

    const-string/jumbo v1, "5 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_82
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8e

    const-string/jumbo v1, "10 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8e
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9a

    const-string/jumbo v1, "20 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9a
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a6

    const-string/jumbo v1, "40 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a6
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b2

    const-string/jumbo v1, "80 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b2
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_be

    const-string/jumbo v1, "160 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_be
    const-string/jumbo v1, "is supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " STA responder role is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    if-eqz v1, :cond_118

    const-string/jumbo v1, "supported"

    :goto_d2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " Secure RTT protocol is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v1, :cond_11c

    const-string/jumbo v1, "supported"

    :goto_e3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " 11mc version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_104
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_13

    :cond_109
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_25

    :cond_10e
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_37

    :cond_113
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_49

    :cond_118
    const-string/jumbo v1, "not supported"

    goto :goto_d2

    :cond_11c
    const-string/jumbo v1, "not supported"

    goto :goto_e3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-eqz v0, :cond_41

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v0, :cond_43

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v0, :cond_45

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v0, :cond_47

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v0, :cond_4b

    :goto_38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_41
    move v0, v2

    goto :goto_7

    :cond_43
    move v0, v2

    goto :goto_f

    :cond_45
    move v0, v2

    goto :goto_17

    :cond_47
    move v0, v2

    goto :goto_1f

    :cond_49
    move v0, v2

    goto :goto_31

    :cond_4b
    move v1, v2

    goto :goto_38
.end method
