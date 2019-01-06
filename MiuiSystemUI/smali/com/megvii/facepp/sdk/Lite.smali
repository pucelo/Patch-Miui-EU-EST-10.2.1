.class public Lcom/megvii/facepp/sdk/Lite;
.super Ljava/lang/Object;
.source "Lite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/megvii/facepp/sdk/Lite$LiteConfig;,
        Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/megvii/facepp/sdk/Lite;


# instance fields
.field private handle:J

.field private mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

.field private mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

.field private mPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    new-instance v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    invoke-direct {v0}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;-><init>()V

    iput-object v0, p0, Lcom/megvii/facepp/sdk/Lite;->mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    return-void
.end method

.method public static final getInstance()Lcom/megvii/facepp/sdk/Lite;
    .locals 1

    sget-object v0, Lcom/megvii/facepp/sdk/Lite;->sInstance:Lcom/megvii/facepp/sdk/Lite;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/megvii/facepp/sdk/Lite;->sInstance:Lcom/megvii/facepp/sdk/Lite;

    return-object v0

    :cond_0
    new-instance v0, Lcom/megvii/facepp/sdk/Lite;

    invoke-direct {v0}, Lcom/megvii/facepp/sdk/Lite;-><init>()V

    sput-object v0, Lcom/megvii/facepp/sdk/Lite;->sInstance:Lcom/megvii/facepp/sdk/Lite;

    goto :goto_0
.end method


# virtual methods
.method public compare([BIIIZZ[I)I
    .locals 11

    move-object/from16 v0, p7

    array-length v2, v0

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeCompare(J[BIIIZZ[I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public deleteFeature()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/megvii/facepp/sdk/Lite;->deleteFeature(I)I

    move-result v0

    return v0
.end method

.method public deleteFeature(I)I
    .locals 4

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v2, v3, p1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeDeleteFeature(JI)I

    move-result v0

    iget-object v1, p0, Lcom/megvii/facepp/sdk/Lite;->mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    iget-object v2, p0, Lcom/megvii/facepp/sdk/Lite;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->deleteRestoreImage(Ljava/lang/String;I)V

    return v0
.end method

.method public getConfig()Lcom/megvii/facepp/sdk/Lite$LiteConfig;
    .locals 4

    new-instance v0, Lcom/megvii/facepp/sdk/Lite$LiteConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/megvii/facepp/sdk/Lite$LiteConfig;-><init>(Lcom/megvii/facepp/sdk/Lite;Lcom/megvii/facepp/sdk/Lite$1;)V

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v2, v3, v0}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeGetConfig(JLcom/megvii/facepp/sdk/Lite$LiteConfig;)J

    return-object v0
.end method

.method public getFeatureCount()I
    .locals 1

    invoke-static {}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeGetFeatureCount()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v0, v1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAll(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeInitAll(JLjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public initHandle(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeInitHandle(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    iput-object p1, p0, Lcom/megvii/facepp/sdk/Lite;->mPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public initHandle(Ljava/lang/String;Lcom/megvii/facepp/sdk/UnlockEncryptor;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/megvii/facepp/sdk/Lite;->initHandle(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/megvii/facepp/sdk/Lite;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    iget-object v0, p0, Lcom/megvii/facepp/sdk/Lite;->mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    iget-object v1, p0, Lcom/megvii/facepp/sdk/Lite;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    invoke-virtual {v0, v1}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->setUnlockEncryptor(Lcom/megvii/facepp/sdk/UnlockEncryptor;)V

    return-void
.end method

.method public prepare()I
    .locals 4

    sget-object v1, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->MG_UNLOCK_POWER_HIGH:Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite$MGULKPowerMode;->ordinal()I

    move-result v0

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v2, v3}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativePrepare(J)I

    move-result v1

    return v1
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v0, v1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeRelease(J)J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    return-void
.end method

.method public reset()I
    .locals 2

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v0, v1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeReset(J)I

    move-result v0

    return v0
.end method

.method public restoreFeature()I
    .locals 2

    iget-object v0, p0, Lcom/megvii/facepp/sdk/Lite;->mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    iget-object v1, p0, Lcom/megvii/facepp/sdk/Lite;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->restoreAllFeature(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveFeature([BIIIZ[B[B)I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/megvii/facepp/sdk/Lite;->updateFeature([BIIIZ[B[BI)I

    move-result v0

    return v0
.end method

.method public setConfig(FFFF)I
    .locals 8

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeSetConfig(JFFFFZZ)I

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/megvii/facepp/sdk/Lite$LiteConfig;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    invoke-static {v0, v1, p1}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeSetConfigV2(JLcom/megvii/facepp/sdk/Lite$LiteConfig;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setDetectArea(IIII)I
    .locals 6

    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeSetDetectArea(JIIII)I

    move-result v0

    return v0
.end method

.method public updateFeature([BIIIZ[B[BI)I
    .locals 13

    move-object/from16 v0, p7

    array-length v2, v0

    const v3, 0x9c40

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    move-object/from16 v0, p6

    array-length v2, v0

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Lite;->handle:J

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_0
    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/megvii/facepp/sdk/jni/LiteApi;->nativeUpdateFeature(J[BIIII[B[BI)I

    move-result v12

    if-eqz v12, :cond_3

    :goto_1
    return v12

    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/megvii/facepp/sdk/Lite;->mFeatureRestoreHelper:Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    iget-object v3, p0, Lcom/megvii/facepp/sdk/Lite;->mPath:Ljava/lang/String;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->saveRestoreImage([BLjava/lang/String;I)V

    goto :goto_1
.end method
