.class public Landroid/widget/ColorImageView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ColorImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ColorImageView;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/ColorImageView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/widget/ColorImageView$SettingsObserver;->this$0:Landroid/widget/ColorImageView;

    .line 74
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/ColorImageView$SettingsObserver;->this$0:Landroid/widget/ColorImageView;

    iget-object v0, v0, Landroid/widget/ColorImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorImageView$SettingsObserver;->this$0:Landroid/widget/ColorImageView;

    iget-object v1, v1, Landroid/widget/ColorImageView;->Key:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Landroid/widget/ColorImageView$SettingsObserver;->this$0:Landroid/widget/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ColorImageView;->updateSettings()V

    .line 82
    iget-object v0, p0, Landroid/widget/ColorImageView$SettingsObserver;->this$0:Landroid/widget/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ColorImageView;->update()V

    .line 83
    return-void
.end method
