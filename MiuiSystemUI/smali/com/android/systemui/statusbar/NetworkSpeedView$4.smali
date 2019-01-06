.class Lcom/android/systemui/statusbar/NetworkSpeedView$4;
.super Ljava/lang/Object;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;


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
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$4;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDemoModeChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$4;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
