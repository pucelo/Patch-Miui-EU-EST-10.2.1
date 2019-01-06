.class Lcom/android/systemui/power/PowerUI$4;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-wrap8(Lcom/android/systemui/power/PowerUI;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->setFirstOpenExtremePowerSave(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "5percent_dialog"

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->enableExtremeSaveMode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
