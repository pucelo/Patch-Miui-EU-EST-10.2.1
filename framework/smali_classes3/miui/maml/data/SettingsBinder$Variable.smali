.class Lmiui/maml/data/SettingsBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Variable"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-SettingsBinder$CategorySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$data$SettingsBinder$Category:[I

.field public mCategory:Lmiui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/data/SettingsBinder;


# direct methods
.method private static synthetic -getmiui-maml-data-SettingsBinder$CategorySwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/SettingsBinder$Category;->values()[Lmiui/maml/data/SettingsBinder$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Lmiui/maml/data/SettingsBinder$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Lmiui/maml/data/SettingsBinder$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-direct {p0, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    const-string/jumbo v0, "secure"

    const-string/jumbo v1, "category"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    :goto_17
    iput-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    const-string/jumbo v0, "key"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    return-void

    :cond_23
    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    goto :goto_17
.end method


# virtual methods
.method public query()V
    .registers 7

    invoke-static {}, Lmiui/maml/data/SettingsBinder$Variable;->-getmiui-maml-data-SettingsBinder$CategorySwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v2}, Lmiui/maml/data/SettingsBinder$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c0

    :goto_f
    return-void

    :pswitch_10
    iget v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mType:I

    packed-switch v1, :pswitch_data_c8

    goto :goto_f

    :pswitch_16
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_26
    invoke-virtual {p0, v0}, Lmiui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_2a
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_f

    :pswitch_3e
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_f

    :pswitch_52
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_f

    :pswitch_66
    iget v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->mType:I

    packed-switch v1, :pswitch_data_d6

    goto :goto_f

    :pswitch_6c
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_7c
    invoke-virtual {p0, v0}, Lmiui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_80
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_f

    :pswitch_95
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_f

    :pswitch_aa
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_f

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_66
        :pswitch_10
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_16
        :pswitch_3e
        :pswitch_52
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x2
        :pswitch_6c
        :pswitch_95
        :pswitch_aa
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method
