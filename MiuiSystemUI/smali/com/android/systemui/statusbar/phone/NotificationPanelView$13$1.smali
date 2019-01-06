.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$13$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->stopFaceUnlock()V

    return-void
.end method
