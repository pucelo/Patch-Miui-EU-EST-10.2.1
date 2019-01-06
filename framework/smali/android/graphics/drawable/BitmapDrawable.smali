.class public Landroid/graphics/drawable/BitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_DISABLED:I = -0x1

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TILE_MODE_UNDEFINED:I = -0x2


# instance fields
.field private mBitmapHeight:I

.field private mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mDstRectAndInsetsDirty:Z

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mTargetDensity:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 5

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_33

    const-string/jumbo v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_33

    const-string/jumbo v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2d

    const-string/jumbo v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2d

    const-string/jumbo v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method private computeBitmapSize()V
    .registers 4

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    :goto_17
    return-void

    :cond_18
    iput v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    iput v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    goto :goto_17
.end method

.method private getOrCreateMirrorMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private needMirroring()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_8
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_b
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .registers 11

    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-nez v0, :cond_4f

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getLayoutDirection()I

    move-result v5

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    iget v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    iget-object v4, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v1

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v1

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v1

    invoke-static {v7, v9, v8, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    return-void

    :cond_4f
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    goto :goto_4b
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    return-void
.end method

.method private updateShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Shader;Z)V
    .registers 13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    iget v5, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    if-eqz v4, :cond_3e

    if-eq v4, v5, :cond_3e

    const/4 v3, 0x1

    :goto_b
    if-nez v3, :cond_f

    if-eqz p4, :cond_40

    :cond_f
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->getOrCreateMirrorMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    if-eqz p4, :cond_2e

    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_2e
    if-eqz v3, :cond_37

    int-to-float v6, v5

    int-to-float v7, v4

    div-float v0, v6, v7

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_37
    invoke-virtual {p3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_3a
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_3e
    const/4 v3, 0x0

    goto :goto_b

    :cond_40
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p3, v6}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_3a
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    move/from16 v0, p2

    iput v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v9, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_105

    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v9, v10, v0, v1, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    if-lez p2, :cond_83

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->density:I

    move/from16 v18, v0

    if-lez v18, :cond_83

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->density:I

    move/from16 v18, v0

    const v19, 0xffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_83

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->density:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_c4

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/util/TypedValue;->density:I

    :cond_83
    :goto_83
    const/4 v3, 0x0

    const/16 v19, 0x0

    const/4 v6, 0x0

    :try_start_87
    move-object/from16 v0, v17

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v9, v0, v6, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_9a} :catch_e1
    .catchall {:try_start_87 .. :try_end_9a} :catchall_23d

    move-result-object v3

    if-eqz v6, :cond_a0

    :try_start_9d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_df
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_a3

    :cond_a0
    :goto_a0
    if-eqz v19, :cond_a4

    :try_start_a2
    throw v19
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v5

    :cond_a4
    if-nez v3, :cond_103

    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": <bitmap> requires a valid \'src\' attribute"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_c4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->density:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    div-int v18, v18, p2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/util/TypedValue;->density:I

    goto :goto_83

    :catch_df
    move-exception v19

    goto :goto_a0

    :catch_e1
    move-exception v18

    :try_start_e2
    throw v18
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e3

    :catchall_e3
    move-exception v19

    move-object/from16 v21, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v21

    :goto_ea
    if-eqz v6, :cond_ef

    :try_start_ec
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ef} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_a3

    :cond_ef
    :goto_ef
    if-eqz v19, :cond_102

    :try_start_f1
    throw v19

    :catch_f2
    move-exception v20

    if-nez v19, :cond_f8

    move-object/from16 v19, v20

    goto :goto_ef

    :cond_f8
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_ef

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ef

    :cond_102
    throw v18
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_103} :catch_a3

    :cond_103
    iput-object v3, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    :cond_105
    iget-object v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23a

    iget-object v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v4

    :goto_113
    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setMipMap(Z)V

    iget-boolean v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    move/from16 v18, v0

    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    iget v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    const/16 v18, 0xa

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_170

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_170
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_17e

    iput-object v15, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v18

    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v18

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->isDither()Z

    move-result v18

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget v0, v11, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    const/16 v18, 0x6

    const/16 v19, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v12, v0, :cond_1fb

    invoke-static {v12}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_1fb
    const/16 v18, 0xb

    const/16 v19, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v13, v0, :cond_21a

    invoke-static {v13}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_21a
    const/16 v18, 0xc

    const/16 v19, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v14, v0, :cond_239

    invoke-static {v14}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_239
    return-void

    :cond_23a
    const/4 v4, 0x0

    goto/16 :goto_113

    :catchall_23d
    move-exception v18

    goto/16 :goto_ea
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2f

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-nez v1, :cond_2f

    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": <bitmap> requires a valid \'src\' attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    if-nez v2, :cond_8

    return-void

    :cond_8
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    if-eqz v3, :cond_1c

    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_14
    iget v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_19} :catch_38
    .catchall {:try_start_14 .. :try_end_19} :catchall_40

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c
    :goto_1c
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_30

    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    :cond_30
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void

    :catch_38
    move-exception v1

    :try_start_39
    invoke-static {v1}, Landroid/graphics/drawable/BitmapDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_40

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1c

    :catchall_40
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->canApplyTheme()Z

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

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v10, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v7, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v4, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    iget-boolean v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    if-eqz v10, :cond_20

    iget-object v8, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v9, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-nez v8, :cond_83

    if-nez v9, :cond_83

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1e
    iput-boolean v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    :cond_20
    iget v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    cmpl-float v10, v10, v13

    if-eqz v10, :cond_94

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v10, v5

    iget v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_39
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v10, :cond_96

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v10

    if-nez v10, :cond_96

    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    :goto_49
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    move-result v2

    if-nez v6, :cond_98

    if-eqz v2, :cond_6e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {p1, v10, v13}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6e
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v12, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_78

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_78
    :goto_78
    if-eqz v1, :cond_7d

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7d
    if-ltz v5, :cond_82

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_82
    return-void

    :cond_83
    new-instance v10, Landroid/graphics/BitmapShader;

    if-nez v8, :cond_89

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_89
    if-nez v9, :cond_8d

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_8d
    invoke-direct {v10, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1e

    :cond_94
    const/4 v5, -0x1

    goto :goto_39

    :cond_96
    const/4 v1, 0x0

    goto :goto_49

    :cond_98
    invoke-direct {p0, v0, v4, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;->updateShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Shader;Z)V

    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_78
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 5

    const/4 v1, -0x3

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_23

    :cond_22
    :goto_22
    return v1

    :cond_23
    const/4 v1, -0x1

    goto :goto_22
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_18
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    :goto_22
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_18

    :cond_28
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public hasAntiAlias()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasMipMap()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasMipMap()Z

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

    sget-object v1, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/BitmapDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-boolean v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    return v0
.end method

.method public isFilterBitmap()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    :cond_16
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Shader;Z)V

    :cond_1e
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x1

    return v1

    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_14
    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-boolean v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput-boolean p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_d
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setMipMap(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setTargetDensity(I)V
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_16

    if-nez p1, :cond_8

    const/16 p1, 0xa0

    :cond_8
    iput p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    :cond_13
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_16
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .registers 3

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_b

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_16

    :cond_b
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object p2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-boolean v2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_16
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_17

    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_17
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_17

    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_17
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    return-void
.end method
