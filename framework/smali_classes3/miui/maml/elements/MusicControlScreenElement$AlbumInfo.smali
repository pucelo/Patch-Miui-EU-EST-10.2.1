.class Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumInfo"
.end annotation


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_c
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    :cond_12
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_35

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_2c
    if-eqz v0, :cond_34

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    :cond_34
    return v0

    :cond_35
    const/4 v0, 0x1

    goto :goto_2c
.end method
