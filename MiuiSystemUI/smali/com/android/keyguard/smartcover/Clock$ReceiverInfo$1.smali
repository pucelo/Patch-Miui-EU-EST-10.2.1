.class Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;


# direct methods
.method constructor <init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;->this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/smartcover/Clock;->-set0(Ljava/util/Calendar;)Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;->this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    invoke-static {v0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->-get0(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;->this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    iget-object v1, v1, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
