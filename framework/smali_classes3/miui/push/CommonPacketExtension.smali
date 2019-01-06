.class public Lmiui/push/CommonPacketExtension;
.super Ljava/lang/Object;
.source "CommonPacketExtension.java"

# interfaces
.implements Lmiui/push/PacketExtension;


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "attributes"

.field public static final CHILDREN_NAME:Ljava/lang/String; = "children"


# instance fields
.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributeValues:[Ljava/lang/String;

.field private mChildrenEles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionElementName:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    aput-object p4, v0, v1

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-void
.end method

.method public static getArray([Landroid/os/Parcelable;)[Lmiui/push/CommonPacketExtension;
    .registers 4

    if-nez p0, :cond_18

    const/4 v2, 0x0

    :goto_3
    new-array v0, v2, [Lmiui/push/CommonPacketExtension;

    if-eqz p0, :cond_1a

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    array-length v2, p0

    goto :goto_3

    :cond_1a
    return-object v0
.end method

.method public static parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;
    .registers 18

    const-string/jumbo v1, "ext_ele_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "ext_ns"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "ext_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "attributes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v15

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    :cond_51
    const-string/jumbo v1, "children"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string/jumbo v1, "children"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    new-instance v7, Ljava/util/ArrayList;

    array-length v1, v14

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    array-length v0, v14

    move/from16 v16, v0

    :goto_6f
    move/from16 v0, v16

    if-ge v1, v0, :cond_81

    aget-object v12, v14, v1

    check-cast v12, Landroid/os/Bundle;

    invoke-static {v12}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_81
    new-instance v1, Lmiui/push/CommonPacketExtension;

    invoke-direct/range {v1 .. v7}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public static toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)[",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lmiui/push/CommonPacketExtension;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/CommonPacketExtension;

    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    array-length v2, p0

    new-array v1, v2, [Landroid/os/Parcelable;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lmiui/push/CommonPacketExtension;->toParcelable()Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v1
.end method


# virtual methods
.method public appendChild(Lmiui/push/CommonPacketExtension;)V
    .registers 3

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_9
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v1, :cond_25

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    return-object v2
.end method

.method public getChildByName(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v2, :cond_c

    :cond_b
    return-object v3

    :cond_c
    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    iget-object v2, v0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_27
    return-object v3
.end method

.method public getChildrenByName(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v3, :cond_c

    :cond_b
    return-object v4

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    iget-object v3, v1, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    return-object v0
.end method

.method public getChildrenExt()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Lmiui/push/StringUtils;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    goto :goto_c
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "ext_ele_name"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ext_ns"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ext_text"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3f

    const/4 v2, 0x0

    :goto_2c
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3f

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3f
    const-string/jumbo v3, "attributes"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5d

    const-string/jumbo v3, "children"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-static {v4}, Lmiui/push/CommonPacketExtension;->toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_5d
    return-object v1
.end method

.method public toParcelable()Landroid/os/Parcelable;
    .registers 2

    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xmlns="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7e

    const/4 v2, 0x0

    :goto_44
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_7e

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_7e
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_ab
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_eb

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c3

    :cond_d7
    const-string/jumbo v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    :cond_eb
    const-string/jumbo v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6
.end method
