.class Lcom/android/systemui/qs/QSFragment$3;
.super Landroid/database/ContentObserver;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v2, -0x2

    invoke-static {v0, v2}, Landroid/app/MiuiStatusBarManager;->isShowFlowInfoForUser(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSFragment;->-set0(Lcom/android/systemui/qs/QSFragment;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->-get4(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSFragment$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$3$1;-><init>(Lcom/android/systemui/qs/QSFragment$3;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSContainerImpl;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
