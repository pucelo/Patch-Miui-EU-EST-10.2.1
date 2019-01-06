.class public Lcom/android/systemui/recents/misc/RecentsProvider;
.super Landroid/content/ContentProvider;
.source "RecentsProvider.java"


# static fields
.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mForceMultiWindowPkgCursor:Landroid/database/MatrixCursor;

.field private mForceNotMultiWindowPkgCursor:Landroid/database/MatrixCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/systemui/recents/misc/RecentsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.systemui.recents"

    const-string/jumbo v2, "MULTI_WINDOW_FORCE_RESIZE_PKGS"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.systemui.recents"

    const-string/jumbo v2, "MULTI_WINDOW_FORCE_NOT_RESIZE_PKGS"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "RecentsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/systemui/recents/misc/RecentsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/RecentsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultiWindowForceResizeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/database/MatrixCursor;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "pkgs"

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    return-object v4

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceNotMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/RecentsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultiWindowForceNotResizeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Landroid/database/MatrixCursor;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "pkgs"

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceNotMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceNotMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RecentsProvider;->mForceNotMultiWindowPkgCursor:Landroid/database/MatrixCursor;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
