.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-set1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->show()V

    return-void
.end method
