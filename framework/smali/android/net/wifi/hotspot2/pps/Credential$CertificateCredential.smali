.class public final Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
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
    name = "CertificateCredential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;
    }
.end annotation


# static fields
.field private static final CERT_SHA256_FINGER_PRINT_LENGTH:I = 0x20

.field public static final CERT_TYPE_X509V3:Ljava/lang/String; = "x509v3"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertSha256Fingerprint:[B

.field private mCertType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    :cond_1d
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

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    instance-of v2, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v2, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v2, v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_1f
    return v1
.end method

.method public getCertSha256Fingerprint()[B
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCertSha256Fingerprint([B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-void
.end method

.method public setCertType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CertificateType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Z
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "x509v3"

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "Credential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_29
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    :cond_34
    const-string/jumbo v0, "Credential"

    const-string/jumbo v1, "Invalid SHA-256 fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3e
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
