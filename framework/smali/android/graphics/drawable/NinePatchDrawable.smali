.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mMutated:Z

.field private mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mOutlineInsets:Landroid/graphics/Rect;

.field private mOutlineRadius:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4, p5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .registers 5

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private computeBitmapSize()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v4, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    if-nez v4, :cond_9

    return-void

    :cond_9
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v7

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v8, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v8, v12, :cond_d3

    iget v12, v8, Landroid/graphics/Insets;->left:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget v12, v8, Landroid/graphics/Insets;->top:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v11

    iget v12, v8, Landroid/graphics/Insets;->right:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    iget v12, v8, Landroid/graphics/Insets;->bottom:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    invoke-static {v3, v11, v6, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    :goto_3f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v9, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    if-eqz v9, :cond_db

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-nez v12, :cond_56

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    :cond_56
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    :goto_8a
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v2

    if-eqz v2, :cond_e1

    iget-object v5, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v10

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v12 .. v16}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    invoke-static {v12, v7, v10}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    :goto_d2
    return-void

    :cond_d3
    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    goto/16 :goto_3f

    :cond_db
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    goto :goto_8a

    :cond_e1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    goto :goto_d2
.end method

.method private needsMirroring()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    :cond_b
    if-nez p1, :cond_29

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    :goto_19
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    return-void

    :cond_29
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    goto :goto_19
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_b4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    xor-int/lit8 v13, v13, 0x1

    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v13, v5, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :try_start_4a
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7, v8, v12}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v7, v12, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_e9

    :goto_5a
    if-nez v1, :cond_7a

    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <nine-patch> requires a valid src attribute"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_7a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v13

    if-nez v13, :cond_9e

    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <nine-patch> requires a valid 9-patch source image"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_9e
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v14

    invoke-direct {v13, v1, v14}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v6, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    :cond_b4
    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/4 v13, 0x5

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_dd

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v11, v13}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_dd
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    if-eqz v10, :cond_e8

    iput-object v10, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    :cond_e8
    return-void

    :catch_e9
    move-exception v2

    goto/16 :goto_5a
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-nez v2, :cond_8

    return-void

    :cond_8
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_14
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_17} :catch_36
    .catchall {:try_start_14 .. :try_end_17} :catchall_3e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_1a
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2e

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2e
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void

    :catch_36
    move-exception v1

    :try_start_37
    invoke-static {v1}, Landroid/graphics/drawable/NinePatchDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1a

    :catchall_3e
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->canApplyTheme()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearMutated()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v14, :cond_f3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v14

    if-nez v14, :cond_f3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x1

    :goto_25
    iget v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_f6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v9

    iget v0, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v14

    if-nez v14, :cond_f9

    const/4 v5, 0x1

    :goto_4f
    if-eqz v5, :cond_a8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    int-to-float v14, v14

    iget-object v15, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v15}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    int-to-float v15, v15

    div-float v11, v14, v15

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    if-nez v14, :cond_7d

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    :cond_7d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    iput v14, v12, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    iput v14, v12, Landroid/graphics/Rect;->top:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v12, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    move-object v1, v12

    :cond_a8
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v6

    if-eqz v6, :cond_cd

    if-ltz v10, :cond_fc

    :goto_b0
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v3, v14, v15

    iget v14, v1, Landroid/graphics/Rect;->top:I

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_cd
    iget-object v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v1, v15}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-ltz v10, :cond_df

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_df
    if-eqz v2, :cond_e9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_e9
    if-ltz v9, :cond_f2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_f2
    return-void

    :cond_f3
    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_f6
    const/4 v9, -0x1

    goto/16 :goto_48

    :cond_f9
    const/4 v5, 0x0

    goto/16 :goto_4f

    :cond_fc
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    goto :goto_b0
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    const/16 v0, 0xff

    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1a

    :cond_18
    const/4 v0, -0x3

    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->left:I

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_15
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 10

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v7

    if-eqz v7, :cond_54

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v3

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v4

    iget v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iget v0, v7, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_54
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_11
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v1, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-boolean v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return v0
.end method

.method public isFilterBitmap()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isStateful()Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12

    :cond_15
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    :cond_16
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x1

    return v1

    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_9

    const/16 v0, 0xff

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-boolean p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTargetDensity(I)V
    .registers 3

    if-nez p1, :cond_4

    const/16 p1, 0xa0

    :cond_4
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .registers 3

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method
