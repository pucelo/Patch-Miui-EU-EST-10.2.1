.class Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;
.super Landroid/os/AsyncTask;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->showChargingTransientIndication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/charge/ChargeUtils;->getChargingHintText(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method
