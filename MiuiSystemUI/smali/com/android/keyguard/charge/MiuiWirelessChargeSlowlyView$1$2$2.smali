.class Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2$2;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2$2;->this$2:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2$2;->this$2:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2$2;->this$2:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2$2;->this$2:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
