.class public Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;
.super Ljava/lang/Object;
.source "KeyguardWallPaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperAuthority"
.end annotation


# static fields
.field public static final APPLY_MAGAZINE_DEFAULT_AUTHORITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->PROVIDER_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->APPLY_MAGAZINE_DEFAULT_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_wallpaper_provider_authority"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBabyWallpaper(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.gallery.cloud.baby.wallpaper_provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isCustomWallpaper(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.thememanager.set_lockwallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.thememanager.theme_lock_live_wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.thememanager.theme_lock_video_wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDefaultWallpaper(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    const-string/jumbo v3, "com.miui.home.none_provider"

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.home.none_provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isLockLiveWallpaper(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.android.thememanager.theme_lock_video_wallpaper"

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLockScreenMagazineWallpaper(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->APPLY_MAGAZINE_DEFAULT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSystemLiveWallpaper(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.android.thememanager.theme_lock_live_wallpaper"

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isThemeLockWallpaper(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.android.thememanager.theme_lockwallpaper"

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setWallpaperAuthority(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_wallpaper_provider_authority"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
