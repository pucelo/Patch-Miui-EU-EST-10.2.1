.class public Lmiui/app/RemoveDuplicateContacts$RawContactData;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactData"
.end annotation


# static fields
.field public static final HAS_DISPLAY_PHOTO:I = 0x64

.field public static final HAS_PHOTO:I = 0xa


# instance fields
.field private mDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeleted:Z

.field public mN:I

.field public mName:Ljava/lang/String;

.field public mPhotoId:J

.field public mRawContactId:J

.field public mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z
    .registers 14

    const/4 v11, 0x0

    if-nez p1, :cond_4

    return v11

    :cond_4
    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    iget-object v10, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-eq v9, v10, :cond_13

    return v11

    :cond_13
    iget-object v9, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    return v11

    :cond_32
    iget-object v9, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_55

    return v11

    :cond_55
    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    move-object v4, v7

    :cond_86
    :goto_86
    if-nez v4, :cond_91

    return v11

    :cond_89
    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    move-object v4, v7

    goto :goto_86

    :cond_91
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_95
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    return v11

    :cond_9c
    const/4 v9, 0x1

    return v9
.end method

.method public getDatas()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRawContactId()J
    .registers 3

    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    return-wide v0
.end method

.method public isDeleted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDeleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDeleted:Z

    return-void
.end method

.method public setRawContactId(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    return-void
.end method
