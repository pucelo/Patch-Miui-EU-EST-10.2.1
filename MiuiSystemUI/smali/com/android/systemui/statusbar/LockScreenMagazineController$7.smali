.class Lcom/android/systemui/statusbar/LockScreenMagazineController$7;
.super Ljava/lang/Object;
.source "LockScreenMagazineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get7(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQSFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->reset()V

    goto :goto_0
.end method
