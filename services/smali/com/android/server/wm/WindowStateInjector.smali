.class public Lcom/android/server/wm/WindowStateInjector;
.super Ljava/lang/Object;
.source "WindowStateInjector.java"


# static fields
.field static DISABLE_SAVE_SURFACE:Z = false

.field static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.disableSaveSurface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowStateInjector;->DISABLE_SAVE_SURFACE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSaveSurface(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowStateInjector;->DISABLE_SAVE_SURFACE:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v1
.end method
