.class final synthetic Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$-com_android_server_wallpaper_WallpaperManagerService$WallpaperConnection_34337()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$-com_android_server_wallpaper_WallpaperManagerService$WallpaperConnection_37349()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->$id:B

    iput-object p2, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
