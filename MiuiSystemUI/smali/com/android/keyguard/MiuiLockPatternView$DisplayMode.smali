.class public final enum Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    const-string/jumbo v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    new-instance v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    const-string/jumbo v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    new-instance v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    const-string/jumbo v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    sget-object v1, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->$VALUES:[Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->$VALUES:[Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    return-object v0
.end method
