.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field public static final WIFI_SIGNAL_STRENGTH:[[I

.field public static final WIFI_SIGNAL_STRENGTH_DARK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v8, 0x7f08063a

    const v4, 0x7f080637

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v5, [[I

    const v1, 0x7f08063d

    const v2, 0x7f080640

    const v3, 0x7f080643

    filled-new-array {v4, v8, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08063d

    const v2, 0x7f080640

    const v3, 0x7f080643

    filled-new-array {v4, v8, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    const v0, 0x7f080638

    const v1, 0x7f08063b

    const v2, 0x7f08063e

    const v3, 0x7f080641

    const v4, 0x7f080644

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_DARK:[I

    new-array v0, v5, [[I

    const v1, 0x7f0801a7

    const v2, 0x7f0801a8

    const v3, 0x7f0801a9

    const v4, 0x7f0801aa

    const v5, 0x7f0801ab

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0801ae

    const v2, 0x7f0801af

    const v3, 0x7f0801b0

    const v4, 0x7f0801b1

    const v5, 0x7f0801b2

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
