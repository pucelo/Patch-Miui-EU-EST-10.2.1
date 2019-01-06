.class public Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;
.super Ljava/lang/Object;
.source "KeyguardWallPaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wallpaper"
.end annotation


# static fields
.field private static sLockWallpaperCache:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sLockWallpaperModifiedTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLockWallpaper(Landroid/content/Context;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isDefaultWallpaper(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/system/media/lockscreen/video/video_wallpaper.mp4"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/system/media/lockscreen/video/video_wallpaper_thumbnail.jpg"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    if-nez v2, :cond_5

    :cond_1
    :goto_1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    move-object v2, v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    if-nez v2, :cond_6

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string/jumbo v4, "WallpaperThemeResources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLockWallpaper return null; filePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " previewPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_4
    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isLockLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/system/theme_magic/video/video_wallpaper.mp4"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/system/theme_magic/video/video_wallpaper_thumbnail.jpg"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    invoke-static {p0, v0, v2}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperCache(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_7
    const-string/jumbo v1, "null"

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "null"

    goto :goto_3
.end method

.method private static final getLockWallpaperCache(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-wide v10, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperModifiedTime:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    return-object v9

    :cond_0
    const/4 v9, 0x0

    sput-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    :try_start_0
    const-string/jumbo v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-static {v1, v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v4, v5, Landroid/graphics/Point;->y:I

    if-le v7, v4, :cond_1

    const-string/jumbo v9, "LockWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wrong display metrics for width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " and height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    move v7, v4

    move v4, v6

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v7, v4, v10}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v9, Landroid/util/Pair;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v9, p1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sput-wide v10, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperModifiedTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    sget-object v9, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->sLockWallpaperCache:Landroid/util/Pair;

    return-object v9

    :catch_0
    move-exception v3

    const-string/jumbo v9, "WallpaperThemeResources"

    const-string/jumbo v10, "getLockWallpaperCache"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v9, "WallpaperThemeResources"

    const-string/jumbo v10, "getLockWallpaperCache"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "wallpaper"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "com.miui.miwallpaper.MiWallpaper"

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->isMiwallpaperPreviewExist()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "/data/system/theme/miwallpaper_preview"

    invoke-static {p0, v4}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->loadDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaper(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    return-object v4

    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7

    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string/jumbo v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LockWallpaper"

    const-string/jumbo v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static isMiwallpaperPreviewExist()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/miwallpaper_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static loadDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    :catch_0
    move-exception v1

    return-object v3

    :cond_0
    return-object v3
.end method
