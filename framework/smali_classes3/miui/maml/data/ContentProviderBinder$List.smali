.class Lmiui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I


# instance fields
.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method private static synthetic -getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/ContentProviderBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/ContentProviderBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Lmiui/maml/data/ContentProviderBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    const-string/jumbo v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .registers 16

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_34

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v12, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement;

    iput-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_34

    const-string/jumbo v11, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to find list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [I

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_48
    array-length v11, v1

    if-ge v6, v11, :cond_8f

    :try_start_4b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    aput v11, v1, v6
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_59} :catch_5c

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :catch_5c
    move-exception v5

    const-string/jumbo v12, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "illegal column:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v4, v11, :cond_9c

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    :cond_9c
    const/4 v6, 0x0

    :goto_9d
    if-ge v6, v4, :cond_122

    const/4 v7, 0x0

    :goto_a0
    if-ge v7, v9, :cond_116

    const/4 v11, 0x0

    aput-object v11, v8, v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    aget v0, v1, v7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_d1

    invoke-static {}, Lmiui/maml/data/ContentProviderBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v11

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    sparse-switch v11, :sswitch_data_124

    invoke-static {}, Lmiui/maml/data/ContentProviderBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v11

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_12e

    :cond_d1
    :goto_d1
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    :sswitch_d4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :sswitch_db
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-eqz v10, :cond_d1

    array-length v11, v10

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :pswitch_ea
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :pswitch_f5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :pswitch_100
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :pswitch_10b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_d1

    :cond_116
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11, v8}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9d

    :cond_122
    return-void

    nop

    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_db
        0x6 -> :sswitch_d4
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x2
        :pswitch_ea
        :pswitch_f5
        :pswitch_100
        :pswitch_10b
    .end packed-switch
.end method
