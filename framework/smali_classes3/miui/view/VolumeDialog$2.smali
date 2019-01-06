.class Lmiui/view/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-object v1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v1, v1, Lmiui/view/VolumeDialog;->mExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-object v1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-set1(Lmiui/view/VolumeDialog;Z)Z

    :cond_25
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v1

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get9(Lmiui/view/VolumeDialog;)Z

    move-result v0

    :goto_37
    invoke-virtual {v1, v0}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_37
.end method
