.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "WifiAwareUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validatePassphrase(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    return v0
.end method

.method public static validatePmk([B)Z
    .registers 3

    if-eqz p0, :cond_7

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    :cond_7
    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static validateServiceName([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    array-length v2, p0

    const/16 v3, 0xff

    if-le v2, v3, :cond_1d

    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    array-length v2, p0

    if-ge v1, v2, :cond_53

    aget-byte v0, p0, v1

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_50

    const/16 v2, 0x30

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x39

    if-le v0, v2, :cond_50

    :cond_2f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_37

    const/16 v2, 0x7a

    if-le v0, v2, :cond_50

    :cond_37
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3f

    const/16 v2, 0x5a

    if-le v0, v2, :cond_50

    :cond_3f
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_50

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_50

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_53
    return-void
.end method
