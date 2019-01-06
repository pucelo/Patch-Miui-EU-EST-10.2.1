.class public Lcom/android/systemui/power/PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerReceiver.java"


# static fields
.field public static ACTION_OPEN_SAVE_MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.android.systemui.OPEN_SAVE_MODE"

    sput-object v0, Lcom/android/systemui/power/PowerReceiver;->ACTION_OPEN_SAVE_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/power/PowerReceiver;->ACTION_OPEN_SAVE_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/power/PowerUtils;->hideLowBatteryNotification(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/systemui/power/PowerUtils;->enableSaveMode(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
