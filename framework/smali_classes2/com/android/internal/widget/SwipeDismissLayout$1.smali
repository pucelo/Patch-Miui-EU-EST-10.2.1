.class Lcom/android/internal/widget/SwipeDismissLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SwipeDismissLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_internal_widget_SwipeDismissLayout$1_4841()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V

    :goto_d
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    new-instance v1, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
