.class public Lmiui/contentcatcher/sdk/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/Content$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCatchType:I

.field public mCatcherToken:Ljava/lang/String;

.field public mFavIntent:Landroid/content/Intent;

.field public mInjectorToken:Lmiui/contentcatcher/sdk/Token;

.field public mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/contentcatcher/sdk/Content$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Content$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    iput p1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    iput-object p2, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object p3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object p4, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    iput-object p1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/Token;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/Content;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/Content;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getInjectorToken()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    return-object v0
.end method

.method public getTargetTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Content{ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    if-eqz v6, :cond_3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFavIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    :goto_2f
    const-string/jumbo v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCatchType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCatcherToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    if-eqz v6, :cond_bd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mInjectorToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_bd
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    if-eqz v6, :cond_2f

    const-string/jumbo v6, "mResultMap[ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_115

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_e6
    instance-of v6, v4, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_110

    const-string/jumbo v5, "bitmap"
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ed} :catch_11d

    :goto_ed
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d1

    :cond_110
    :try_start_110
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_11d

    move-result-object v5

    goto :goto_ed

    :cond_115
    const-string/jumbo v6, " ]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2f

    :catch_11d
    move-exception v1

    goto :goto_ed
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
