.class Lcom/android/systemui/qs/QSFooter$5;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooter;->updateEverything()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$5;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$5;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-wrap1(Lcom/android/systemui/qs/QSFooter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$5;->this$0:Lcom/android/systemui/qs/QSFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setClickable(Z)V

    return-void
.end method
