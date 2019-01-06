.class Lcom/android/systemui/statusbar/NetworkSpeedView$1;
.super Landroid/database/ContentObserver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    :cond_0
    return-void
.end method
