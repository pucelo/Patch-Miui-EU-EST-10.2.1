.class public Lcom/android/systemui/qs/tiles/WifiTileHelper;
.super Ljava/lang/Object;
.source "WifiTileHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterUnreachableAPs([Lcom/android/settingslib/wifi/AccessPoint;)[Lcom/android/settingslib/wifi/AccessPoint;
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    array-length v7, p0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p0, v6

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    array-length v6, p0

    if-eq v3, v6, :cond_2

    move-object v4, p0

    new-array p0, v3, [Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    array-length v6, v4

    move v2, v1

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v1, v2, 0x1

    aput-object v0, p0, v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    move v1, v2

    goto :goto_2
.end method
