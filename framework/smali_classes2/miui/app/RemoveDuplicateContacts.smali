.class public Lmiui/app/RemoveDuplicateContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/RemoveDuplicateContacts$ContactsInfo;,
        Lmiui/app/RemoveDuplicateContacts$GroupsData;,
        Lmiui/app/RemoveDuplicateContacts$MergeContacts;,
        Lmiui/app/RemoveDuplicateContacts$RawContactData;,
        Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;
    }
.end annotation


# static fields
.field public static final CALLER_IS_REMOVE_DUPLICATE:Ljava/lang/String; = "caller_is_remove_duplicate"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = false

.field private static final NAME_SELECTION:Ljava/lang/String; = "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

.field public static final TAG:Ljava/lang/String; = "RemoveDuplicateContacts"

.field private static final sGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOtherMimeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/gender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/bloodType"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/constellation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/animalSign"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/emotionStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/interest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/hobby"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/degree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/schools"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/characteristic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/xiaomiId"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/lunarBirthday"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x0

    new-array v7, v10, [Ljava/lang/String;

    iget-object v8, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v7}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_46

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v10, :cond_24

    invoke-static {p1, v4, v1}, Lmiui/app/RemoveDuplicateContacts;->getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    :cond_46
    return-object v6
.end method

.method private static getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/EntityIterator;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2f

    return-object v2

    :cond_2f
    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method private static getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$GroupsData;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    const-string/jumbo v0, "title"

    aput-object v0, v2, v3

    const-string/jumbo v0, "sourceid"

    aput-object v0, v2, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x2

    const-string/jumbo v13, "account_name = ? AND account_type = ? "

    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v3

    const-string/jumbo v9, "title,sourceid DESC"

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "account_name = ? AND account_type = ? "

    const-string/jumbo v5, "title,sourceid DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_68

    :goto_3c
    :try_start_3c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-direct {v11}, Lmiui/app/RemoveDuplicateContacts$GroupsData;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_3c .. :try_end_5f} :catchall_60

    goto :goto_3c

    :catchall_60
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_65
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_68
    return-object v12
.end method

.method public static getMergeRawContacts([Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$MergeContacts;",
            ">;"
        }
    .end annotation

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v26, v3

    :goto_d
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_143

    aget-object v11, p0, v26

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v3, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v3, v25, v28

    iget-object v3, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v28, 0x1

    aput-object v3, v25, v28

    const-string/jumbo v3, "RemoveDuplicateContacts"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "start scan raw_contact of account "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v12

    if-nez v12, :cond_59

    :cond_54
    add-int/lit8 v3, v26, 0x1

    move/from16 v26, v3

    goto :goto_d

    :cond_59
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_61
    :goto_61
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/16 v28, 0x2

    move/from16 v0, v28

    if-lt v3, v0, :cond_61

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v14

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :goto_8c
    :try_start_8c
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_128

    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    invoke-virtual {v15}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    const-string/jumbo v3, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_bd
    :goto_bd
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v3, "mimetype"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    const-string/jumbo v3, "_id"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_bd

    :cond_eb
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    const-string/jumbo v3, "data1"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catchall {:try_start_8c .. :try_end_100} :catchall_101

    goto :goto_bd

    :catchall_101
    move-exception v3

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    throw v3

    :cond_106
    :try_start_106
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    const-string/jumbo v3, "data1"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_11c
    new-instance v3, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;

    invoke-direct/range {v3 .. v10}, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_126
    .catchall {:try_start_106 .. :try_end_126} :catchall_101

    goto/16 :goto_8c

    :cond_128
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v3, v0, :cond_61

    new-instance v3, Lmiui/app/RemoveDuplicateContacts$MergeContacts;

    move-object/from16 v0, v23

    invoke-direct {v3, v0, v6}, Lmiui/app/RemoveDuplicateContacts$MergeContacts;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    :cond_143
    return-object v24
.end method

.method private static getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v3

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v4

    const-string/jumbo v3, "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_23

    return-object v5

    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_50

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_4b

    goto :goto_23

    :catchall_4b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_50
    :try_start_50
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4b

    goto :goto_23

    :cond_58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8
.end method

.method private static getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v30

    if-nez v30, :cond_b

    :cond_8
    const/16 v30, 0x0

    return-object v30

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v7

    if-nez v7, :cond_18

    const/16 v30, 0x0

    return-object v30

    :cond_18
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    :try_start_1d
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_19f

    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    new-instance v22, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-direct/range {v22 .. v22}, Lmiui/app/RemoveDuplicateContacts$RawContactData;-><init>()V

    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    const-string/jumbo v30, "_id"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, v22

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setRawContactId(J)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    const-string/jumbo v30, "sourceid"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_63
    :goto_63
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_196

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v30, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v30, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_eb

    const-string/jumbo v30, "_id"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v22

    iput-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    const-string/jumbo v30, "data14"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e8

    const/16 v30, 0x64

    :goto_a9
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_af} :catch_b0
    .catchall {:try_start_1d .. :try_end_af} :catchall_121

    goto :goto_63

    :catch_b0
    move-exception v6

    :try_start_b1
    const-string/jumbo v30, "RemoveDuplicateContacts"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "getNeedDeletedRawContacts(): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_b1 .. :try_end_d2} :catchall_121

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    :goto_d5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v30, 0x2

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a4

    const/16 v30, 0x0

    return-object v30

    :cond_e8
    const/16 v30, 0xa

    goto :goto_a9

    :cond_eb
    :try_start_eb
    const-string/jumbo v30, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_126

    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v30, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    if-nez v27, :cond_116

    const-string/jumbo v27, ""

    :cond_116
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_11f} :catch_b0
    .catchall {:try_start_eb .. :try_end_11f} :catchall_121

    goto/16 :goto_63

    :catchall_121
    move-exception v30

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v30

    :cond_126
    :try_start_126
    const-string/jumbo v30, "vnd.android.cursor.item/im"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_145

    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_145
    const-string/jumbo v30, "vnd.android.cursor.item/name"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_63

    sget-object v30, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_176

    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_63

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_176
    const-string/jumbo v30, "RemoveDuplicateContacts"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ignore unknown mimetype "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    :cond_196
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_19d} :catch_b0
    .catchall {:try_start_126 .. :try_end_19d} :catchall_121

    goto/16 :goto_1d

    :cond_19f
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_d5

    :cond_1a4
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_1ab
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_259

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-virtual/range {v23 .. v23}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v30

    if-eqz v30, :cond_1c6

    :cond_1c3
    :goto_1c3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1ab

    :cond_1c6
    add-int/lit8 v17, v16, 0x1

    :goto_1c8
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c3

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-virtual/range {v24 .. v24}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v30

    if-eqz v30, :cond_1e1

    :cond_1de
    :goto_1de
    add-int/lit8 v17, v17, 0x1

    goto :goto_1c8

    :cond_1e1
    invoke-virtual/range {v23 .. v24}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z

    move-result v30

    if-eqz v30, :cond_1de

    move-object/from16 v0, v24

    iget-object v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_200

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1de

    :cond_200
    move-object/from16 v0, v23

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_223

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1de

    :cond_223
    move-object/from16 v0, v23

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_247

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c3

    :cond_247
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c3

    :cond_259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    return-object v26
.end method

.method public static declared-synchronized remove([Landroid/accounts/Account;Landroid/content/ContentResolver;Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;Z)I
    .registers 30

    const-class v20, Lmiui/app/RemoveDuplicateContacts;

    monitor-enter v20

    if-eqz p0, :cond_7

    if-nez p1, :cond_b

    :cond_7
    const/16 v19, 0x0

    monitor-exit v20

    return v19

    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v15, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_20

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    :cond_20
    const/16 v19, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    :goto_27
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_6d

    aget-object v4, p0, v19

    sget-object v22, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    sget-object v22, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    iget-wide v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    iget-object v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_5c

    goto :goto_3e

    :catchall_5c
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_5f
    :try_start_5f
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lmiui/app/RemoveDuplicateContacts;->getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_27

    :cond_6d
    if-eqz v11, :cond_11d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_11d

    new-instance v5, Lmiui/provider/BatchOperation;

    const-string/jumbo v19, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    if-eqz p2, :cond_8e

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    :cond_8e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_92
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_114

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    sget-object v19, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    const-string/jumbo v21, "caller_is_remove_duplicate"

    const-string/jumbo v22, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    const/4 v12, 0x0

    iget-object v0, v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_109

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    const-string/jumbo v21, "caller_is_syncadapter"

    const-string/jumbo v22, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    :cond_eb
    :goto_eb
    if-eqz v12, :cond_f0

    invoke-virtual {v5, v12}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    :cond_f0
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v19

    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_ff

    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_ff
    if-eqz p2, :cond_106

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onProgress(I)V

    :cond_106
    add-int/lit8 v15, v15, 0x1

    goto :goto_92

    :cond_109
    if-nez p3, :cond_eb

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    goto :goto_eb

    :cond_114
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v19

    if-lez v19, :cond_11d

    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_11d
    if-eqz p2, :cond_128

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onEnd(Z)V

    :cond_128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_12b
    .catchall {:try_start_5f .. :try_end_12b} :catchall_5c

    move-result-wide v6

    monitor-exit v20

    return v15
.end method

.method public static removeGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)V
    .registers 40

    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_c

    return-void

    :cond_c
    const-string/jumbo v34, "mimetype=? AND data1=?"

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    :goto_13
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_110

    if-nez v21, :cond_2a

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v18, v0

    :goto_27
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    :cond_2a
    add-int/lit8 v2, v21, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v22, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "data1"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mimetype=? AND data1=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update contacts group from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    if-nez v31, :cond_fb

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    :goto_d4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete group "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_fb
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    goto :goto_d4

    :cond_104
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v18, v0

    goto/16 :goto_27

    :cond_110
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v20

    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "raw_contact_id"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_133
    :goto_133
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_199

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->clear()V

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    iget-wide v2, v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "mimetype=? AND data1=?"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_133

    :goto_162
    :try_start_162
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_195

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_185
    .catchall {:try_start_162 .. :try_end_185} :catchall_186

    goto :goto_162

    :catchall_186
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_18b
    :try_start_18b
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_194
    .catchall {:try_start_18b .. :try_end_194} :catchall_186

    goto :goto_162

    :cond_195
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_133

    :cond_199
    new-instance v26, Lmiui/provider/BatchOperation;

    const-string/jumbo v2, "com.android.contacts"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1a9
    :goto_1a9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1da

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1a9

    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_1a9

    :cond_1da
    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    if-lez v2, :cond_1e3

    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_1e3
    return-void
.end method
