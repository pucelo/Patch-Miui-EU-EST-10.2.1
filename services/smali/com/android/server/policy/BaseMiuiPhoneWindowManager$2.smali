.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;

    if-eqz p1, :cond_25

    const-string/jumbo v0, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v1, "Going to sleep due to KEYCODE_WAKEUP/KEYCODE_DPAD_CENTER: proximity sensor too close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_25
    return-void
.end method
