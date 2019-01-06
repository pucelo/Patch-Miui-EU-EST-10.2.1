.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;
.super Landroid/database/ContentObserver;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "heads_up_snooze_length_ms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get7(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-set0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;I)I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HeadsUpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSnoozeLengthMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get7(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
