.class public Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSystemAlarm:Z

.field private mHasThirdPartyAlarm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireAlarmChanged()V

    return-void
.end method

.method private fireAlarmChanged()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NextAlarmController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHasNextAlarm="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "alarmSet"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "alarmSystem"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireAlarmChanged()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method
