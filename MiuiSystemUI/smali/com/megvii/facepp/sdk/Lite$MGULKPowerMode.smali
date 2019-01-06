.class public final enum Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;
.super Ljava/lang/Enum;
.source "Lite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/facepp/sdk/Lite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MGULKPowerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

.field public static final enum MG_UNLOCK_POWER_HIGH:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

.field public static final enum MG_UNLOCK_POWER_LOW:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

.field public static final enum MG_UNLOCK_POWER_NONE:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    const-string/jumbo v1, "MG_UNLOCK_POWER_NONE"

    invoke-direct {v0, v1, v2}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_NONE:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    new-instance v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    const-string/jumbo v1, "MG_UNLOCK_POWER_LOW"

    invoke-direct {v0, v1, v3}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_LOW:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    new-instance v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    const-string/jumbo v1, "MG_UNLOCK_POWER_HIGH"

    invoke-direct {v0, v1, v4}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_HIGH:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_NONE:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_LOW:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_HIGH:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->$VALUES:[Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;
    .locals 1

    const-class v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    return-object v0
.end method

.method public static values()[Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;
    .locals 1

    sget-object v0, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->$VALUES:[Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    return-object v0
.end method
