.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;
.super Landroid/os/AsyncTask;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setWifiEnabled(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManagerCompat;->stopTethering(Landroid/net/wifi/WifiManager;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v1, 0x0

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ConnectivityManagerCompat;->stopTethering(Landroid/net/ConnectivityManager;I)V

    goto :goto_0
.end method
