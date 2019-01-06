.class public final enum Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;
.super Ljava/lang/Enum;
.source "MiuiKeyguardFingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FingerprintIdentificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public static final enum ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public static final enum FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public static final enum RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public static final enum SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const-string/jumbo v1, "SUCCEEDED"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const-string/jumbo v1, "RESET"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->$VALUES:[Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;
    .locals 1

    const-class v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->$VALUES:[Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-object v0
.end method
