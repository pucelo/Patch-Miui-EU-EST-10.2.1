.class final enum Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
.super Ljava/lang/Enum;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string/jumbo v1, "READY_STATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string/jumbo v1, "READY_STATE_BACK"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string/jumbo v1, "READY_STATE_RECENT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    const-class v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method
