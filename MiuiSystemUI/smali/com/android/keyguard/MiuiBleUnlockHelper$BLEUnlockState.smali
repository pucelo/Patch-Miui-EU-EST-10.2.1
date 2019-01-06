.class public final enum Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;
.super Ljava/lang/Enum;
.source "MiuiBleUnlockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiBleUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLEUnlockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

.field public static final enum FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

.field public static final enum PROCESSING:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

.field public static final enum SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    const-string/jumbo v1, "SUCCEED"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    const-string/jumbo v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->PROCESSING:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->PROCESSING:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->$VALUES:[Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;
    .locals 1

    const-class v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->$VALUES:[Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    return-object v0
.end method
