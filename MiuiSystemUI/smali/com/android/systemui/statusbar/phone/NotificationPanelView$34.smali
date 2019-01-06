.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->saveValueToTunerService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$qqs_count:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->val$qqs_count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qqs_count"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->val$qqs_count:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    return-void
.end method
