.class public final Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding;
.super Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA224WithPKCS1Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;-><init>(I)V

    return-void
.end method