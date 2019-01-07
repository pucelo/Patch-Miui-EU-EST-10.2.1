.class public Landroid/widget/ColorTextView;
.super Landroid/widget/TextView;
.source "ColorTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorTextView$SettingsObserver;
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
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Landroid/widget/ColorTextView;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    const-string v1, "key"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ColorTextView;->Key:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/widget/ColorTextView;->updateSettings()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/ColorTextView;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Landroid/widget/ColorTextView$SettingsObserver;

    iget-object v1, p0, Landroid/widget/ColorTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/widget/ColorTextView$SettingsObserver;-><init>(Landroid/widget/ColorTextView;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/widget/ColorTextView$SettingsObserver;->observe()V

    .line 34
    invoke-virtual {p0}, Landroid/widget/ColorTextView;->update()V

    .line 35
    new-instance v0, Landroid/widget/ColorTextView$1;

    invoke-direct {v0, p0}, Landroid/widget/ColorTextView$1;-><init>(Landroid/widget/ColorTextView;)V

    iput-object v0, p0, Landroid/widget/ColorTextView;->updateRunable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method


# virtual methods
.method public setTextColor(I)V
    .registers 4
    .param p1, "mint"    # I

    .prologue
    .line 44
    iget v0, p0, Landroid/widget/ColorTextView;->mColor:I

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :goto_d
    invoke-virtual {p0}, Landroid/widget/ColorTextView;->invalidate()V

    .line 49
    return-void

    .line 47
    :cond_11
    iget v0, p0, Landroid/widget/ColorTextView;->mColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d
.end method

.method public update()V
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/ColorTextView;->mColor:I

    invoke-virtual {p0, v0}, Landroid/widget/ColorTextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/ColorTextView;->invalidate()V

    .line 54
    return-void
.end method

.method public updateSettings()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/ColorTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorTextView;->Key:Ljava/lang/String;

    const v2, -0xff0100

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ColorTextView;->mColor:I

    .line 58
    return-void
.end method
