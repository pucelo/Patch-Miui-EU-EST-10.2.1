.class Lcom/android/keyguard/faceunlock/FaceUnlockCompatHelper;
.super Ljava/lang/Object;
.source "FaceUnlockCompatHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelRes()I
    .locals 1

    const v0, 0x7f100002

    return v0
.end method

.method public static setCompDeviceType(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite;->getConfig()Lcom/megvii/facepp/sdk/Lite$LiteConfig;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Lcom/megvii/facepp/sdk/Lite$LiteConfig;->compDeviceType:I

    iput-object p0, v0, Lcom/megvii/facepp/sdk/Lite$LiteConfig;->openclCachePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/megvii/facepp/sdk/Lite;->setConfig(Lcom/megvii/facepp/sdk/Lite$LiteConfig;)I

    return-void
.end method
