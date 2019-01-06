.class Lcom/android/systemui/qs/QSFooter$1$1;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSFooter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooter$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$1$1;->this$1:Lcom/android/systemui/qs/QSFooter$1;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1$1;->this$1:Lcom/android/systemui/qs/QSFooter$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get2(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method
