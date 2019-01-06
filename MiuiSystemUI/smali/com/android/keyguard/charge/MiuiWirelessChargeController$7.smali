.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get8(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
