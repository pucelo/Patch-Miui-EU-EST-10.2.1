.class public Lcom/android/server/wm/AppTransitionInjector;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionInjector$1;,
        Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;,
        Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
    }
.end annotation


# static fields
.field static final APP_TRANSITION_SPECS_PENDING_TIMEOUT:I = 0x64

.field static final BEZIER_ALLPAPER_OPEN_DURATION:I = 0x190

.field static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final DEFAULT_ALPHA_DURATION:I = 0xd2

.field static final DEFAULT_ALPHA_OFFSET:I = 0x28

.field static final DEFAULT_ANIMATION_DURATION:I

.field static final DEFAULT_LAUNCH_FORM_HOME_DURATION:I = 0x12c

.field static final DEFAULT_WALLPAPER_EXIT_SCALE_X:F = 0.4f

.field static final DEFAULT_WALLPAPER_EXIT_SCALE_Y:F = 0.4f

.field static final DEFAULT_WALLPAPER_OPEN_DURATION:I

.field static final IS_E10:Z

.field static final LAUNCHER_DEFAULT_ALPHA:F = 1.0f

.field static final LAUNCHER_DEFAULT_SCALE:F = 1.0f

.field static final LAUNCHER_TRANSITION_ALPHA:F

.field static final LAUNCHER_TRANSITION_SCALE:F = 0.8f

.field static final NEXT_TRANSIT_TYPE_BACK_HOME:I = 0x66

.field static final NEXT_TRANSIT_TYPE_LAUNCH_FROM_HOME:I = 0x65

.field static final QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final THUMBNAIL_ANIMATION_TIMEOUT_DURATION:I = 0x3e8

.field private static final WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiuiAnimSupportInset:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v2, 0x12c

    const/16 v1, 0x90

    const/4 v4, 0x0

    const-string/jumbo v0, "beryllium"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_15
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_4c

    :goto_1b
    sput v1, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ANIMATION_DURATION:I

    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_4e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_23
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_2b
    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$1;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    return-void

    :cond_4a
    move v0, v2

    goto :goto_15

    :cond_4c
    move v1, v2

    goto :goto_1b

    :cond_4e
    const/4 v0, 0x0

    goto :goto_23

    :cond_50
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;)V

    goto :goto_2b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowCustomAnimation(Landroid/util/ArraySet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return v6

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_2a

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_27

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    return v4

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    return v6
.end method

.method static calculateMiuiThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FILandroid/view/SurfaceControl;)V
    .registers 21

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    const/16 v12, 0x9

    new-array v11, v12, [F

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v12, 0x0

    aget v3, v11, v12

    const/4 v12, 0x4

    aget v4, v11, v12

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v12, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v9, v8, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v10, v2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float v5, v9, v12

    const/4 v12, 0x2

    aget v12, v11, v12

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    sub-float/2addr v12, v13

    iget v13, p0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float v6, v12, v13

    const/4 v12, 0x5

    aget v12, v11, v12

    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    sub-float/2addr v12, v13

    iget v13, p0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    sub-float v13, v2, v5

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v7, v12, v13

    const/4 v12, 0x3

    aget v12, v11, v12

    const/4 v13, 0x1

    aget v13, v11, v13

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v12, v13, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method static createDummyAnimation(F)Landroid/view/animation/Animation;
    .registers 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method static createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 24

    if-nez p3, :cond_4

    const/4 v4, 0x0

    return-object v4

    :cond_4
    sget-boolean v4, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v4, :cond_d

    invoke-static/range {p0 .. p3}, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v16

    if-eqz p1, :cond_6b

    move/from16 v0, v17

    int-to-float v4, v0

    int-to-float v7, v15

    div-float v3, v4, v7

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v7, v14

    div-float v5, v4, v7

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v3

    div-float v7, v4, v7

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v19, v4

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    div-float v8, v4, v8

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v15, v14, v15, v14}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    move-object v13, v2

    :goto_6a
    return-object v13

    :cond_6b
    const/16 v4, 0xe

    move/from16 v0, p0

    if-eq v0, v4, :cond_77

    const/16 v4, 0xf

    move/from16 v0, p0

    if-ne v0, v4, :cond_8d

    :cond_77
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v13, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_88
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_6a

    :cond_8d
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    int-to-float v4, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float v11, v4, v7

    int-to-float v4, v14

    const/high16 v7, 0x40000000    # 2.0f

    div-float v12, v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v13, v6

    goto :goto_88
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 11

    const/4 v3, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;
    .registers 50

    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_116

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    xor-int/lit8 v22, v8, 0x1

    :goto_11
    const/4 v8, 0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_11a

    const/16 v27, 0x1

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v18

    if-eqz v28, :cond_11e

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    xor-int/lit8 v21, v8, 0x1

    :goto_28
    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    if-eqz v22, :cond_51

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    :cond_51
    if-eqz v21, :cond_62

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    :cond_62
    if-eqz v21, :cond_122

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v10, v24, v25

    sub-int v37, v8, v10

    :goto_6c
    if-eqz v21, :cond_12c

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v10, v26, v23

    sub-int v36, v8, v10

    :goto_76
    if-eqz v22, :cond_138

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    :goto_7e
    if-eqz v22, :cond_13c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    :goto_86
    if-eqz v22, :cond_140

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v32, v34, v8

    :goto_90
    if-eqz v22, :cond_14e

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v33, v35, v8

    :goto_9a
    if-eqz v21, :cond_15c

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int v38, v8, v24

    :goto_a2
    if-eqz v21, :cond_169

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int v39, v8, v26

    :goto_aa
    if-eqz v22, :cond_178

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v11

    div-float v6, v8, v10

    :goto_b4
    if-eqz v22, :cond_17c

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    move/from16 v0, v18

    int-to-float v10, v0

    div-float v13, v8, v10

    :goto_c0
    move/from16 v0, v37

    int-to-float v8, v0

    int-to-float v10, v11

    div-float v7, v8, v10

    move/from16 v0, v36

    int-to-float v8, v0

    move/from16 v0, v18

    int-to-float v10, v0

    div-float v14, v8, v10

    if-eqz p0, :cond_180

    new-instance v31, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    int-to-float v8, v11

    const/high16 v10, 0x40000000    # 2.0f

    div-float v9, v8, v10

    move/from16 v0, v18

    int-to-float v8, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v8, v10

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-boolean v8, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-nez v8, :cond_106

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_106
    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v8, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object/from16 v20, v31

    :goto_115
    return-object v20

    :cond_116
    const/16 v22, 0x0

    goto/16 :goto_11

    :cond_11a
    const/16 v27, 0x0

    goto/16 :goto_18

    :cond_11e
    const/16 v21, 0x0

    goto/16 :goto_28

    :cond_122
    int-to-float v8, v11

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v10

    float-to-int v0, v8

    move/from16 v37, v0

    goto/16 :goto_6c

    :cond_12c
    move/from16 v0, v18

    int-to-float v8, v0

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v10

    float-to-int v0, v8

    move/from16 v36, v0

    goto/16 :goto_76

    :cond_138
    const/16 v34, 0x0

    goto/16 :goto_7e

    :cond_13c
    const/16 v35, 0x0

    goto/16 :goto_86

    :cond_140
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v32, v8, v10

    goto/16 :goto_90

    :cond_14e
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v33, v8, v10

    goto/16 :goto_9a

    :cond_15c
    int-to-float v8, v11

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    float-to-int v0, v8

    move/from16 v38, v0

    goto/16 :goto_a2

    :cond_169
    move/from16 v0, v18

    int-to-float v8, v0

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    float-to-int v0, v8

    move/from16 v39, v0

    goto/16 :goto_aa

    :cond_178
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_b4

    :cond_17c
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_c0

    :cond_180
    if-eqz v21, :cond_283

    new-instance v31, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v19, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v42, 0x28

    move-object/from16 v0, v19

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v42, 0xd2

    move-object/from16 v0, v19

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez p5, :cond_247

    new-instance v12, Landroid/view/animation/TranslateYAnimation;

    move/from16 v0, v35

    int-to-float v8, v0

    move/from16 v0, v39

    int-to-float v10, v0

    invoke-direct {v12, v8, v10}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    new-instance v5, Landroid/view/animation/TranslateXAnimation;

    move/from16 v0, v34

    int-to-float v8, v0

    move/from16 v0, v38

    int-to-float v10, v0

    invoke-direct {v5, v8, v10}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    new-instance v29, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;

    move-object/from16 v0, v29

    invoke-direct {v0, v6, v7}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;-><init>(FF)V

    if-eqz v27, :cond_244

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1d0
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v30, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;

    move-object/from16 v0, v30

    invoke-direct {v0, v13, v14}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;-><init>(FF)V

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_21d
    if-eqz v27, :cond_280

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_221
    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object/from16 v20, v31

    goto/16 :goto_115

    :cond_244
    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1d0

    :cond_247
    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int v8, v8, v24

    div-int/lit8 v10, v37, 0x2

    add-int/2addr v8, v10

    int-to-float v9, v8

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v26

    div-int/lit8 v10, v36, 0x2

    add-int/2addr v8, v10

    int-to-float v0, v8

    move/from16 v16, v0

    new-instance v5, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;

    move/from16 v0, v32

    int-to-float v8, v0

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;-><init>(FFFFLandroid/graphics/Point;I)V

    new-instance v12, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;

    move/from16 v0, v33

    int-to-float v15, v0

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v18}, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;-><init>(FFFFLandroid/graphics/Point;I)V

    const-wide/16 v42, 0x190

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v42, 0x190

    move-wide/from16 v0, v42

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_21d

    :cond_280
    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_221

    :cond_283
    new-instance v31, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v8, 0x3ecccccd    # 0.4f

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v4, v6, v8, v13, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v40, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v34

    int-to-float v8, v0

    move/from16 v0, v38

    int-to-float v10, v0

    move/from16 v0, v35

    int-to-float v15, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-direct {v0, v8, v10, v15, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v19, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget v8, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ANIMATION_DURATION:I

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget-boolean v8, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v8, :cond_2e7

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    :cond_2e7
    move-object/from16 v20, v31

    goto/16 :goto_115
.end method

.method public static getMiuiAnimSupportInset()Landroid/graphics/Rect;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method static notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method static notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationStart()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method static recalculateClipRevealTranslateYDuration(J)J
    .registers 4

    const-wide/16 v0, 0x32

    sub-long v0, p0, v0

    return-wide v0
.end method

.method static setMiuiAnimSupportInset(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p0, :cond_8

    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7
.end method
