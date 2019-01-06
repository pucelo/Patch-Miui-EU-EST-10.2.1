.class Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;
.super Ljava/lang/Object;
.source "NotificationIconContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->onViewRemoved(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field final synthetic val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method
