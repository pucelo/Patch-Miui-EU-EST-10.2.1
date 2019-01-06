.class Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get1(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
