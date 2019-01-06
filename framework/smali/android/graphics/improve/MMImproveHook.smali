.class public Landroid/graphics/improve/MMImproveHook;
.super Ljava/lang/Object;
.source "MMImproveHook.java"

# interfaces
.implements Landroid/graphics/improve/ImproveHookAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/improve/MMImproveHook$MMDrawable;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BROWSEUI:Ljava/lang/String; = "SnsBrowseUI"

.field private static final IMAGE_VIEW_MULTI_TOUCH:Ljava/lang/String; = "MultiTouchImageView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const-string/jumbo v0, "SnsBrowseUI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "MultiTouchImageView"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1d

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "bitmap not bitmap drawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const-string/jumbo v1, "SnsBrowseUI"

    iget-object v2, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_30

    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v2, :cond_24

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "set bitmap error"

    invoke-static {v1, v2}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v0, Landroid/graphics/improve/MMImproveHook$MMDrawable;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/improve/MMImproveHook$MMDrawable;-><init>(Landroid/graphics/improve/MMImproveHook;Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/content/res/Resources;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    return-void
.end method
