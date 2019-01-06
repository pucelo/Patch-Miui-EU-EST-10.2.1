.class Lcom/miui/server/MiuiCompatModePackages$5;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$5;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$5;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/MiuiCompatModePackages;->-set0(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    return-void
.end method
