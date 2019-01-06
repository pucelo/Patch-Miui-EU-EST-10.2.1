.class Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;
.super Ljava/lang/Object;
.source "NotificationPeekingIconAreaController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->onIconsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->-get0(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->-wrap1(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V

    return-void
.end method
