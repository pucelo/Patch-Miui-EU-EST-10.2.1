.class abstract Landroid/security/keystore/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :cond_9
    return-object v0
.end method

.method static cloneIfNotNull([B)[B
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_9
    return-object v0
.end method
