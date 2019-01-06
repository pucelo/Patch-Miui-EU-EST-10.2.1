.class Lcom/android/keyguard/MiuiKeyguardClock$3;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$3;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$3;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateLockScreenMagazineInfo()V

    return-void
.end method
