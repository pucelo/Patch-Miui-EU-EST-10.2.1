.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;->handleScreenTurnedOn()V
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get12(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-set4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method
