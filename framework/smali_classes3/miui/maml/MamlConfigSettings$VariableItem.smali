.class abstract Lmiui/maml/MamlConfigSettings$VariableItem;
.super Lmiui/maml/MamlConfigSettings$Item;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VariableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$Item;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected abstract setValue(Ljava/lang/String;)V
.end method

.method public updateValue()V
    .registers 4

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$VariableItem;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_15
.end method
