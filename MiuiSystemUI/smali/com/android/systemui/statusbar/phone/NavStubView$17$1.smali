.class Lcom/android/systemui/statusbar/phone/NavStubView$17$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView$17;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavStubView$17;

.field final synthetic val$finalIsRecoveryHomeIcon:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView$17;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$17;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->val$finalIsRecoveryHomeIcon:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$17;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->val$finalIsRecoveryHomeIcon:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAppAnimation-3-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap2(Lcom/android/systemui/statusbar/phone/NavStubView;ZZZLjava/lang/String;)V

    return-void
.end method
