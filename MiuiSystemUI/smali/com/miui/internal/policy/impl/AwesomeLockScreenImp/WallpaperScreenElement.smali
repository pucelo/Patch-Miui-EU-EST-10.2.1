.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "WallpaperScreenElement.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
