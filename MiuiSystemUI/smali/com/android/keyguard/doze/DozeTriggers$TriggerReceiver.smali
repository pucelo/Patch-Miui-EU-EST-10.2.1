.class Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/keyguard/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/doze/DozeTriggers;Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/keyguard/doze/DozeTriggers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "Received pulse intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/doze/DozeTriggers;->-wrap1(Lcom/android/keyguard/doze/DozeTriggers;I)V

    :cond_1
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_2
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    return-void
.end method
