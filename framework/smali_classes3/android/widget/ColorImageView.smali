.class public Landroid/widget/ColorImageView;
.super Landroid/widget/ImageView;
.source "ColorImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorImageView$SettingsObserver;
    }
.end annotation


# instance fields
.field Key:Ljava/lang/String;

.field mColor:I

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field updateRunable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Landroid/widget/ColorImageView;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    const-string v1, "key"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ColorImageView;->Key:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Landroid/widget/ColorImageView;->updateSettings()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/ColorImageView;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/widget/ColorImageView$SettingsObserver;

    iget-object v1, p0, Landroid/widget/ColorImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/widget/ColorImageView$SettingsObserver;-><init>(Landroid/widget/ColorImageView;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/widget/ColorImageView$SettingsObserver;->observe()V

    .line 39
    invoke-virtual {p0}, Landroid/widget/ColorImageView;->update()V

    .line 40
    new-instance v0, Landroid/widget/ColorImageView$1;

    invoke-direct {v0, p0}, Landroid/widget/ColorImageView$1;-><init>(Landroid/widget/ColorImageView;)V

    iput-object v0, p0, Landroid/widget/ColorImageView;->updateRunable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p0, Landroid/widget/ColorImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ColorImageView;->updateRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Landroid/widget/ColorImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ColorImageView;->updateRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method public setImageResource(I)V
    .registers 6
    .param p1, "mint"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Landroid/widget/ColorImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ColorImageView;->updateRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Landroid/widget/ColorImageView;->mColor:I

    invoke-virtual {p0, v0}, Landroid/widget/ColorImageView;->setColorFilter(I)V

    .line 65
    invoke-virtual {p0}, Landroid/widget/ColorImageView;->invalidate()V

    .line 67
    return-void
.end method

.method public updateSettings()V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/ColorImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorImageView;->Key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ColorImageView;->mColor:I

    .line 71
    return-void
.end method
