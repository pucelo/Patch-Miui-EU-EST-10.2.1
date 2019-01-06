.class public Landroid/telephony/mbms/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# static fields
.field static final MAP_LIMIT:I = 0x3e8


# instance fields
.field private final className:Ljava/lang/String;

.field private final locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceId:Ljava/lang/String;

.field private final sessionEndTime:Ljava/util/Date;

.field private final sessionStartTime:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 12

    const/16 v8, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gt v4, v8, :cond_d

    if-gez v4, :cond_27

    :cond_d
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad map length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_27
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    move v5, v4

    :goto_2f
    add-int/lit8 v4, v5, -0x1

    if-lez v5, :cond_44

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    goto :goto_2f

    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gt v2, v8, :cond_52

    if-gez v2, :cond_6c

    :cond_52
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad locale length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    move v3, v2

    :goto_74
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_85

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iget-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_74

    :cond_85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    iput-object v7, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    const/16 v1, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p3, :cond_1e

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad ServiceInfo construction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p5, :cond_15

    if-eqz p6, :cond_15

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_52

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_76

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad locales length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iput-object p4, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p6}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/telephony/mbms/ServiceInfo;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/telephony/mbms/ServiceInfo;

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v3, v0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v3, v0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    iget-object v2, v0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_4a
    return v1
.end method

.method public getLocales()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    return-object v0
.end method

.method public getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Locale not supported"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNamedContentLocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionEndTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSessionStartTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_11

    :cond_2c
    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_40

    :cond_50
    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
