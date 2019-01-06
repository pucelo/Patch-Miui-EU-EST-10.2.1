.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "ScreenshotProvider.java"


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 10

    const/4 v3, 0x0

    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "__is_secure"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x1adaf

    iget-object v9, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScreenHeight()I

    move-result v2

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    goto :goto_0
.end method
