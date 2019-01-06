.class public Lcom/android/server/wm/MultiWindowTransition;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# static fields
.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x12c

.field private static final INVALID_CLIP_RECT:Landroid/graphics/Rect;

.field private static final MULTI_WINDOW_DEFAULT_OFFSET:I = 0x1

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN_COMPATIBLE:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP_COMPATIBLE:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN_COMPATIBLE:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP_COMPATIBLE:I = 0x1

.field public static final TRANSIT_MULTI_WINDOW_ENTER_FROM_OTHER:I = 0xca

.field public static final TRANSIT_MULTI_WINDOW_ENTER_FROM_TOP:I = 0xc9

.field public static final TRANSIT_MULTI_WINDOW_EXIT:I = 0xcb


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/server/wm/MultiWindowTransition;->INVALID_CLIP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustCropToStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFF)V
    .registers 13

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p5

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_98

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_98

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_98

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_98

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_56

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, p4

    float-to-int v0, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->left:I

    :cond_56
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_6d

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    :cond_6d
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_7b

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    :cond_7b
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_92

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    :cond_92
    neg-int v2, p2

    neg-int v3, p3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :goto_97
    return-void

    :cond_98
    sget-object v2, Lcom/android/server/wm/MultiWindowTransition;->INVALID_CLIP_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_97
.end method

.method static createAspectScaledThumbnailEnterExitAnimationCompatibleLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;IIIII)Landroid/view/animation/Animation;
    .registers 39

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez p5, :cond_62

    move/from16 v21, p5

    :goto_d
    if-lez p6, :cond_65

    move/from16 v20, p6

    :goto_11
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    move-object/from16 v0, v22

    iput v4, v0, Landroid/graphics/Rect;->top:I

    packed-switch p0, :pswitch_data_1ae

    :goto_47
    const-wide/16 v6, 0x150

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v28, 0x3dcccccd    # 0.1f

    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v8, v4, v5, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v4, v10

    move v5, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4

    :cond_62
    const/16 v21, 0x1

    goto :goto_d

    :cond_65
    const/16 v20, 0x1

    goto :goto_11

    :pswitch_68
    if-nez p0, :cond_14a

    const/4 v12, 0x1

    :goto_6b
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v10, v5

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v13, v4, v5

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v9, v5

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v14, v4, v5

    move/from16 v0, v20

    int-to-float v4, v0

    div-float/2addr v4, v14

    float-to-int v0, v4

    move/from16 v25, v0

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v25

    move-object/from16 v0, v22

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    if-eqz v12, :cond_14d

    move v3, v13

    :goto_a9
    if-eqz v12, :cond_151

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_ad
    if-eqz v12, :cond_154

    move v5, v14

    :goto_b0
    if-eqz v12, :cond_158

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_b4
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    int-to-float v8, v10

    const/high16 v28, 0x40000000    # 2.0f

    div-float v8, v8, v28

    add-float/2addr v7, v8

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    int-to-float v0, v9

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    add-float v8, v8, v28

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v8, v8, v28

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, p7, v4

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v10

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v13

    sub-float v26, v4, v5

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, p8, v4

    int-to-float v0, v4

    move/from16 v19, v0

    int-to-float v4, v9

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v9

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v14

    sub-float v27, v4, v5

    sub-float v16, v18, v26

    sub-float v17, v19, v27

    if-eqz v12, :cond_15b

    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_11a
    if-eqz v12, :cond_165

    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, v17, v5

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_12e
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_13e

    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_13e
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v15

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_47

    :cond_14a
    const/4 v12, 0x0

    goto/16 :goto_6b

    :cond_14d
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_a9

    :cond_151
    move v4, v13

    goto/16 :goto_ad

    :cond_154
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_b0

    :cond_158
    move v6, v14

    goto/16 :goto_b4

    :cond_15b
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_11a

    :cond_165
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v17, v6

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_12e

    :pswitch_178
    const/16 v4, 0xe

    move/from16 v0, p4

    if-ne v0, v4, :cond_188

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_47

    :cond_188
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_47

    :pswitch_193
    const/16 v4, 0xe

    move/from16 v0, p4

    if-ne v0, v4, :cond_1a3

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_47

    :cond_1a3
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_47

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_68
        :pswitch_178
        :pswitch_193
        :pswitch_68
    .end packed-switch
.end method

.method static getThumbnailTransitionState(ZZ)I
    .registers 3

    if-eqz p0, :cond_8

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x2

    return v0

    :cond_8
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method static isMultiWindowAppTransition(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0xc9

    if-eq p0, v1, :cond_9

    const/16 v1, 0xca

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0xcb

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static loadClipRevealAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 25

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/16 v21, 0x0

    div-int/lit8 v18, v14, 0x2

    div-int/lit8 v17, v13, 0x2

    add-int v11, v15, v18

    add-int v12, v16, v17

    sub-int v5, v11, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v5, v6

    sub-int v5, v12, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v12, v17

    if-le v5, v6, :cond_45

    sub-int v5, v12, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v21, v5, v6

    const/4 v4, 0x0

    :cond_45
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    add-int v5, v3, v14

    add-int v6, v4, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz v21, :cond_6d

    new-instance v20, Landroid/view/animation/TranslateYAnimation;

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_6d
    const-wide/16 v6, 0x12c

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10, v9, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v19
.end method

.method static loadMultiWindowAnimation(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-eqz p3, :cond_19

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-nez v4, :cond_1a

    if-ge v1, p1, :cond_1a

    const/4 v3, 0x1

    :goto_11
    if-lez v4, :cond_1c

    if-ne v1, p1, :cond_1c

    const/4 v2, 0x1

    :goto_16
    packed-switch p0, :pswitch_data_54

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    const/4 v3, 0x0

    goto :goto_11

    :cond_1c
    const/4 v2, 0x0

    goto :goto_16

    :pswitch_1e
    if-eqz p4, :cond_19

    if-eqz v3, :cond_27

    invoke-static {v7, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_27
    if-eqz v2, :cond_19

    sub-int v5, v1, v4

    int-to-float v5, v5

    invoke-static {v7, v5, v8}, Lcom/android/server/wm/MultiWindowTransition;->loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :pswitch_31
    if-eqz p4, :cond_19

    if-eqz v3, :cond_3a

    invoke-static {v7, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_3a
    if-eqz v2, :cond_19

    invoke-static {p2, p3}, Lcom/android/server/wm/MultiWindowTransition;->loadClipRevealAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :pswitch_41
    if-nez p4, :cond_19

    if-eqz v3, :cond_4a

    invoke-static {v6, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_4a
    if-eqz v2, :cond_19

    sub-int v5, v1, v4

    int-to-float v5, v5

    invoke-static {v6, v8, v5}, Lcom/android/server/wm/MultiWindowTransition;->loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :pswitch_data_54
    .packed-switch 0xc9
        :pswitch_1e
        :pswitch_31
        :pswitch_41
    .end packed-switch
.end method

.method private static loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz p0, :cond_30

    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    :goto_15
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    if-eqz p0, :cond_3e

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ClipRectAnimation;->setZAdjustment(I)V

    return-object v0

    :cond_30
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v4, v0

    move v7, v3

    move v11, v3

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    goto :goto_15

    :cond_3e
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_28
.end method

.method private static loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;
    .registers 8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/TranslateYAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    if-eqz p0, :cond_1f

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setZAdjustment(I)V

    return-object v0

    :cond_1f
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_12
.end method

.method static needKeepTransition(I)Z
    .registers 2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_6

    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/server/wm/MultiWindowTransition;->isMultiWindowAppTransition(I)Z

    move-result v0

    goto :goto_7
.end method

.method private static prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_d

    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_d
    if-eqz p5, :cond_12

    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object p0
.end method
