.class Lcom/android/systemui/statusbar/phone/StatusBar$29;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    sget-boolean v2, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_notification_style"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isNotificationStyleChanged(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
