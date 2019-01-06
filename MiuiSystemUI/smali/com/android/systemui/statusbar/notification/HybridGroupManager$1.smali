.class Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->-set0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->val$view:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->-wrap0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;->accept(Ljava/lang/Float;)V

    return-void
.end method
