.class public Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;
.super Ljava/lang/Object;
.source "KeyguardWallPaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;,
        Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;,
        Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;
    }
.end annotation


# static fields
.field private static final PROVIDER_URI_HOME:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;->PROVIDER_URI_HOME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.miui.product.home"

    const-string/jumbo v2, "com.miui.home"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".launcher.settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils;->PROVIDER_URI_HOME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
