.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_52

    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :try_start_9
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v4, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v2

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_52

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-nez v5, :cond_35

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_38
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-nez v5, :cond_53

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_35

    :catch_51
    move-exception v0

    :cond_52
    return-void

    :cond_53
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-nez v5, :cond_35

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_6b} :catch_51

    goto :goto_35
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_6
.end method

.method public getDName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_6
.end method

.method public getOName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_6
.end method

.method public getUName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_6
.end method
