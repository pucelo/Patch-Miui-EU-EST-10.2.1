.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;
.super Landroid/os/AsyncTask;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->refreshChargingInfo()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get13(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/charge/ChargeUtils;->getChargingHintText(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get16(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo(Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
