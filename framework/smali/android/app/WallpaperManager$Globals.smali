.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/graphics/Bitmap;

.field private mCachedWallpaperUserId:I

.field private mColorCallbackRegistered:Z

.field private final mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mMainLooperHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/IWallpaperManager;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    return-void
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_10

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_10
    :try_start_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IWallpaperManager;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_4a

    move-result-object v8

    if-eqz v8, :cond_44

    :try_start_24
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_31} :catch_36
    .catchall {:try_start_24 .. :try_end_31} :catchall_45

    move-result-object v0

    :try_start_32
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_4a

    return-object v0

    :catch_36
    move-exception v7

    :try_start_37
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Can\'t decode file"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_45

    :try_start_41
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_44
    return-object v10

    :catchall_45
    move-exception v0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v5, 0x0

    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_23

    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_10} :catch_15
    .catchall {:try_start_7 .. :try_end_10} :catchall_24

    move-result-object v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Can\'t decode stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_23
    return-object v5

    :catchall_24
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method static synthetic lambda$-android_app_WallpaperManager$Globals_12368(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .registers 3

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-nez v1, :cond_d

    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0, p3}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_19
    .catchall {:try_start_5 .. :try_end_d} :catchall_25

    :cond_d
    :goto_d
    :try_start_d
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_25

    monitor-exit p0

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_25

    goto :goto_d

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method forgetLoadedWallpaper()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must request colors for exactly one kind of wallpaper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result-object v1

    return-object v1

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method getWallpaperColors(IILandroid/graphics/Rect;)Landroid/app/WallpaperColors;
    .registers 7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must request colors for exactly one kind of wallpaper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IWallpaperManager;->getPartialWallpaperColors(IILandroid/graphics/Rect;)Landroid/app/WallpaperColors;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result-object v1

    return-object v1

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$-android_app_WallpaperManager$Globals_13333(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 8

    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Landroid/app/WallpaperManager$Globals;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_16

    move-result v0

    monitor-exit v2

    if-eqz v0, :cond_15

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v1, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    :cond_15
    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onWallpaperChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_1d

    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    :cond_1d
    new-instance v0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;

    move v1, p2

    move v2, p3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_7

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2d
    monitor-exit p0

    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v4, :cond_18

    :try_start_5
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_12

    move-result v4

    if-nez v4, :cond_18

    return-object v7

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_18
    monitor-enter p0

    :try_start_19
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_25

    iget v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v4, p4, :cond_25

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_51

    monitor-exit p0

    return-object v4

    :cond_25
    const/4 v4, 0x0

    :try_start_26
    iput-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_51

    :try_start_2b
    invoke-direct {p0, p1, p4}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_33} :catch_55
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_33} :catch_3b
    .catchall {:try_start_2b .. :try_end_33} :catchall_51

    :goto_33
    :try_start_33
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_72

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_51

    monitor-exit p0

    return-object v4

    :catch_3b
    move-exception v3

    :try_start_3c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1a

    if-gt v4, v5, :cond_54

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_51

    goto :goto_33

    :catchall_51
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_54
    :try_start_54
    throw v3

    :catch_55
    move-exception v2

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Out of memory loading the current wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_51

    goto :goto_33

    :cond_72
    monitor-exit p0

    if-eqz p2, :cond_85

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v0, :cond_81

    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-enter p0

    :try_start_7e
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_82

    monitor-exit p0

    :cond_81
    return-object v0

    :catchall_82
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_85
    return-object v7
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;

    invoke-direct {v2, p1}, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2d

    :try_start_1a
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0, p2}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2d

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2d

    goto :goto_1f

    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
