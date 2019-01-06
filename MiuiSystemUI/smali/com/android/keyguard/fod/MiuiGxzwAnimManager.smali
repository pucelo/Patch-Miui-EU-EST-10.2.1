.class public Lcom/android/keyguard/fod/MiuiGxzwAnimManager;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;,
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;,
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    }
.end annotation


# static fields
.field private static final ZERO_RES_ARRAY:[I


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mEnrolling:Z

.field private mGxzwAnimType:I

.field private mKeyguardAuthen:Z

.field private mLightIcon:Z

.field private mLightWallpaperGxzw:Z

.field private mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fod_animation_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private getBackAnimResources(Z)[I
    .locals 7

    const/16 v6, 0xa

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v4, :pswitch_data_0

    if-eqz p1, :cond_2

    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_AOD_BACK_ANIM_RES:[I

    return-object v4

    :pswitch_0
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->RHYTHM_RECOGNIZING_ANIM_RES:[I

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->getCurrentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    rem-int v2, v4, v5

    new-array v0, v6, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    add-int v4, v2, v1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget v4, v3, v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_BACK_ANIM_RES:[I

    return-object v4

    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_BACK_ANIM_RES:[I

    return-object v4

    :cond_1
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_BACK_ANIM_RES:[I

    return-object v4

    :pswitch_2
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->METAL_RECOGNIZING_ANIM_RES:[I

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->PULSE_RECOGNIZING_ANIM_RES:[I

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_LIGHT_BACK_ANIM_RES:[I

    return-object v4

    :cond_3
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object v4

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFalseAnimResources(Z)[I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    return-object v0

    :pswitch_0
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_FALSE_ANIM_RES:[I

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_FALSE_ANIM_RES:[I

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_FALSE_ANIM_RES:[I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getIconAnimResources(Z)[I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_ICON_ANIM_RES:[I

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_ICON_ANIM_RES:[I

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_ICON_ANIM_RES:[I

    return-object v0
.end method

.method private getRecognizingAnimResources(Z)[I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->RHYTHM_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :pswitch_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->METAL_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->PULSE_RECOGNIZING_ANIM_RES:[I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBackAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getBackAnimResources(Z)[I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;

    invoke-direct {v1, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;)V

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    :cond_0
    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getFalseAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 3

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getFalseTipTranslationY()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x64

    return v0

    :pswitch_1
    const/16 v0, 0x50

    return v0

    :pswitch_2
    const/16 v0, 0x3c

    return v0

    :pswitch_3
    const/16 v0, 0x14

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFingerIconResource(Z)I
    .locals 4

    const v0, 0x7f0800b5

    const-string/jumbo v1, "MiuiGxzwAnimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerIconResource: mKeyguardAuthen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLightWallpaperGxzw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mEnrolling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLightIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    const v0, 0x7f0800b2

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0800b4

    return v0

    :cond_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    if-eqz v1, :cond_4

    :goto_0
    return v0

    :cond_4
    const v0, 0x7f0800b3

    goto :goto_0
.end method

.method public getIconAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 3

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getIconAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getRecognizingAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getRecognizingAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    if-eq v1, v3, :cond_0

    invoke-static {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    return-void
.end method

.method public setLightIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    return-void
.end method

.method public setLightWallpaperGxzw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    return-void
.end method

.method public startDozing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    return-void
.end method

.method public stopDozing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    return-void
.end method
