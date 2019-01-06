.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$3;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockVisibleAnimate(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$3;->val$v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
