.class final enum Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;
.super Ljava/lang/Enum;
.source "HeiHeiGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/HeiHeiGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DetectingStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public static final enum MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public static final enum MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public static final enum MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public static final enum STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public static final enum WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const-string/jumbo v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const-string/jumbo v1, "MOVE_DOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const-string/jumbo v1, "MOVE_UP"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const-string/jumbo v1, "MATCHED"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->$VALUES:[Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;
    .locals 1

    const-class v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;
    .locals 1

    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->$VALUES:[Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    return-object v0
.end method
