.class synthetic Lcom/megvii/facepp/sdk/Lite$1;
.super Ljava/lang/Object;
.source "Lite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/facepp/sdk/Lite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$megvii$facepp$sdk$Lite$MGULKPowerMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->values()[Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/megvii/facepp/sdk/Lite$1;->$SwitchMap$com$megvii$facepp$sdk$Lite$MGULKPowerMode:[I

    :try_start_0
    sget-object v0, Lcom/megvii/facepp/sdk/Lite$1;->$SwitchMap$com$megvii$facepp$sdk$Lite$MGULKPowerMode:[I

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_NONE:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/megvii/facepp/sdk/Lite$1;->$SwitchMap$com$megvii$facepp$sdk$Lite$MGULKPowerMode:[I

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_LOW:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/megvii/facepp/sdk/Lite$1;->$SwitchMap$com$megvii$facepp$sdk$Lite$MGULKPowerMode:[I

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_HIGH:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
