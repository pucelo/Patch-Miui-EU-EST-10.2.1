.class Lmiui/maml/MamlConfigSettings$NumberInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberInputItem;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_b

    move-result-wide v0

    :goto_6
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_b
    move-exception v2

    goto :goto_6
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .registers 8

    const-wide/16 v0, 0x0

    :try_start_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_7} :catch_20

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v4}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :catch_20
    move-exception v2

    const/4 v4, 0x0

    return v4
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .registers 3

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    return-void
.end method
