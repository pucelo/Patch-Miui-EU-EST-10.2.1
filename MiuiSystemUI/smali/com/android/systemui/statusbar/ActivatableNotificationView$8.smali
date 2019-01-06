.class Lcom/android/systemui/statusbar/ActivatableNotificationView$8;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapLog(ZFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method
