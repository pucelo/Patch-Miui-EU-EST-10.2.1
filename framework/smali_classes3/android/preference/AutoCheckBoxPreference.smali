.class public Landroid/preference/AutoCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AutoCheckBoxPreference.java"


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mMaxLines:I

.field private mTypeSet:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/preference/AutoCheckBoxPreference;->mTypeSet:I

    sparse-switch v0, :sswitch_data_16

    :goto_6
    return v1

    :sswitch_7
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :sswitch_c
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :sswitch_11
    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_c
        0x2 -> :sswitch_11
    .end sparse-switch
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    if-eqz p2, :cond_20

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setBroadcast(Ljava/lang/String;)V

    const-string/jumbo v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setMaxLines(I)V

    const-string/jumbo v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setTypeSet(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/preference/AutoCheckBoxPreference;->mTypeSet:I

    sparse-switch v0, :sswitch_data_16

    :goto_6
    return v1

    :sswitch_7
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_6

    :sswitch_c
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_6

    :sswitch_11
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_6

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_c
        0x2 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public getASet()V
    .registers 3

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_e
    invoke-direct {p0, v0, v1}, Landroid/preference/AutoCheckBoxPreference;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_12} :catch_1a

    const/4 v0, 0x0

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setChecked(Z)V

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public getBroadcast()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v2, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2a
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/CheckBoxPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getASet()V

    :cond_8
    return-void
.end method

.method public setASet(Z)V
    .registers 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_12
    invoke-direct {p0, v0, v1}, Landroid/preference/AutoCheckBoxPreference;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_16
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_12 .. :try_end_16} :catch_2e

    if-eq v2, v3, :cond_2d

    :goto_18
    invoke-direct {p0, v0, v1, v2}, Landroid/preference/AutoCheckBoxPreference;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getBroadcast()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    return-void

    :catch_2e
    move-exception v3

    goto :goto_18
.end method

.method setBroadcast(Ljava/lang/String;)V
    .registers 2
    .param p1, "broadcast"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_4

    iput-object p1, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, p1}, Landroid/preference/AutoCheckBoxPreference;->setASet(Z)V

    return-void
.end method

.method setMaxLines(I)V
    .registers 2
    .param p1, "maxlines"    # I

    .prologue
    if-eqz p1, :cond_4

    iput p1, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    :cond_4
    return-void
.end method

.method setTypeSet(Ljava/lang/String;)V
    .registers 4
    .param p1, "typeset"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const-string/jumbo v1, "global"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "secure"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_15
    :goto_15
    iput v0, p0, Landroid/preference/AutoCheckBoxPreference;->mTypeSet:I

    return-void

    :cond_18
    const/4 v0, 0x1

    goto :goto_15

    :cond_1a
    const/4 v0, 0x2

    goto :goto_15
.end method
