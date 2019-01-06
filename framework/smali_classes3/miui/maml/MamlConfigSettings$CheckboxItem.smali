.class Lmiui/maml/MamlConfigSettings$CheckboxItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$CheckboxItem;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_21

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_b
    :goto_b
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2d

    const-string/jumbo v1, "1"

    :goto_1c
    invoke-virtual {v2, v3, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_21
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_2d
    const-string/jumbo v1, "0"

    goto :goto_1c
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .registers 3

    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$CheckboxItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
