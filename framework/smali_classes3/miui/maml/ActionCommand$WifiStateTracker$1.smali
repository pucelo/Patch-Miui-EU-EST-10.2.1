.class Lmiui/maml/ActionCommand$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$1:Lmiui/maml/ActionCommand$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLmiui/maml/util/WifiApHelper;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->this$1:Lmiui/maml/ActionCommand$WifiStateTracker;

    iput-object p2, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_18

    const/16 v1, 0xc

    if-eq v0, v1, :cond_12

    const/16 v1, 0xd

    if-ne v0, v1, :cond_18

    :cond_12
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/util/WifiApHelper;->setWifiApEnabled(Z)V

    :cond_18
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v1, 0x0

    return-object v1
.end method
