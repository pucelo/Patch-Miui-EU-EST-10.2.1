.class public Landroid/widget/ColorZoomLayout;
.super Landroid/widget/LinearLayout;
.source "ColorZoomLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorZoomLayout$SettingsObserver;
    }
.end annotation


# instance fields
.field Key:Ljava/lang/String;

.field mColor:I

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "none"

    iput-object v0, p0, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "none"

    iput-object v0, p0, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Landroid/widget/ColorZoomLayout;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "key"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 36
    iput-object v0, p0, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    .line 37
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ColorZoomLayout;->updateSettings()V

    .line 38
    new-instance v1, Landroid/widget/ColorZoomLayout$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/widget/ColorZoomLayout$SettingsObserver;-><init>(Landroid/widget/ColorZoomLayout;Landroid/os/Handler;)V

    invoke-virtual {v1}, Landroid/widget/ColorZoomLayout$SettingsObserver;->observe()V

    .line 39
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 43
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_25

    .line 46
    const-string v1, "none"

    iget-object v2, p0, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget v1, p0, Landroid/widget/ColorZoomLayout;->mColor:I

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_22

    .line 47
    iget v1, p0, Landroid/widget/ColorZoomLayout;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 49
    :cond_22
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_25
    goto :goto_29

    .line 52
    :cond_26
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    :goto_29
    return-void
.end method

.method public updateColorZoom()V
    .registers 5

    .line 56
    invoke-virtual {p0}, Landroid/widget/ColorZoomLayout;->getChildCount()I

    move-result v0

    .line 57
    .local v0, "i":I
    if-lez v0, :cond_1c

    .line 58
    move v1, v0

    .line 58
    .local v1, "k":I
    :goto_7
    if-lez v1, :cond_1c

    .line 59
    invoke-virtual {p0, v1}, Landroid/widget/ColorZoomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v1}, Landroid/widget/ColorZoomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ColorZoomLayout;->removeView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v2}, Landroid/widget/ColorZoomLayout;->addView(Landroid/view/View;)V

    .line 58
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 64
    .end local v1    # "k":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1c
    return-void
.end method

.method public updateSettings()V
    .registers 4

    .line 67
    iget-object v0, p0, Landroid/widget/ColorZoomLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ColorZoomLayout;->mColor:I

    .line 68
    return-void
.end method
