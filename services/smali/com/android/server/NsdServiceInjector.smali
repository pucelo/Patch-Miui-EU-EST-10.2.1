.class public Lcom/android/server/NsdServiceInjector;
.super Ljava/lang/Object;
.source "NsdServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resolveTextRecored(Landroid/net/nsd/NsdServiceInfo;[Ljava/lang/String;)V
    .registers 7

    array-length v3, p1

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1b

    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x6

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v3, v1, p0}, Landroid/net/nsd/NsdServiceInfoInjector;->setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V

    :cond_1b
    return-void
.end method
