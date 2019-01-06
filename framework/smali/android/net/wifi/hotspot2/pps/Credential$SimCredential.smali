.class public final Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCredential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_IMSI_LENGTH:I = 0xf


# instance fields
.field private mEapType:I

.field private mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-eqz p1, :cond_14

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    :cond_14
    return-void
.end method

.method private verifyImsi()Z
    .registers 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "Credential"

    const-string/jumbo v3, "Missing IMSI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_14
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_3f

    const-string/jumbo v2, "Credential"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI exceeding maximum length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3f
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_41
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_57

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_57

    const/16 v2, 0x39

    if-le v1, v2, :cond_60

    :cond_57
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_63

    return v4

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_63
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_72

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_72

    return v4

    :cond_72
    return v5
.end method


# virtual methods
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
    instance-of v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iget v4, v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-ne v3, v4, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d

    :cond_20
    move v1, v2

    goto :goto_1d
.end method

.method public getEapType()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEapType(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->verifyImsi()Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_37

    const-string/jumbo v0, "Credential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid EAP Type for SIM credential: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
