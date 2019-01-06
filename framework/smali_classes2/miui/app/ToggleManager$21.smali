.class Lmiui/app/ToggleManager$21;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager;->updateDataToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get5(Lmiui/app/ToggleManager;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get7(Lmiui/app/ToggleManager;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get4(Lmiui/app/ToggleManager;)Z

    move-result v1

    :goto_1f
    xor-int/lit8 v0, v1, 0x1

    :goto_21
    const-string/jumbo v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMobileDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-get5(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";mMobilePolicyEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-get7(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";mFlightMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";mIsSimMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-get4(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get4(Lmiui/app/ToggleManager;)Z

    move-result v1

    :goto_89
    invoke-virtual {v3, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_9d

    const v1, 0x110200a6

    :goto_93
    invoke-virtual {v3, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_97
    move v1, v2

    goto :goto_1f

    :cond_99
    const/4 v0, 0x0

    goto :goto_21

    :cond_9b
    move v1, v2

    goto :goto_89

    :cond_9d
    const v1, 0x110200a5

    goto :goto_93
.end method
