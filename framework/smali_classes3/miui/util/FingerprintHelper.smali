.class public Lmiui/util/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFingerprintHardwareDetected(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    goto :goto_c
.end method
