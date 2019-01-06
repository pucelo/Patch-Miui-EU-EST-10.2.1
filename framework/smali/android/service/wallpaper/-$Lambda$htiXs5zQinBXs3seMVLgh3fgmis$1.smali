.class final synthetic Landroid/service/wallpaper/-$Lambda$htiXs5zQinBXs3seMVLgh3fgmis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/service/wallpaper/-$Lambda$htiXs5zQinBXs3seMVLgh3fgmis$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-android_service_wallpaper_WallpaperService$Engine-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/-$Lambda$htiXs5zQinBXs3seMVLgh3fgmis$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/service/wallpaper/-$Lambda$htiXs5zQinBXs3seMVLgh3fgmis$1;->$m$0()V

    return-void
.end method
