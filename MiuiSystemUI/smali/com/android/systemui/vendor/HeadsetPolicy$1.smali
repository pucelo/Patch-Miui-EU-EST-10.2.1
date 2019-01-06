.class Lcom/android/systemui/vendor/HeadsetPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vendor/HeadsetPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vendor/HeadsetPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/vendor/HeadsetPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateHeadset(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-static {v1}, Lcom/android/systemui/vendor/HeadsetPolicy;->-get0(Lcom/android/systemui/vendor/HeadsetPolicy;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-static {v1}, Lcom/android/systemui/vendor/HeadsetPolicy;->-get0(Lcom/android/systemui/vendor/HeadsetPolicy;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "com.android.systemui:HEADSET"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/vendor/HeadsetPolicy$1;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method
