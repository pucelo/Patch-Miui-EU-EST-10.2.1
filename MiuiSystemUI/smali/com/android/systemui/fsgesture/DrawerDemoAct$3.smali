.class Lcom/android/systemui/fsgesture/DrawerDemoAct$3;
.super Ljava/lang/Object;
.source "DrawerDemoAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->finish()V

    return-void
.end method
