.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;
.super Ljava/lang/Object;
.source "StatusBarWindowView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-get1(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
