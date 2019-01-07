.class public Landroid/widget/ColorZoomLayout$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ColorZoomLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorZoomLayout;


# direct methods
.method public constructor <init>(Landroid/widget/ColorZoomLayout;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/ColorZoomLayout;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Landroid/widget/ColorZoomLayout$SettingsObserver;->this$0:Landroid/widget/ColorZoomLayout;

    .line 71
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 72
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .line 74
    iget-object v0, p0, Landroid/widget/ColorZoomLayout$SettingsObserver;->this$0:Landroid/widget/ColorZoomLayout;

    iget-object v0, v0, Landroid/widget/ColorZoomLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorZoomLayout$SettingsObserver;->this$0:Landroid/widget/ColorZoomLayout;

    iget-object v1, v1, Landroid/widget/ColorZoomLayout;->Key:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 78
    iget-object v0, p0, Landroid/widget/ColorZoomLayout$SettingsObserver;->this$0:Landroid/widget/ColorZoomLayout;

    invoke-virtual {v0}, Landroid/widget/ColorZoomLayout;->updateSettings()V

    .line 79
    iget-object v0, p0, Landroid/widget/ColorZoomLayout$SettingsObserver;->this$0:Landroid/widget/ColorZoomLayout;

    invoke-virtual {v0}, Landroid/widget/ColorZoomLayout;->updateColorZoom()V

    .line 80
    return-void
.end method
