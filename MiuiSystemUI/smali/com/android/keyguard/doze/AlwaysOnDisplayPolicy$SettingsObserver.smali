.class final Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "always_on_display_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get0(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get0(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "always_on_display_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_screen_off_delay"

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_cooldown_trigger"

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_cooldown_period"

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    const-string/jumbo v5, "screen_brightness_array"

    const v6, 0x7f03002b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-wrap0(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;Ljava/lang/String;[I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iget-object v3, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    const-string/jumbo v5, "dimming_scrim_array"

    const v6, 0x7f03002c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-wrap0(Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;Ljava/lang/String;[I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AlwaysOnDisplayPolicy"

    const-string/jumbo v4, "Bad AOD constants"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
