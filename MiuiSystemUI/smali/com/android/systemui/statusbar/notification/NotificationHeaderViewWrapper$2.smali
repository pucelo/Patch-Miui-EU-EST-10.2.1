.class Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;
.super Ljava/lang/Object;
.source "NotificationHeaderViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->-get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Landroid/widget/DateTimeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/DateTimeViewCompat;->setShowRelativeTime(Landroid/widget/DateTimeView;Z)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
