.class Lcom/android/systemui/statusbar/NotificationInfo$3;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationInfo;->initSlidingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo$3;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$3;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationInfo;->-get0(Lcom/android/systemui/statusbar/NotificationInfo;)Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$3;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationInfo;->-get0(Lcom/android/systemui/statusbar/NotificationInfo;)Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$3;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationInfo;->-wrap1(Lcom/android/systemui/statusbar/NotificationInfo;)V

    return-void
.end method
