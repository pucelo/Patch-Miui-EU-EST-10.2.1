.class Lcom/android/systemui/fsgesture/HomeDemoAct$1;
.super Ljava/lang/Object;
.source "HomeDemoAct.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/HomeDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get2(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get2(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get2(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v3

    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get2(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get1(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get1(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;

    move-result-object v1

    aget v2, v0, v3

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDestPivot(II)V

    :cond_0
    return-void
.end method
