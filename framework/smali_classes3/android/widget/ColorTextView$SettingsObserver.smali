.class public Landroid/widget/ColorTextView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ColorTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorTextView;


# direct methods
.method public constructor <init>(Landroid/widget/ColorTextView;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/ColorTextView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/widget/ColorTextView$SettingsObserver;->this$0:Landroid/widget/ColorTextView;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ColorTextView$SettingsObserver;->this$0:Landroid/widget/ColorTextView;

    iget-object v0, v0, Landroid/widget/ColorTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ColorTextView$SettingsObserver;->this$0:Landroid/widget/ColorTextView;

    iget-object v1, v1, Landroid/widget/ColorTextView;->Key:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/ColorTextView$SettingsObserver;->this$0:Landroid/widget/ColorTextView;

    invoke-virtual {v0}, Landroid/widget/ColorTextView;->updateSettings()V

    .line 71
    iget-object v0, p0, Landroid/widget/ColorTextView$SettingsObserver;->this$0:Landroid/widget/ColorTextView;

    invoke-virtual {v0}, Landroid/widget/ColorTextView;->update()V

    .line 72
    return-void
.end method
