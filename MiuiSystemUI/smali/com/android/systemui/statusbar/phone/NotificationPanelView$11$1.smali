.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$11$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    sub-int v0, p5, p3

    sub-int v1, p9, p7

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    :cond_0
    return-void
.end method
