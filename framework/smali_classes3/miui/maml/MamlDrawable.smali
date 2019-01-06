.class public Lmiui/maml/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlDrawable$1;,
        Lmiui/maml/MamlDrawable$MamlDrawableState;
    }
.end annotation


# static fields
.field private static sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeLocation:Landroid/graphics/Rect;

.field protected mHeight:I

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mInvalidateSelf:Ljava/lang/Runnable;

.field protected mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lmiui/maml/MamlDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/MamlDrawable$1;-><init>(Lmiui/maml/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0, p1}, Lmiui/maml/MamlDrawable;->drawIcon(Landroid/graphics/Canvas;)V

    :try_start_3
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_47} :catch_4d

    goto :goto_36

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_36
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/MamlDrawable;->cleanUp()V

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->finalize()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v8, 0x0

    if-eqz p2, :cond_49

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_b

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_39

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Badge location "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not in badged drawable bounds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v7, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_39
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    if-gt v3, v4, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    if-gt v3, v4, :cond_b

    :cond_49
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_5b

    sget-object v3, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_68

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_5b
    :goto_5b
    iput-object p1, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v3, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, v3, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    return-void

    :cond_68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    goto :goto_5b
.end method

.method public setBounds(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/MamlDrawable;->mWidth:I

    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/MamlDrawable;->mHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setIntrinsicSize(II)V
    .registers 3

    iput p1, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return-void
.end method
