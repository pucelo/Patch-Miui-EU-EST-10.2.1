.class public Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;
.super Ljava/lang/Object;
.source "LockScreenMagazineAnalytics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "lockScreenMagazineStatus"

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isLockScreenMagazineWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "open"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "currentLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string/jumbo v1, "close"

    goto :goto_0
.end method

.method private static record(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "LockScreenMagazineAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLockScreenMagazineAd(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "com.xiaomi.ad.LockScreenAdProvider"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "key"

    iget-object v8, v4, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "event"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "request_json"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "recordEvent"

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v7, "miui_keyguard"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v7
.end method

.method public static recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "keyguard_preview_button"

    invoke-static {v1, v0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLockScreenWallperProviderChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lock_screen_wallpaper_provider_changed"

    invoke-static {v1, v0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLockScreenWallperProviderStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lock_screen_magazine_open_status"

    invoke-static {v1, v0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordNegativeStatus(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v0

    const-string/jumbo v3, "status"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "lockScreenMagazine"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "lock_screen_negative_status"

    invoke-static {v2, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v2, "controlCenter"

    goto :goto_0
.end method

.method public static recordThemeType(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {p0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->getBaseParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "isDefault"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "default"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lock_screen_theme_type"

    invoke-static {v1, v0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "tripartite"

    goto :goto_0
.end method
