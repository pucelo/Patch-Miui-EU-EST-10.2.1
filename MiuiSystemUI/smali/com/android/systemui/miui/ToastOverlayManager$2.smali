.class Lcom/android/systemui/miui/ToastOverlayManager$2;
.super Ljava/lang/Object;
.source "ToastOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/ToastOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/ToastOverlayManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/ToastOverlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/ToastOverlayManager$2;->this$0:Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$2;->this$0:Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/miui/ToastOverlayManager;->-get0(Lcom/android/systemui/miui/ToastOverlayManager;)Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->setToast(Landroid/widget/Toast;)V

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$2;->this$0:Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/miui/ToastOverlayManager;->-get0(Lcom/android/systemui/miui/ToastOverlayManager;)Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->invalidate()V

    return-void
.end method
