.class Lcom/android/systemui/fsgesture/DrawerDemoAct$2;
.super Ljava/lang/Object;
.source "DrawerDemoAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DrawerDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "====>>>> width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    neg-int v2, v0

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-set0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I

    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-set1(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I

    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get4(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method
