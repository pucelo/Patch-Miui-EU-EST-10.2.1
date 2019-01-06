.class Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2$1;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;

    iget-object v2, v2, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wireless_charge"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "show_dialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
