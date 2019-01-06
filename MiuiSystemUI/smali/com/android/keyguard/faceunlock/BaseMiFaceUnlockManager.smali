.class public Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;
.super Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.source "BaseMiFaceUnlockManager.java"


# instance fields
.field protected mLite:Lcom/megvii/facepp/sdk/Lite;

.field protected mReport:[I

.field protected mStartSetMeteringAreasTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    return-void
.end method


# virtual methods
.method protected compare()I
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mPreviewFrame:[B

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v3, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v4, v4, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    iget-object v7, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/facepp/sdk/Lite;->compare([BIIIZZ[I)I

    move-result v0

    return v0
.end method

.method public deleteFaceModel(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public deleteFeature()V
    .locals 1

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->deleteFeature()I

    return-void
.end method

.method public getFeatureCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->getFeatureCount()I

    move-result v0

    return v0
.end method

.method public getRunOutTime()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFaceUnlockUtil()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->initFaceUnlockUtil()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    :cond_0
    return-void
.end method

.method protected isFaceJiajia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIrCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidFeature()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v1}, Lcom/megvii/facepp/sdk/Lite;->getFeatureCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVersionUpdate(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onPreviewFrame([BLjava/lang/String;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mIsTrigger:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->stopDetect()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mIsSuccess:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mIsDetecting:Z

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mHasFace:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mSkipIfNotFound:Z

    if-eqz v2, :cond_3

    iput-boolean v8, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mSkipIfNotFound:Z

    return-void

    :cond_3
    iput-boolean v9, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mSkipIfNotFound:Z

    iput-boolean v9, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mIsDetecting:Z

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mPreviewFrame:[B

    sget-boolean v2, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "face_unlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive preview frame time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->sStageInFaceUnlockTime:J

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->compare()I

    move-result v0

    sget-boolean v2, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "face_unlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "compare time ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; result\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " run: fake = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", low = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", compare score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " live score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v4, v4, v11

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->sStageInFaceUnlockTime:J

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mStartSetMeteringAreasTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mStartSetMeteringAreasTime:J

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->setMeteringAreas([I)V

    :cond_6
    if-eq v0, v10, :cond_7

    iput-boolean v9, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mHasFace:Z

    :cond_7
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->isFaceJiajia()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "face_megvii"

    invoke-static {v2}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    const-string/jumbo v2, "face_unlock_type"

    const-string/jumbo v3, "face_megvii"

    invoke-static {v2, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->handlePassed()V

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v2}, Lcom/android/keyguard/FingerprintHelper;->resetFingerLockoutTime()V

    :goto_1
    return-void

    :cond_8
    const-string/jumbo v2, "face_xiaomi"

    invoke-static {v2}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    const-string/jumbo v2, "face_unlock_type"

    const-string/jumbo v3, "face_xiaomi"

    invoke-static {v2, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f110280

    :goto_2
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eq v0, v10, :cond_a

    const/16 v2, 0x16

    if-ne v0, v2, :cond_f

    :cond_a
    :goto_3
    iget v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mNoFaceDetectedValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mNoFaceDetectedValue:I

    iget v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mNoFaceDetectedValue:I

    if-lt v2, v11, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->unblockScreenOn()V

    invoke-static {v8}, Lcom/android/keyguard/MiuiKeyguardUtils;->setScreenTurnOnDelayed(Z)V

    :cond_b
    iput v1, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mHelpStringResId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->sStartFaceUnlockTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    iput-boolean v8, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mIsDetecting:Z

    goto :goto_1

    :pswitch_1
    const v1, 0x7f11027d

    goto :goto_2

    :pswitch_2
    const v1, 0x7f110280

    goto :goto_2

    :pswitch_3
    const v1, 0x7f11028f

    goto :goto_2

    :pswitch_4
    const v1, 0x7f110289

    goto :goto_2

    :pswitch_5
    const v1, 0x7f110290

    goto :goto_2

    :pswitch_6
    const v1, 0x7f110284

    goto :goto_2

    :pswitch_7
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v2, v2, v8

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLiveAttackValue:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v2, v2, v8

    iget v3, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLiveAttackValue:I

    sub-int/2addr v2, v3

    if-ne v2, v9, :cond_d

    iput-boolean v9, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLiveAttack:Z

    :cond_d
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mReport:[I

    aget v2, v2, v8

    iput v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLiveAttackValue:I

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLiveAttack:Z

    if-eqz v2, :cond_e

    const v1, 0x7f110280

    goto :goto_2

    :cond_e
    const v1, 0x7f11027d

    goto :goto_2

    :pswitch_8
    const v1, 0x7f110280

    goto :goto_2

    :pswitch_9
    const v1, 0x7f11068a

    goto :goto_2

    :cond_f
    const/16 v2, 0xe

    if-ne v0, v2, :cond_b

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public openCameraSucced(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->prepare()I

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->openCameraSucced(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "open Camera failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseFaceUnlock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mHasInit:Z

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->release()V

    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "face release complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected stopDetect()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->reset()I

    invoke-super {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    return-void
.end method
