.class Lmiui/maml/data/WebServiceBinder$List;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I


# instance fields
.field public mDataPath:Ljava/lang/String;

.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->values()[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    return-object v0

    :catch_47
    move-exception v1

    goto :goto_44

    :catch_49
    move-exception v1

    goto :goto_3b

    :catch_4b
    move-exception v1

    goto :goto_32

    :catch_4d
    move-exception v1

    goto :goto_29

    :catch_4f
    move-exception v1

    goto :goto_20

    :catch_51
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    :cond_1d
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public fill(Lorg/json/JSONArray;)V
    .registers 16

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_31

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement;

    iput-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_31

    const-string/jumbo v11, "WebServiceBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to find list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_3d

    return-void

    :cond_3d
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v10, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_4a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_d2

    :try_start_50
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v11, v9, Lorg/json/JSONObject;

    if-nez v11, :cond_5b

    :goto_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_5b
    move-object v0, v9

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    const/4 v8, 0x0

    :goto_60
    if-ge v8, v3, :cond_a5

    const/4 v11, 0x0

    aput-object v11, v10, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    invoke-static {}, Lmiui/maml/data/WebServiceBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v11

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_d4

    :goto_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    :pswitch_7d
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_85} :catch_86

    goto :goto_7a

    :catch_86
    move-exception v5

    const-string/jumbo v11, "WebServiceBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "JSON error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11, v10}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    goto :goto_58

    :pswitch_ab
    :try_start_ab
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    goto :goto_7a

    :pswitch_b8
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    goto :goto_7a

    :pswitch_c5
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_d1} :catch_86

    goto :goto_7a

    :cond_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_ab
        :pswitch_b8
        :pswitch_c5
        :pswitch_7d
    .end packed-switch
.end method

.method public fill(Lorg/w3c/dom/NodeList;)V
    .registers 15

    const/4 v12, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v10, :cond_35

    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v10

    check-cast v10, Lmiui/maml/elements/ListScreenElement;

    iput-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v10, :cond_35

    const-string/jumbo v10, "WebServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fail to find list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_47
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_a7

    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const/4 v6, 0x0

    :goto_54
    if-ge v6, v8, :cond_9f

    aput-object v12, v7, v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v10, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-static {v4, v10}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7b

    :try_start_6c
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v10

    iget-object v11, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_a8

    :cond_7b
    :goto_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :pswitch_7e
    aput-object v9, v7, v6

    goto :goto_7b

    :catch_81
    move-exception v3

    goto :goto_7b

    :pswitch_83
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_7b

    :pswitch_8a
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_7b

    :pswitch_91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_7b

    :pswitch_98
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v6
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_9e} :catch_81

    goto :goto_7b

    :cond_9f
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10, v7}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_83
        :pswitch_8a
        :pswitch_91
        :pswitch_98
        :pswitch_7e
    .end packed-switch
.end method
