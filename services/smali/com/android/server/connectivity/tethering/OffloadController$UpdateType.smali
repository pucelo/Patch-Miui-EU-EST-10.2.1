.class final enum Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
.super Ljava/lang/Enum;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

.field public static final enum FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

.field public static final enum IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const-string/jumbo v1, "IF_NEEDED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const-string/jumbo v1, "FORCE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->$VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    .registers 2

    const-class v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->$VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-object v0
.end method
