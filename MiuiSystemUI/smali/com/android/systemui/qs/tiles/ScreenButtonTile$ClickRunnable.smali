.class public Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;
.super Ljava/lang/Object;
.source "ScreenButtonTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenButtonTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickRunnable"
.end annotation


# instance fields
.field private disabled:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

.field private value:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenButtonTile;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->value:I

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->disabled:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->value:I

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x110900bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->disabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f11012e

    :goto_1
    invoke-static {v2, v1, v3}, Lcom/android/systemui/Util;->showSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const v1, 0x7f11012f

    goto :goto_1
.end method
