.class Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AutoDisableScreenButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method public constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->-get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "auto_disable_screen_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "auto_disable_screen_button_cloud_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v2}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap6(Lmiui/util/AutoDisableScreenButtonsManager;)V

    return-void
.end method
