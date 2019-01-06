.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWallPaperInfo(Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->refreshWallpaperInfo()V

    return-void
.end method
