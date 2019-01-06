.class Lcom/android/systemui/power/PowerUI$2$1;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/power/PowerUI$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$2$1;->this$1:Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2$1;->this$1:Lcom/android/systemui/power/PowerUI$2;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "extreme_dialog"

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->enableExtremeSaveMode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
