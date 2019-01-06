.class Lcom/android/systemui/statusbar/NotificationLogger$1;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLocationsChanged()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLogger;->-get1(Lcom/android/systemui/statusbar/NotificationLogger;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
