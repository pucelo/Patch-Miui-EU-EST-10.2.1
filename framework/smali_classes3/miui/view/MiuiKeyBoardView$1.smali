.class Lmiui/view/MiuiKeyBoardView$1;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-static {v0}, Lmiui/view/MiuiKeyBoardView;->-wrap0(Lmiui/view/MiuiKeyBoardView;)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
