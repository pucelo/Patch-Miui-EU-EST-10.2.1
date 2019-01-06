.class public Landroid/security/FingerprintIdUtilsCompat;
.super Ljava/lang/Object;
.source "FingerprintIdUtilsCompat.java"


# static fields
.field private static mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/security/FingerprintIdUtilsCompat;->getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_33

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_33

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_33
    return-object v4

    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static getSecondSpaceId(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2

    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_f

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_f
    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method public static getValidFingerPrintIds(Ljava/util/HashMap;Landroid/content/Context;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    return-object v4

    :cond_e
    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    return-object v4

    :cond_1b
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1, v5, p0}, Landroid/security/FingerprintIdUtils;->writeFingerprintIdsToXml(Landroid/content/Context;ILjava/util/HashMap;)V

    goto :goto_23

    :cond_46
    move-object v4, p0

    return-object p0
.end method
