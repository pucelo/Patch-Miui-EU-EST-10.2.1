.class public Lmiui/maml/AnimatingDrawable;
.super Lmiui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFancyDrawable:Lmiui/maml/FancyDrawable;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .registers 7

    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .registers 11

    const/4 v9, 0x0

    new-instance v0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "den"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_83
    return-void

    :cond_84
    const-string/jumbo v0, "Maml.AnimatingDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mQuietDrwable is null! package/class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lmiui/maml/AnimatingDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lmiui/maml/AnimatingDrawable;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v3, "Maml.AnimatingDrawable"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "Maml.AnimatingDrawable"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_13
    monitor-exit v1

    return-object v2

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public prepareFancyDrawable()V
    .registers 9

    iget-object v7, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-eqz v1, :cond_9

    monitor-exit v7

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/FancyDrawable;

    if-eqz v1, :cond_2e

    check-cast v0, Lmiui/maml/FancyDrawable;

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v7

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/maml/MamlDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    return-void
.end method
