.class Lcom/android/systemui/fsgesture/HomeDemoAct$2;
.super Ljava/lang/Object;
.source "HomeDemoAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->finish()V

    return-void
.end method
