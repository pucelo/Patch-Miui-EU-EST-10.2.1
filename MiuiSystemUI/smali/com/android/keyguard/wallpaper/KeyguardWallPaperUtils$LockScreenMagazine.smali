.class public Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;
.super Ljava/lang/Object;
.source "KeyguardWallPaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockScreenMagazine"
.end annotation


# static fields
.field public static final CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

.field public static final LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

.field public static final PROVIDER_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

.field public static SYSTEM_SETTINGS_KEY_LOCKSCREEN_MAGAZINE_STATUS:Ljava/lang/String;

.field private static sLockScreenMagazinePreviewAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.android.fashiongallery"

    :goto_0
    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    :goto_1
    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->PROVIDER_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->PROVIDER_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->sLockScreenMagazinePreviewAvailable:Z

    const-string/jumbo v0, "lock_screen_magazine_status"

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->SYSTEM_SETTINGS_KEY_LOCKSCREEN_MAGAZINE_STATUS:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "com.mfashiongallery.emag"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLockScreenMagazinePreContent(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    const-string/jumbo v2, "getTransitionInfo"

    invoke-static {p0, v1, v2, v3, v3}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getLockScreenMagazineSettingsDeepLink(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    const-string/jumbo v2, "getAppSettingsDeeplink"

    invoke-static {p0, v1, v2, v3, v3}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "result_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public static getLockScreenMagazineStatus(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->SYSTEM_SETTINGS_KEY_LOCKSCREEN_MAGAZINE_STATUS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLockScreenMagazineWallpaperInfo(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/MiuiKeyguardUtils;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "getLockWallpaperInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v6, "KeyguardWallPaperUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryLockScreenMagazineWallpaperInfo bundlestring="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "result_json"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "result_json"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    invoke-direct {v4}, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;-><init>()V

    :cond_1
    invoke-virtual {v4}, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->initExtra()V

    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KeyguardWallPaperUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryLockScreenMagazineWallpaperInfo exception uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;->-get0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "KeyguardWallPaperUtils"

    const-string/jumbo v4, "getResultFromProvider exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_1
    return-object v5

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_2
    throw v3
.end method

.method public static gotoLockScreenMagazine(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "showTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "from"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "keyguard_goto_lockscreen_magazine_fail"

    invoke-static {v2}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    const-string/jumbo v2, "KeyguardWallPaperUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isKeyguardWallpaperPreviewAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->sLockScreenMagazinePreviewAvailable:Z

    return v0
.end method

.method public static notifySubscriptionChange(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    const-string/jumbo v1, "subscriptionChange"

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setLockScreenMagazinePreviewAvailability(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->sLockScreenMagazinePreviewAvailable:Z

    return-void
.end method

.method public static setLockScreenMagazineStatus(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->SYSTEM_SETTINGS_KEY_LOCKSCREEN_MAGAZINE_STATUS:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
