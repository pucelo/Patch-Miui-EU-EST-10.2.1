.class Lcom/android/systemui/miui/ToastOverlayManager$3;
.super Ljava/lang/Object;
.source "ToastOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/ToastOverlayManager;->dispatchShowToast(Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/ToastOverlayManager;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/ToastOverlayManager;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/ToastOverlayManager$3;->this$0:Lcom/android/systemui/miui/ToastOverlayManager;

    iput-object p2, p0, Lcom/android/systemui/miui/ToastOverlayManager$3;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager$3;->this$0:Lcom/android/systemui/miui/ToastOverlayManager;

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager$3;->val$toast:Landroid/widget/Toast;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/ToastOverlayManager;->-wrap1(Lcom/android/systemui/miui/ToastOverlayManager;Landroid/widget/Toast;)V

    return-void
.end method
