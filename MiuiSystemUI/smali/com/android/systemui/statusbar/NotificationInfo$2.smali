.class Lcom/android/systemui/statusbar/NotificationInfo$2;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/app/INotificationManager;Ljava/util/List;ILcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationInfo;

.field final synthetic val$listener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo$2;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationInfo$2;->val$listener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$2;->val$listener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;->onClickDone(Landroid/view/View;)V

    return-void
.end method
