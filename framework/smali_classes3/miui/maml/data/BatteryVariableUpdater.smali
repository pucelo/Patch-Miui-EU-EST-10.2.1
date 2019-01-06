.class public Lmiui/maml/data/BatteryVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lmiui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 6

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_level"

    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 10

    const/16 v1, 0x64

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_2e

    iget v2, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    if-eq v2, v0, :cond_2e

    iget-object v2, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    if-lt v0, v1, :cond_2f

    :goto_21
    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2e
    return-void

    :cond_2f
    move v1, v0

    goto :goto_21
.end method
