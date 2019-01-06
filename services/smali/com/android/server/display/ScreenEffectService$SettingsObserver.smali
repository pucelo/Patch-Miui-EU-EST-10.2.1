.class Lcom/android/server/display/ScreenEffectService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {p1}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "screen_paper_mode_enabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v5}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_paper_mode_enabled"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_162

    :goto_26
    invoke-static {v4, v2}, Lcom/android/server/display/ScreenEffectService;->-set7(Lcom/android/server/display/ScreenEffectService;Z)Z

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v4}, Lcom/android/server/display/ScreenEffectService;->-get11(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v4

    invoke-static {v2, v4, v3}, Lcom/android/server/display/ScreenEffectService;->-wrap4(Lcom/android/server/display/ScreenEffectService;ZZ)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    const-string/jumbo v4, "screen_paper_mode_level"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v4}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_paper_mode_level"

    sget v6, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/ScreenEffectService;->-set8(Lcom/android/server/display/ScreenEffectService;I)I

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get11(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3, v2, v2}, Lcom/android/server/display/ScreenEffectService;->-wrap4(Lcom/android/server/display/ScreenEffectService;ZZ)V

    goto :goto_34

    :cond_64
    const-string/jumbo v4, "screen_optimize_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_optimize_mode"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->-set10(Lcom/android/server/display/ScreenEffectService;I)I

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-wrap5(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_34

    :cond_8b
    const-string/jumbo v4, "screen_color_level"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_color_level"

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->-set9(Lcom/android/server/display/ScreenEffectService;I)I

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-wrap5(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_34

    :cond_b0
    const-string/jumbo v4, "screen_monochrome_mode_enabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v5}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_monochrome_mode_enabled"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_165

    :goto_ce
    invoke-static {v4, v2}, Lcom/android/server/display/ScreenEffectService;->-set2(Lcom/android/server/display/ScreenEffectService;Z)Z

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-wrap1(Lcom/android/server/display/ScreenEffectService;)V

    goto/16 :goto_34

    :cond_d8
    const-string/jumbo v2, "screen_monochrome_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_monochrome_mode"

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->-set3(Lcom/android/server/display/ScreenEffectService;I)I

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-wrap1(Lcom/android/server/display/ScreenEffectService;)V

    goto/16 :goto_34

    :cond_fe
    const-string/jumbo v2, "screen_monochrome_mode_white_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "screen_monochrome_mode_white_list"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->-set4(Lcom/android/server/display/ScreenEffectService;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_34

    :cond_11b
    const-string/jumbo v2, "night_light_level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_light_level"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-object v2, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v2, :cond_34

    sget-object v2, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/ScreenEffectService$LocalService;->setNightLight(I)V

    goto/16 :goto_34

    :cond_141
    const-string/jumbo v2, "drive_mode_drive_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v4}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "drive_mode_drive_mode"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->-set1(Lcom/android/server/display/ScreenEffectService;I)I

    goto/16 :goto_34

    :cond_162
    move v2, v3

    goto/16 :goto_26

    :cond_165
    move v2, v3

    goto/16 :goto_ce
.end method
